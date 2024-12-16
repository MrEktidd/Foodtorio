-- Cutlery Tech
data:extend({
    {
        type = "technology",
        name = "cutlery-tech",
        prerequisites = {"automation-science-pack"}, -- Adjust as needed
        icon = "__foodtorio__/graphics/icons/cutlery.png", -- Replace with appropriate icon path
        icon_size = 128,
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
-- Rusty Plates Tech
data:extend({
    {
        type = "technology",
        name = "rusty-plates-tech",
        prerequisites = {"automation-science-pack"}, -- Adjust as needed
        icon = "__foodtorio__/graphics/icons/rusty-plate.png", -- Replace with appropriate icon path
        icon_size = 128,
        effects = {
            {type = "unlock-recipe", recipe = "rusty-plate"}
        },
        unit = {
            count = 100, -- Adjust science pack requirements as needed
            ingredients = {
                {"automation-science-pack", 1},
                {"farming-science-pack", 1}
            },
            time = 30
        },
        order = "a-b-b"
    }
})
