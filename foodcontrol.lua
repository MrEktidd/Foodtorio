local food_data = require("food-data")
local hungerbarsystem = require("hungerbarsystem")

local foodcontrol = {}

function foodcontrol.consume_food(player_index, item_name)
    local player_hunger = storage.player_hunger_data[player_index]

    if not player_hunger then
        player_hunger = {
            overall = 100,
            dairy = 100,
            fruits = 100,
            veggies = 100,
            carbs = 100,
            meat = 100
        }
        storage.player_hunger_data[player_index] = player_hunger
    end

    local food = food_data[item_name]

    if food then
        -- Update overall hunger independently
        if food.hunger then
            player_hunger.overall = math.min(100, player_hunger.overall + food.hunger)
        end

        -- Update specific nutrition bars
        for group, gain in pairs(food) do
            if group ~= "hunger" and player_hunger[group] ~= nil and gain > 0 then
                player_hunger[group] = math.min(100, player_hunger[group] + gain)
            end
        end
    else
        game.print("Food item not found: " .. item_name)
    end
end

function foodcontrol.consume_multiple_food(player_index, item_name, amount)
    if item_name and amount > 0 then
        for _ = 1, amount do
            foodcontrol.consume_food(player_index, item_name)
        end

        -- Print final status message after consuming multiple items
        local player_hunger = storage.player_hunger_data[player_index]
        game.print("Final hunger levels after consuming " .. amount .. " " .. item_name .. "(s):")
        game.print("Overall: " .. player_hunger.overall)
        game.print("Dairy: " .. player_hunger.dairy)
        game.print("Fruits: " .. player_hunger.fruits)
        game.print("Veggies: " .. player_hunger.veggies)
        game.print("Carbs: " .. player_hunger.carbs)
        game.print("Meat: " .. player_hunger.meat)
    else
        game.print("Invalid item or amount for consumption.")
    end
end

return foodcontrol
