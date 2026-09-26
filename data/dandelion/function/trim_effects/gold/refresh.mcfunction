# Gold trim: +0.5 block_break_speed per piece. Gold tools get double that bonus.

scoreboard players set #gold_pc trim_mat 0
execute if predicate dandelion:trim_effects/gold/head run scoreboard players add #gold_pc trim_mat 1
execute if predicate dandelion:trim_effects/gold/chest run scoreboard players add #gold_pc trim_mat 1
execute if predicate dandelion:trim_effects/gold/legs run scoreboard players add #gold_pc trim_mat 1
execute if predicate dandelion:trim_effects/gold/feet run scoreboard players add #gold_pc trim_mat 1

attribute @s minecraft:block_break_speed modifier remove gold_head
attribute @s minecraft:block_break_speed modifier remove gold_chest
attribute @s minecraft:block_break_speed modifier remove gold_legs
attribute @s minecraft:block_break_speed modifier remove gold_feet
attribute @s minecraft:block_break_speed modifier remove gold_trim_bbs

# Gold tool in hand: double the per-piece bonus (1.0 each)
execute if items entity @s weapon.mainhand #dandelion:golden_tools if score #gold_pc trim_mat matches 1 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 1.0 add_value
execute if items entity @s weapon.mainhand #dandelion:golden_tools if score #gold_pc trim_mat matches 2 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 2.0 add_value
execute if items entity @s weapon.mainhand #dandelion:golden_tools if score #gold_pc trim_mat matches 3 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 3.0 add_value
execute if items entity @s weapon.mainhand #dandelion:golden_tools if score #gold_pc trim_mat matches 4 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 4.0 add_value

# Any other tool, or empty hand
execute unless items entity @s weapon.mainhand #dandelion:golden_tools if score #gold_pc trim_mat matches 1 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 0.5 add_value
execute unless items entity @s weapon.mainhand #dandelion:golden_tools if score #gold_pc trim_mat matches 2 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 1.0 add_value
execute unless items entity @s weapon.mainhand #dandelion:golden_tools if score #gold_pc trim_mat matches 3 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 1.5 add_value
execute unless items entity @s weapon.mainhand #dandelion:golden_tools if score #gold_pc trim_mat matches 4 run attribute @s minecraft:block_break_speed modifier add gold_trim_bbs 2.0 add_value

tag @s add gold_trim_active
tag @s remove gold_tool_held
execute if items entity @s weapon.mainhand #dandelion:golden_tools run tag @s add gold_tool_held
