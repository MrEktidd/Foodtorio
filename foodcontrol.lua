local food_data = require("food-data")
local hungerbarsystem = require("hungerbarsystem")

local foodcontrol = {}

function foodcontrol.consume_food(player_index, item_name)
    local player_hunger = global.player_hunger_data[player_index]

    if not player_hunger then
        player_hunger = {
            overall = 100,
            dairy = 100,
            fruits = 100,
            veggies = 100,
            carbs = 100,
            meat = 100
        }
        global.player_hunger_data[player_index] = player_hunger
    end

    local food = food_data[item_name]

    if food then
        game.print("Consuming food: " .. item_name)
        
        -- Update overall hunger independently
        if food.hunger then
            player_hunger.overall = math.min(100, player_hunger.overall + food.hunger)
            game.print("Overall hunger updated to: " .. player_hunger.overall)
        end

        -- Update specific nutrition bars
        for group, gain in pairs(food) do
            if group ~= "hunger" and player_hunger[group] ~= nil and gain > 0 then
                local old_value = player_hunger[group]
                player_hunger[group] = math.min(100, old_value + gain)
                game.print(group .. " updated from " .. old_value .. " to " .. player_hunger[group])
            end
        end

        -- Debug: Print only updated groups
        for group, gain in pairs(food) do
            if gain > 0 and player_hunger[group] ~= nil then
                game.print(group .. " final value: " .. player_hunger[group])
            end
        end

        -- Update the GUI for the player
        local player = game.players[player_index]
        hungerbarsystem.create_hunger_gui(player)
    else
        game.print("Food item not found: " .. item_name)
    end
end

return foodcontrol
