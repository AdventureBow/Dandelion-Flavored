scoreboard players set #we trim_mat 0
execute if entity @s[tag=depth_eff] run attribute @s minecraft:water_movement_efficiency modifier remove dandelion:depth_strider
tag @s remove depth_eff
execute store result score #we trim_mat run attribute @s minecraft:water_movement_efficiency get 100
execute if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:1,max:1}}]] if score #we trim_mat matches ..32 run attribute @s minecraft:water_movement_efficiency modifier add dandelion:depth_strider 0.33333334 add_value
execute if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:1,max:1}}]] if score #we trim_mat matches ..32 run tag @s add depth_eff
execute if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:1,max:1}}]] run tag @s add depth_l1
execute if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:2,max:2}}]] if score #we trim_mat matches ..65 run attribute @s minecraft:water_movement_efficiency modifier add dandelion:depth_strider 0.6666667 add_value
execute if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:2,max:2}}]] if score #we trim_mat matches ..65 run tag @s add depth_eff
execute if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:2,max:2}}]] run tag @s add depth_l2
execute if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:3,max:3}}]] if score #we trim_mat matches ..99 run attribute @s minecraft:water_movement_efficiency modifier add dandelion:depth_strider 1 add_value
execute if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:3,max:3}}]] if score #we trim_mat matches ..99 run tag @s add depth_eff
execute if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:3,max:3}}]] run tag @s add depth_l3
execute if entity @s[type=#minecraft:can_wear_nautilus_armor] if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:1,max:1}}]] run attribute @s minecraft:movement_speed modifier add dandelion:depth_strider_swim 0.33333334 add_multiplied_base
execute if entity @s[type=#minecraft:can_wear_nautilus_armor] if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:2,max:2}}]] run attribute @s minecraft:movement_speed modifier add dandelion:depth_strider_swim 0.6666667 add_multiplied_base
execute if entity @s[type=#minecraft:can_wear_nautilus_armor] if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:3,max:3}}]] run attribute @s minecraft:movement_speed modifier add dandelion:depth_strider_swim 1 add_multiplied_base
execute if entity @s[type=#minecraft:can_wear_nautilus_armor] run tag @s add depth_swim
tag @s add depth_on
