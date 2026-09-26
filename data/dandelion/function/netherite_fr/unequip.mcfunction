effect clear @s minecraft:fire_resistance
execute if score @s netherite_fr_dur matches 1.. run function dandelion:netherite_fr/restore
scoreboard players reset @s netherite_fr_dur
tag @s remove netherite_fr
