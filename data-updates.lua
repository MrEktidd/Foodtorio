
-- Ensure all labs accept the farming-science-pack
for _, lab in pairs(data.raw["lab"]) do
    if lab.inputs then
        table.insert(lab.inputs, "farming-science-pack")
    end
end

-- Ensure all labs accept the farming-science-pack
for _, lab in pairs(data.raw["lab"]) do
    if lab.inputs then
        table.insert(lab.inputs, "cooking-science-pack")
    end
end

--Fruit Machines lock
for _, recipe in pairs(data.raw.recipe) do
    if recipe.subgroup == "fruit_machine" then
        recipe.enabled = false
    end
end

--Fruit Lock

for _, recipe in pairs(data.raw.recipe) do
    if recipe.subgroup == "fruit" then
        recipe.enabled = false
    end
end