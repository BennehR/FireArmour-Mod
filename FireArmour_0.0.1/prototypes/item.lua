--item.lua

local fireArmour = table.deepcopy(data.raw.armor["heavy-armor"])

fireArmour.name = "Fire-Armour"
fireArmour.icons= {
    {
        icon=fireArmour.icon,
        tint={r=1,g=0,b=0,a=0.3}
    },
}

fireArmour.resistances = {
    {
        type = "physical",
        decrease = 6,
        percent = 10,
    },
    {
        type = "explosion",
        decrease = 10,
        percent = 30
    },
    {
        type = "acid",
        decrease = 5,
        percent = 30
    },
    {
        type = "fire",
        decrease = 0,
        percent = 100
    },
}

fireArmour.order = "f[fire-armour]"

local recipe = table.deepcopy(data.raw.recipe["heavy-armor"])
recipe.enabled = true;
recipe.ingredients = {{"copper-plate",200},{"steel-plate",50}}
recipe.result = "Fire-Armour"

data:extend{fireArmour,recipe}