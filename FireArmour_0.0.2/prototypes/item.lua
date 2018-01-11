--item.lua

data:extend(
{
    {
        type = "armor",
        name = "Fire-Armour",
        icon = "__FireArmour__/graphics/icons/fire-armour.png",
        tint = {r=1,g=0,b=0,a=0.3},
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        resistances =
        {
            {
                type = "physical",
                decrease = 6,
                percent = 30
            },
            {
                type = "explosion",
                decrease = 20,
                percent = 30
            },
            {
                type = "acid",
                decrease = 3,
                percent = 30
            },
            {
                type = "fire",
                decrease = 0,
                percent = 100
            }
        },
        durability = 5000,
        subgroup = "armor",
        order = "b-a[heavy-armor]",
        stack_size = 10
    }
}
)