for _, lab in pairs(data.raw["lab"]) do
    if lab.inputs then
        -- Ensure all labs accept the farming-science-pack
        table.insert(lab.inputs, "farming-science-pack")
        -- Ensure all labs accept the farming-science-pack
        table.insert(lab.inputs, "cooking-science-pack")
    end
end

