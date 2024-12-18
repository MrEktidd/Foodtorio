
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

