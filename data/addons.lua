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
    name = "liquids",
    group = "foodtorio", -- Links the subgroup to the main group
    order = "c", -- Controls the order within the tab
  },
})
