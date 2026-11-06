# Same spread as master, except netherite is 71-90 (20%) and diamond is 45-70 (26%).
tag @s remove trim_heavy
tag @s remove no_trim
tag @s add trim_master
execute store result score #rng trim_mat run random value 1..100
execute if score #rng trim_mat matches 1..90 run function dandelion:difficulty/heavy_master_roll
function dandelion:difficulty/equip/enchant_armor
tag @s add boosted
