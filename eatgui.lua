local eatgui = {}

function eatgui.create_eat_gui(player, item_name)
    -- Remove existing GUI if present
    if player.gui.screen.eat_gui then
        player.gui.screen.eat_gui.destroy()
    end

    -- Create the GUI near the player
    local frame = player.gui.screen.add {
        type = "frame",
        name = "eat_gui",
        caption = "Eat " .. item_name,
        direction = "vertical"
    }

    -- Set the GUI location near the player (example: offset by 300 pixels in both directions)
    frame.location = {x = 300, y = 300}

    -- Add content to the GUI
    frame.add {
        type = "label",
        caption = "How much " .. item_name .. " would you like to eat?"
    }

    frame.add {
        type = "button",
        name = "eat_1_" .. item_name,
        caption = "Eat 1"
    }

    frame.add {
        type = "button",
        name = "eat_10_" .. item_name,
        caption = "Eat 10"
    }

    frame.add {
        type = "button",
        name = "eat_25_" .. item_name,
        caption = "Eat 25"
    }
end

function eatgui.close_eat_gui(player)
    if player.gui.screen.eat_gui then
        player.gui.screen.eat_gui.destroy()
    end
end

return eatgui
