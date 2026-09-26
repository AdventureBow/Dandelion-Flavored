effect clear @s minecraft:regeneration
execute if score @s netherite_regen_dur matches 1.. run function dandelion:netherite_fr/regen_restore
scoreboard players reset @s netherite_regen_dur
tag @s remove netherite_regen
