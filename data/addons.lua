-- Helper function to find recipes by suffix
local function get_recipes_by_suffix(suffix)
    local recipes = {}
    for recipe_name, recipe in pairs(data.raw.recipe) do
        if recipe_name:sub(-#suffix) == suffix then
            table.insert(recipes, recipe_name)
        end
    end
    return recipes
end

-- Group recipes for Ice Cream (suffix: "-icecream")
local ice_cream_recipes = get_recipes_by_suffix("-icecream")

-- Group recipes for Pie (suffix: "-pie")
local pie_recipes = get_recipes_by_suffix("-pie")

-- Set enabled = false for all Ice Cream recipes
for _, recipe_name in pairs(ice_cream_recipes) do
    if data.raw.recipe[recipe_name] then
        data.raw.recipe[recipe_name].enabled = false
    else
        log("Recipe not found for ice cream: " .. recipe_name)
    end
end

-- Set enabled = false for all Pie recipes
for _, recipe_name in pairs(pie_recipes) do
    if data.raw.recipe[recipe_name] then
        data.raw.recipe[recipe_name].enabled = false
    else
        log("Recipe not found for pie: " .. recipe_name)
    end
end

-- Define technology for Ice Cream Processing
data:extend({
    {
        type = "technology",
        name = "ice-cream-processing",
        prerequisites = {"farming-science-pack"},
        icon = "__foodtorio__/graphics/icons/ice-cream-tech.png", -- Adjust icon path as needed
        icon_size = 500,
        effects = {},
        unit = {
            count = 550,
            ingredients = {
                {"automation-science-pack", 1},
                {"farming-science-pack", 1}
            },
            time = 30
        },
        order = "a-b-c"
    }
})

-- Add all Ice Cream recipes to Ice Cream Processing Tech
for _, recipe_name in pairs(ice_cream_recipes) do
    table.insert(data.raw.technology["ice-cream-processing"].effects, {
        type = "unlock-recipe",
        recipe = recipe_name
    })
end

-- Define technology for Pie Processing
data:extend({
    {
        type = "technology",
        name = "pie-processing",
        prerequisites = {"farming-science-pack"},
        icon = "__foodtorio__/graphics/icons/pie-tech.png", -- Adjust icon path as needed
        icon_size = 500,
        effects = {},
        unit = {
            count = 550,
            ingredients = {
                {"automation-science-pack", 1},
                {"farming-science-pack", 1}
            },
            time = 30
        },
        order = "a-b-d"
    }
})

-- Add all Pie recipes to Pie Processing Tech
for _, recipe_name in pairs(pie_recipes) do
    table.insert(data.raw.technology["pie-processing"].effects, {
        type = "unlock-recipe",
        recipe = recipe_name
    })
end






data:extend({
  {
    type = "item-group",
    name = "foodtorio",
    order = "z", -- Controls the order in the crafting menu (z = last)
    icon = "__foodtorio__/graphics/icons/logo.png",
    icon_size = 500, -- Adjust based on your icon size
  },
  {
    type = "item-subgroup",
    name = "food-processing",
    group = "foodtorio", -- Links the subgroup to the main group
    order = "a", -- Controls the order within the tab
  },
})

data:extend({
  {
    type = "item-group",
    name = "foodtorio",
    order = "z", -- Controls the order in the crafting menu (z = last)
    icon = "__foodtorio__/graphics/icons/logo.png",
    icon_size = 500, -- Adjust based on your icon size
  },
  {
    type = "item-subgroup",
    name = "misc-processing",
    group = "foodtorio", -- Links the subgroup to the main group
    order = "b", -- Controls the order within the tab
  },
})
data:extend({
    {
      type = "item-group",
      name = "foodtorio",
      order = "z", -- Controls the order in the crafting menu (z = last)
      icon = "__foodtorio__/graphics/icons/logo.png",
      icon_size = 500, -- Adjust based on your icon size
    },
    {
      type = "item-subgroup",
      name = "raw-meat",
      group = "foodtorio", -- Links the subgroup to the main group
      order = "b", -- Controls the order within the tab
    },
  })

  data:extend({
    {
      type = "item-group",
      name = "foodtorio",
      order = "z", -- Controls the order in the crafting menu (z = last)
      icon = "__foodtorio__/graphics/icons/logo.png",
      icon_size = 500, -- Adjust based on your icon size
    },
    {
      type = "item-subgroup",
      name = "cooked-meat",
      group = "foodtorio", -- Links the subgroup to the main group
      order = "b", -- Controls the order within the tab
    },
  })


  data:extend({
    {
      type = "item-group",
      name = "foodtorio",
      order = "z", -- Controls the order in the crafting menu (z = last)
      icon = "__foodtorio__/graphics/icons/logo.png",
      icon_size = 500, -- Adjust based on your icon size
    },
    {
      type = "item-subgroup",
      name = "garnishes",
      group = "foodtorio", -- Links the subgroup to the main group
      order = "c", -- Controls the order within the tab
    },
  })

  data:extend({
    {
      type = "item-group",
      name = "foodtorio",
      order = "z", -- Controls the order in the crafting menu (z = last)
      icon = "__foodtorio__/graphics/icons/logo.png",
      icon_size = 500, -- Adjust based on your icon size
    },
    {
      type = "item-subgroup",
      name = "wraps",
      group = "foodtorio", -- Links the subgroup to the main group
      order = "c", -- Controls the order within the tab
    },
  })
  

  data:extend({
    {
      type = "item-group",
      name = "foodtorio",
      order = "z", -- Controls the order in the crafting menu (z = last)
      icon = "__foodtorio__/graphics/icons/logo.png",
      icon_size = 500, -- Adjust based on your icon size
    },
    {
      type = "item-subgroup",
      name = "sushi-rolls",
      group = "foodtorio", -- Links the subgroup to the main group
      order = "c", -- Controls the order within the tab
    },
  })
  


data:extend({
  {
    type = "item-group",
    name = "foodtorio",
    order = "z", -- Controls the order in the crafting menu (z = last)
    icon = "__foodtorio__/graphics/icons/logo.png",
    icon_size = 500, -- Adjust based on your icon size
  },
  {
    type = "item-subgroup",
    name = "liquids",
    group = "foodtorio", -- Links the subgroup to the main group
    order = "c", -- Controls the order within the tab
  },
})
-- Helper function to find recipes by suffix
local function get_recipes_by_suffix(suffix)
    local recipes = {}
    for recipe_name, recipe in pairs(data.raw.recipe) do
        if recipe_name:sub(-#suffix) == suffix then
            table.insert(recipes, recipe_name)
        end
    end
    return recipes
end

-- Group recipes for Juices (suffix: "-juice")
local juice_recipes = get_recipes_by_suffix("-juice")

-- Group recipes for Jams (suffix: "-jam")
local jam_recipes = get_recipes_by_suffix("-jam")

-- Set enabled = false for all Juice recipes
for _, recipe_name in pairs(juice_recipes) do
    if data.raw.recipe[recipe_name] then
        data.raw.recipe[recipe_name].enabled = false
    end
end

-- Set enabled = false for all Jam recipes
for _, recipe_name in pairs(jam_recipes) do
    if data.raw.recipe[recipe_name] then
        data.raw.recipe[recipe_name].enabled = false
    end
end

-- Define technology for Juices
data:extend({
    {
        type = "technology",
        name = "juice-processing",
        prerequisites = {"farming-science-pack"},
        icon = "__foodtorio__/graphics/icons/juice-tech.png", -- Adjust icon path as needed
        icon_size = 500,
        effects = {},
        unit = {
            count = 100,
            ingredients = {{"automation-science-pack", 1}},
            ingredients = {{"farming-science-pack", 1}},
            time = 30
        },
        order = "a-b-a"
    }
})

-- Add all Juice recipes to Juice Processing Tech
for _, recipe_name in pairs(juice_recipes) do
    table.insert(data.raw.technology["juice-processing"].effects, {
        type = "unlock-recipe",
        recipe = recipe_name
    })
end

-- Define technology for Jams
data:extend({
    {
        type = "technology",
        name = "jam-processing",
        prerequisites = {"farming-science-pack"},
        icon = "__foodtorio__/graphics/icons/jam-tech.png", -- Adjust icon path as needed
        icon_size = 500,
        effects = {},
        unit = {
            count = 500,
            ingredients = {{"automation-science-pack", 1}},
            ingredients = {{"farming-science-pack", 1}},            
            time = 30
        },
        order = "a-b-b"
    }
})

-- Add all Jam recipes to Jam Processing Tech
for _, recipe_name in pairs(jam_recipes) do
    table.insert(data.raw.technology["jam-processing"].effects, {
        type = "unlock-recipe",
        recipe = recipe_name
    })
end

