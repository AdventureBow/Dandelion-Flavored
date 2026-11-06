# Wither: 300 → 600. Current health is doubled so the half-health armor and the spawn third stay. Once via mob_tuned.
attribute @s minecraft:max_health base set 600
execute store result entity @s Health float 2 run data get entity @s Health
tag @s add mob_tuned
