execute if items entity @s weapon.mainhand #dandelion:golden_tools if entity @s[tag=!gold_tool_held] run function dandelion:trim_effects/gold/refresh
execute unless items entity @s weapon.mainhand #dandelion:golden_tools if entity @s[tag=gold_tool_held] run function dandelion:trim_effects/gold/refresh
