local effect_duration = 60 * 5 -- 5 minutes duration in ticks
local item_name = "sliced-brown-mushroom"
local base_bonus = 0.2 -- Base bonus per item (+20%)
local diminishing_penalty = 0.1 -- Reduces bonus by 10% each time eaten in succession
local function get_item_count(player)
    local inventory_count = player.get_main_inventory().get_item_count(item_name)
    local cursor_count = 0
    if player.cursor_stack and player.cursor_stack.valid_for_read and player.cursor_stack.name == item_name then
        cursor_count = player.cursor_stack.count
    end
    return inventory_count + cursor_count
end
local function remove_items(player, count)
    -- Remove from cursor stack first
    if player.cursor_stack and player.cursor_stack.valid_for_read and player.cursor_stack.name == item_name then
        local cursor_amount = math.min(player.cursor_stack.count, count)
        player.cursor_stack.count = player.cursor_stack.count - cursor_amount
        count = count - cursor_amount
    end

    -- Remove the rest from the inventory
    if count > 0 then
        player.get_main_inventory().remove({name = item_name, count = count})
    end
end

-- Table to track active buffs and diminishing returns per player
local active_buffs = {}

-- Function to calculate the actual boost with diminishing returns
local function calculate_actual_boost(player, count)
    local current_penalty = active_buffs[player.index] and active_buffs[player.index].penalty or 0
    local actual_bonus = base_bonus * count * (1 - current_penalty)
    return math.max(actual_bonus, 0) -- Prevent negative boosts
end

-- Function to apply the effect
local function apply_science_boost(player, count)
    local force = player.force
    active_buffs[player.index] = active_buffs[player.index] or {penalty = 0}

    -- Calculate the actual bonus with diminishing returns
    local actual_bonus = calculate_actual_boost(player, count)

    -- Apply the buff
    force.laboratory_speed_modifier = (force.laboratory_speed_modifier or 0) + actual_bonus

    -- Set the expiration tick and increase diminishing return penalty
    active_buffs[player.index] = {
        expiration = game.tick + effect_duration,
        penalty = math.min(active_buffs[player.index].penalty + diminishing_penalty, 0.9), -- Cap penalty at 90%
        count = count,
        bonus = actual_bonus
    }

    -- Notify the player
    player.print({
        "",
        "You feel smarter! Science speed increased by " .. math.floor(actual_bonus * 100) .. "% for 5 minutes."
    })
end

-- Function to remove the buff
local function remove_science_boost(player)
    local buff = active_buffs[player.index]
    if buff then
        local force = player.force

        -- Remove the buff
        force.laboratory_speed_modifier = force.laboratory_speed_modifier - buff.bonus

        player.print("The science boost has worn off.")
        active_buffs[player.index] = nil
    end
end

-- Show the GUI with information
local function show_food_menu(player)
    -- Check if the GUI already exists
    if player.gui.screen.food_menu then player.gui.screen.food_menu.destroy() end

    -- Create the GUI
    local frame = player.gui.screen.add {type = "frame", name = "food_menu", caption = "Eat Sliced Brown Mushroom", direction = "vertical"}
    frame.auto_center = true

    -- Current diminishing return
    local current_penalty = active_buffs[player.index] and active_buffs[player.index].penalty or 0
    local penalty_percent = math.floor(current_penalty * 100)

    -- Display the boost per action
    frame.add {type = "label", caption = "Current diminishing return: " .. penalty_percent .. "%"}

    -- Buttons with information
    local boost_1 = math.floor(calculate_actual_boost(player, 1) * 100)
    frame.add {type = "button", name = "eat_1", caption = "Eat 1 (+" .. boost_1 .. "% boost)"}

    local boost_10 = math.floor(calculate_actual_boost(player, 10) * 100)
    frame.add {type = "button", name = "eat_10", caption = "Eat 10 (+" .. boost_10 .. "% boost)"}

    local total_items = player.get_main_inventory().get_item_count(item_name)
    local boost_all = math.floor(calculate_actual_boost(player, total_items) * 100)
    frame.add {type = "button", name = "eat_all", caption = "Eat All (+" .. boost_all .. "% boost)"}

    frame.add {type = "button", name = "close_menu", caption = "Close"}
end

-- Detect when the player right-clicks the item
script.on_event(defines.events.on_player_cursor_stack_changed, function(event)
    local player = game.get_player(event.player_index)
    if not player or not player.valid then return end

    -- Check if the player has picked up the item
    if player.cursor_stack and player.cursor_stack.valid_for_read and player.cursor_stack.name == item_name then
        show_food_menu(player)
    end
end)

-- Handle GUI button clicks
script.on_event(defines.events.on_gui_click, function(event)
    local player = game.get_player(event.player_index)
    if not player then return end

    local element = event.element
    if not element or not element.valid then return end

    -- Handle the button clicks
    if element.name == "eat_1" then
        player.get_main_inventory().remove({name = item_name, count = 1})
        apply_science_boost(player, 1)
    elseif element.name == "eat_10" then
        player.get_main_inventory().remove({name = item_name, count = 10})
        apply_science_boost(player, 10)
    elseif element.name == "eat_all" then
        local count = player.get_main_inventory().get_item_count(item_name)
        player.get_main_inventory().remove({name = item_name, count = count})
        apply_science_boost(player, count)
    elseif element.name == "close_menu" then
        player.gui.screen.food_menu.destroy()
    end
end)

-- Remove buffs on timer expiration
script.on_event(defines.events.on_tick, function(event)
    for player_index, buff in pairs(active_buffs) do
        if game.tick >= buff.expiration then
            local player = game.get_player(player_index)
            if player then remove_science_boost(player) end
        end
    end
end)
