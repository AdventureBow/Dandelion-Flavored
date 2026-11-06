execute store result score #fx trim_mat run data get entity @s Pos[0]
execute store result score #fy trim_mat run data get entity @s Pos[1]
execute store result score #fz trim_mat run data get entity @s Pos[2]
execute unless predicate dandelion:on_ground if entity @s[type=!#minecraft:can_wear_nautilus_armor] run return fail
execute unless predicate dandelion:on_ground unless function dandelion:enchant/frost_walk_supported run return fail
execute unless score #fx trim_mat = @s frost_x run function dandelion:enchant/frost_walk_place
execute if score #fx trim_mat = @s frost_x unless score #fy trim_mat = @s frost_y run function dandelion:enchant/frost_walk_place
execute if score #fx trim_mat = @s frost_x if score #fy trim_mat = @s frost_y unless score #fz trim_mat = @s frost_z run function dandelion:enchant/frost_walk_place
