# Zombie / husk / zombie villager: +0.1 speed. Health is 16 until the dragon is dead, then 20.
# Babies are already fast, so they only get the health change.
execute unless entity @s[nbt={IsBaby:1b}] run attribute @s minecraft:movement_speed modifier add dandelion:mob_tuned_speed 0.1 add_value
execute if entity @a[advancements={minecraft:end/kill_dragon=true}] run return run function dandelion:mob_stats/zombie_master
attribute @s minecraft:max_health base set 16
data modify entity @s Health set value 16.0f
tag @s add mob_tuned
