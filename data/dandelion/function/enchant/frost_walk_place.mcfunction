execute if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:frost_walker",levels:{min:2}}]] run function dandelion:enchant/frost_walk_2
execute unless items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:frost_walker",levels:{min:2}}]] run function dandelion:enchant/frost_walk_1
scoreboard players operation @s frost_x = #fx trim_mat
scoreboard players operation @s frost_y = #fy trim_mat
scoreboard players operation @s frost_z = #fz trim_mat
