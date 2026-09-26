execute unless items entity @s container.* #dandelion:effect_foods unless items entity @s weapon.* #dandelion:effect_foods unless items entity @s player.cursor #dandelion:effect_foods run return fail

data modify storage dandelion:stamp item set value "minecraft:dried_kelp"
data modify storage dandelion:stamp modifier set value "dandelion:edible_dried_kelp"
function dandelion:edible/carry

data modify storage dandelion:stamp item set value "minecraft:golden_carrot"
data modify storage dandelion:stamp modifier set value "dandelion:edible_golden_carrot"
function dandelion:edible/carry

data modify storage dandelion:stamp item set value "minecraft:sugar"
data modify storage dandelion:stamp modifier set value "dandelion:edible_sugar"
function dandelion:edible/carry

data modify storage dandelion:stamp item set value "minecraft:glistering_melon_slice"
data modify storage dandelion:stamp modifier set value "dandelion:edible_glistering_melon"
function dandelion:edible/carry

data modify storage dandelion:stamp item set value "minecraft:cooked_rabbit"
data modify storage dandelion:stamp modifier set value "dandelion:edible_cooked_rabbit"
function dandelion:edible/carry

data modify storage dandelion:stamp item set value "minecraft:cactus"
data modify storage dandelion:stamp modifier set value "dandelion:edible_cactus"
function dandelion:edible/carry

data modify storage dandelion:stamp item set value "minecraft:nether_wart"
data modify storage dandelion:stamp modifier set value "dandelion:edible_nether_wart"
function dandelion:edible/carry
