data:extend({
    {
        type = "lab",
        name = "lab",
        inputs = {
            "automation-science-pack",
            "logistic-science-pack",
            "chemical-science-pack",
            "military-science-pack",
            "production-science-pack",
            "utility-science-pack",
            "space-science-pack"
        },
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_usage = "60kW",
        researching_speed = 1,
        on_animation = {
            filename = "__base__/graphics/entity/lab/lab.png",
            width = 98,
            height = 87,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1),
            hr_version = {
                filename = "__base__/graphics/entity/lab/hr-lab.png",
                width = 194,
                height = 174,
                frame_count = 33,
                line_length = 11,
                animation_speed = 1 / 3,
                shift = util.by_pixel(0, 1),
                scale = 0.5
            }
        }
    }
})
