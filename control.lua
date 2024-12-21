local extras = require("extras")
local foodcontrol = require("foodcontrol")
local hungerbarsystem = require("hungerbarsystem")
local eatgui = require("eatgui")
local food_data = require("food-data")

-- Function to ensure global tables are initialized
local function ensure_global_tables()
    if not global then global = {} end
    if not global.player_hunger_data then global.player_hunger_data = {} end
    if not global.gui_positions then global.gui_positions = {} end
end

-- Ensure global tables are initialized in on_init
script.on_init(function()
    ensure_global_tables()
end)

-- Initialize player hunger data
local function initialize_player_hunger(player_index)
    global.player_hunger_data[player_index] = {
        overall = 100,
        dairy = 100,
        fruits = 100,
        veggies = 100,
        carbs = 100,
        meat = 100
    }
end

-- Event: Player Created or Joined
script.on_event({defines.events.on_player_created, defines.events.on_player_joined_game}, function(event)
    ensure_global_tables()
    local player = game.players[event.player_index]

    -- Initialize or re-localize player hunger
    if not global.player_hunger_data[player.index] then
        initialize_player_hunger(player.index)
    end

    -- Create the GUI
    hungerbarsystem.create_hunger_gui(player)
end)

-- Event: Player Picked Up or Dropped Food Item
script.on_event(defines.events.on_player_cursor_stack_changed, function(event)
    ensure_global_tables()
    local player = game.players[event.player_index]
    local cursor_stack = player.cursor_stack

    if cursor_stack and cursor_stack.valid_for_read then
        local item_name = cursor_stack.name

        -- Check if the item is a food item
        if food_data[item_name] then
            eatgui.create_eat_gui(player, item_name)
        else
            eatgui.close_eat_gui(player)
        end
    else
        eatgui.close_eat_gui(player)
    end
end)

-- Event: Eat Food
script.on_event(defines.events.on_gui_click, function(event)
    local element = event.element
    local player = game.players[event.player_index]

    if element.name:find("^eat_") then
        local _, amount, item_name = element.name:match("^(eat)_(%d*)_(.+)$")

        if amount and item_name then
            amount = tonumber(amount) or 0
            local stack_size = player.get_item_count(item_name)

            if amount == 0 or amount > stack_size then
                amount = stack_size
            end

            if amount > 0 then
                -- Handle food consumption
                for _ = 1, amount do
                    foodcontrol.consume_food(player.index, item_name)
                end

                -- Remove items from player's inventory
                player.remove_item({name = item_name, count = amount})

                -- Update the GUI
                hungerbarsystem.create_hunger_gui(player)
            else
                game.print("Not enough " .. item_name .. " to consume.")
            end
        end
    end
end)

-- Event: Update Hunger Bars Periodically
script.on_nth_tick(3600, function()
    ensure_global_tables()
    for _, player in pairs(game.connected_players) do
        local hunger = global.player_hunger_data[player.index]
        
        if hunger then
            -- Decrease overall hunger
            hunger.overall = math.max(0, hunger.overall - 1)

            -- Decrease individual food groups
            hunger.dairy = math.max(0, hunger.dairy - 0.3)
            hunger.fruits = math.max(0, hunger.fruits - 0.4)
            hunger.veggies = math.max(0, hunger.veggies - 0.6)
            hunger.carbs = math.max(0, hunger.carbs - 0.7)
            hunger.meat = math.max(0, hunger.meat - 0.8)

            -- Update GUI for the player
            hungerbarsystem.create_hunger_gui(player)
        end
    end
end)

-- Apply stat bonuses periodically
script.on_event(defines.events.on_tick, function(event)
    ensure_global_tables()
    for _, player in pairs(game.connected_players) do
        local hunger = global.player_hunger_data[player.index]
        if hunger and player.character then
            extras.apply_stat_bonuses(player, hunger)
        end
    end
end)

-- Event: Save GUI position before closing the game
script.on_event(defines.events.on_gui_closed, function(event)
    ensure_global_tables()
    local player = game.players[event.player_index]
    hungerbarsystem.save_gui_position(player)
end)
