# Ender dragon: 200 → 400. Current health is doubled so the phase ratio stays. Once via mob_tuned.
attribute @s minecraft:max_health base set 400
execute store result entity @s Health float 2 run data get entity @s Health
tag @s add mob_tuned
