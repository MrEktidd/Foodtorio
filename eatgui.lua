local food_data = require("food-data")
local hungerbarsystem = require("hungerbarsystem")
local foodcontrol = require("foodcontrol")

local eatgui = {}

-- Create the GUI for eating food
function eatgui.create_eat_gui(player, item_name)
    if player.gui.screen.eat_gui then
        player.gui.screen.eat_gui.destroy()
    end

    local frame = player.gui.screen.add {
        type = "frame",
        name = "eat_gui",
        caption = "Eat " .. item_name,
        direction = "vertical"
    }

    frame.add {
        type = "label",
        caption = "How many " .. item_name .. "s do you want to eat?",
        style = "caption_label"
    }

    local button_table = frame.add {
        type = "table",
        column_count = 3
    }

    button_table.add {
        type = "button",
        name = "eat_1_" .. item_name,
        caption = "Eat 1"
    }
    button_table.add {
        type = "button",
        name = "eat_10_" .. item_name,
        caption = "Eat 10"
    }
    button_table.add {
        type = "button",
        name = "eat_stack_" .. item_name,
        caption = "Eat Stack"
    }

    local tooltip = frame.add {
        type = "label",
        caption = "Nutrition Information:",
        style = "caption_label"
    }
    
    local food = food_data[item_name]
    if food then
        local info = "This food will improve your bars as follows:\n"
        for group, value in pairs(food) do
            info = info .. group:gsub("^%l", string.upper) .. ": +" .. value .. "%\n"
        end
        tooltip.tooltip = info
    else
        tooltip.tooltip = "Food item not found."
    end

    -- Position the GUI in the center of the screen
    local screen_width = player.display_resolution.width
    local screen_height = player.display_resolution.height
    local gui_width = 300  -- Set a fixed width for the GUI
    local gui_height = 200  -- Set a fixed height for the GUI
    frame.location = {screen_width / 2 - gui_width / 2, screen_height / 2 - gui_height / 2}
end

-- Close the Eat GUI
function eatgui.close_eat_gui(player)
    if player.gui.screen.eat_gui then
        player.gui.screen.eat_gui.destroy()
    end
end

return eatgui
