# Already tuned at 16. Raise the max to 20 and keep the same fraction of the bar.
attribute @s minecraft:max_health base set 20
execute store result entity @s Health float 1.25 run data get entity @s Health
tag @s add zombie_hp20
