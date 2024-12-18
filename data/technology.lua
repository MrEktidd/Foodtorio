-- Cutlery Tech
data:extend({
    {
        type = "technology",
        name = "cutlery-tech",
        prerequisites = {"automation-science-pack"}, -- Adjust as needed
        icon = "__foodtorio__/graphics/icons/cutlery.png", -- Replace with appropriate icon path
        icon_size = 500,
        effects = {
            {type = "unlock-recipe", recipe = "fork"},
            {type = "unlock-recipe", recipe = "knife"},
            {type = "unlock-recipe", recipe = "spoon"}
        },
        unit = {
            count = 100, -- Adjust science pack requirements as needed
            ingredients = {
                {"automation-science-pack", 1},
                {"farming-science-pack", 1}
            },
            time = 30
        },
        order = "a-b-a"
    }
})



data:extend({
    {
        type = "technology",
        name = "fruit-tech",
        icon = "__fruit__/graphics/fruit/apple.png", -- Path to the apple icon
        icon_size = 512,
        effects = {}, -- Will be filled dynamically
        prerequisites = {"fruit-machine-tech"}, -- Adjust prerequisites as needed
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 30
        },
        order = "a-b-c"
    }
})

for _, recipe in pairs(data.raw.recipe) do
    if recipe.subgroup == "fruit" then
        table.insert(data.raw.technology["fruit-tech"].effects, {type = "unlock-recipe", recipe = recipe.name})
    end
end



data:extend({
    {
        type = "technology",
        name = "fruit-machine-tech",
        icon = "__fruit__/graphics/entity/advanced-farm.png", -- Path to the icon
        icon_size = 1024,
        effects = {}, -- Will be filled dynamically
        prerequisites = {"automation-science-pack", "electric-mining-drill"}, -- Adjust prerequisites as needed
        unit = {
            count = 200,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"farming-science-pack", 1}
            },
            time = 30
        },
        order = "a-b-d"
    }
})

for _, recipe in pairs(data.raw.recipe) do
    if recipe.subgroup == "fruit_machine" then
        table.insert(data.raw.technology["fruit-machines-tech"].effects, {type = "unlock-recipe", recipe = recipe.name})
    end
end

