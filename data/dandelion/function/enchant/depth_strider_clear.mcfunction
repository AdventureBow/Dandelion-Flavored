execute if entity @s[tag=depth_eff] run attribute @s minecraft:water_movement_efficiency modifier remove dandelion:depth_strider
execute if entity @s[tag=depth_swim] run attribute @s minecraft:movement_speed modifier remove dandelion:depth_strider_swim
tag @s remove depth_eff
tag @s remove depth_swim
tag @s remove depth_l1
tag @s remove depth_l2
tag @s remove depth_l3
tag @s remove depth_on
