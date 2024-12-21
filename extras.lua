local extras = {}

function extras.get_bonus(name, value)
    -- Example function to calculate a bonus based on hunger value
    local bonus
    if name == "dairy" then
        bonus = value * 0.5
    elseif name == "fruits" then
        bonus = value * 0.5
    elseif name == "veggies" then
        bonus = value * 0.5
    elseif name == "carbs" then
        bonus = value * 0.5
    elseif name == "meat" then
        bonus = value * 0.5
    else
        bonus = 0
    end
    return math.floor(bonus * 10) / 10 -- Round to one decimal place
end

function extras.get_stat_name(name)
    -- Example function to get the stat name for a food group
    if name == "dairy" then
        return "Health Bonus"
    elseif name == "fruits" then
        return "Energy Boost"
    elseif name == "veggies" then
        return "Immunity Boost"
    elseif name == "carbs" then
        return "Speed Boost"
    elseif name == "meat" then
        return "Strength Boost"
    else
        return "Unknown"
    end
end

function extras.apply_stat_bonuses(player, hunger)
    if not hunger then
        hunger = global.player_hunger_data[player.index]
    end

    if not hunger then
        return -- Exit if hunger data is not available
    end

    -- Ensure player character exists
    if not player.character then
        return -- Exit if player character is not available
    end

    -- Apply bonuses based on hunger levels
    player.character_running_speed_modifier = (hunger.carbs / 100) - 1
    player.character_health_bonus = hunger.overall
end

return extras
