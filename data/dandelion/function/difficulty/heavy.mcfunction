tag @s remove trim_master
tag @s remove no_trim
tag @s add trim_heavy
execute if predicate dandelion:rarity/rare run function dandelion:difficulty/heavy_roll
tag @s remove trim_heavy
tag @s add boosted
