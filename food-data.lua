-- FRUITS
-- FRUITS
-- FRUITS
local food_data = {
    ["apple"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 5,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["steak"] = {
        hunger = 10,  -- Overall hunger increase
        dairy = 0,
        fruits = 0,
        veggies = 0,
        carbs = 0,
        meat = 50
    },
    ["bread"] = {
        hunger = 5,  -- Overall hunger increase
        dairy = 0,
        fruits = 0,
        veggies = 0,
        carbs = 10,
        meat = 0
    },
    ["apricot"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 5,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["avocado"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["banana"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 3,
        meat = 0
    },
    ["bayberry"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 5,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["blackberry"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["blueberry"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 5,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["cantaloupe"] = {
        hunger = 4,  -- Overall hunger increase
        dairy = 0,
        fruits = 8,
        veggies = 0,
        carbs = 3,
        meat = 0
    },
    ["carambola"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["cherry"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["coconut"] = {
        hunger = 5,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 5,
        meat = 0
    },
    ["cranberry"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 5,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["currant"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 5,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["dragon_fruit"] = {
        hunger = 4,  -- Overall hunger increase
        dairy = 0,
        fruits = 8,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["durian"] = {
        hunger = 5,  -- Overall hunger increase
        dairy = 0,
        fruits = 9,
        veggies = 0,
        carbs = 3,
        meat = 0
    },
    ["elderberry"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 5,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["fig"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["grape"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["grapefruit"] = {
        hunger = 4,  -- Overall hunger increase
        dairy = 0,
        fruits = 8,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["guava"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["jackfruit"] = {
        hunger = 6,  -- Overall hunger increase
        dairy = 0,
        fruits = 9,
        veggies = 0,
        carbs = 4,
        meat = 0
    },
    ["kiwi"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["lemon"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 5,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["longan"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["loquat"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["lychee"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["mango"] = {
        hunger = 5,  -- Overall hunger increase
        dairy = 0,
        fruits = 8,
        veggies = 0,
        carbs = 3,
        meat = 0
    },
    ["mangosteen"] = {
        hunger = 4,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["mulberry"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 5,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["olive"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 4,
        veggies = 0,
        carbs = 0,
        meat = 0
    },
    ["orange"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["papaya"] = {
        hunger = 5,  -- Overall hunger increase
        dairy = 0,
        fruits = 8,
        veggies = 0,
        carbs = 3,
        meat = 0
    },
    ["passion_fruit"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["peach"] = {
        hunger = 4,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["pear"] = {
        hunger = 4,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["persimmon"] = {
        hunger = 5,  -- Overall hunger increase
        dairy = 0,
        fruits = 8,
        veggies = 0,
        carbs = 3,
        meat = 0
    },
    ["pineapple"] = {
        hunger = 6,  -- Overall hunger increase
        dairy = 0,
        fruits = 9,
        veggies = 0,
        carbs = 3,
        meat = 0
    },
    ["plum"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["pomegranate"] = {
        hunger = 4,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["prune"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["rambutan"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["raspberry"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["sapodilla"] = {
        hunger = 4,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 3,
        meat = 0
    },
    ["strawberry"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 6,
        veggies = 0,
        carbs = 1,
        meat = 0
    },
    ["sugarcane"] = {
        hunger = 2,  -- Overall hunger increase
        dairy = 0,
        fruits = 4,
        veggies = 0,
        carbs = 3,
        meat = 0
    },
    ["tangerine"] = {
        hunger = 3,  -- Overall hunger increase
        dairy = 0,
        fruits = 7,
        veggies = 0,
        carbs = 2,
        meat = 0
    },
    ["watermelon"] = {
        hunger = 6,  -- Overall hunger increase
        dairy = 0,
        fruits = 9,
        veggies = 0,
        carbs = 3,
        meat = 0
    },

 --VEGGIES
 --VEGGIES
 --VEGGIES

 ["artichoke"] = {
    hunger = 2,  -- Overall hunger increase
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 1,
    meat = 0
},
["asparagus"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 6,
    carbs = 1,
    meat = 0
},
["beetroot"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 4,
    carbs = 2,
    meat = 0
},
["bell_pepper"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 1,
    meat = 0
},
["broccoli"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 7,
    carbs = 1,
    meat = 0
},
["brussels_sprout"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 6,
    carbs = 1,
    meat = 0
},
["cabbage"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 6,
    carbs = 1,
    meat = 0
},
["carrot"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 2,
    meat = 0
},
["cauliflower"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 6,
    carbs = 1,
    meat = 0
},
["celery"] = {
    hunger = 1,
    dairy = 0,
    fruits = 0,
    veggies = 4,
    carbs = 0,
    meat = 0
},
["chayote"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 1,
    meat = 0
},
["corn"] = {
    hunger = 4,
    dairy = 0,
    fruits = 0,
    veggies = 4,
    carbs = 3,
    meat = 0
},
["cucumber"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 1,
    meat = 0
},
["daikon"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 4,
    carbs = 2,
    meat = 0
},
["eggplant"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 1,
    meat = 0
},
["garlic"] = {
    hunger = 1,
    dairy = 0,
    fruits = 0,
    veggies = 3,
    carbs = 1,
    meat = 0
},
["jicama"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 4,
    carbs = 2,
    meat = 0
},
["kale"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 6,
    carbs = 0,
    meat = 0
},
["leek"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 1,
    meat = 0
},
["lettuce"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 0,
    meat = 0
},
["okra"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 1,
    meat = 0
},
["onion"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 1,
    meat = 0
},
["parsnip"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 2,
    meat = 0
},
["pea"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 2,
    meat = 0
},
["potato"] = {
    hunger = 5,
    dairy = 0,
    fruits = 0,
    veggies = 4,
    carbs = 5,
    meat = 0
},
["pumpkin"] = {
    hunger = 4,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 3,
    meat = 0
},
["soybeans"] = {
    hunger = 4,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 2,
    meat = 0
},
["spinach"] = {
    hunger = 2,
    dairy = 0,
    fruits = 0,
    veggies = 6,
    carbs = 1,
    meat = 0
},
["sweet_potato"] = {
    hunger = 5,
    dairy = 0,
    fruits = 0,
    veggies = 4,
    carbs = 5,
    meat = 0
},
["turnip"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 2,
    meat = 0
},
["zucchini"] = {
    hunger = 3,
    dairy = 0,
    fruits = 0,
    veggies = 5,
    carbs = 1,
    meat = 0
}


    -- Add more food items as needed
}

return food_data
