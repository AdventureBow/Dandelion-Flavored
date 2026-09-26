# Copper — scale shrink
execute unless predicate dandelion:trim_effects/copper/any if entity @s[tag=!copper_head,tag=!copper_chest,tag=!copper_legs,tag=!copper_feet] run return fail

# Keep piece count fresh for particles (and armor-stand display)
scoreboard players set @s copper_trim 0
execute if predicate dandelion:trim_effects/copper/head run scoreboard players add @s copper_trim 1
execute if predicate dandelion:trim_effects/copper/chest run scoreboard players add @s copper_trim 1
execute if predicate dandelion:trim_effects/copper/legs run scoreboard players add @s copper_trim 1
execute if predicate dandelion:trim_effects/copper/feet run scoreboard players add @s copper_trim 1

execute if entity @s[tag=!copper_head] if predicate dandelion:trim_effects/copper/head run function dandelion:trim_effects/copper/apply
execute if entity @s[tag=!copper_chest] if predicate dandelion:trim_effects/copper/chest run function dandelion:trim_effects/copper/apply
execute if entity @s[tag=!copper_legs] if predicate dandelion:trim_effects/copper/legs run function dandelion:trim_effects/copper/apply
execute if entity @s[tag=!copper_feet] if predicate dandelion:trim_effects/copper/feet run function dandelion:trim_effects/copper/apply
execute if entity @s[tag=copper_head] unless predicate dandelion:trim_effects/copper/head run function dandelion:trim_effects/copper/remove
execute if entity @s[tag=copper_chest] unless predicate dandelion:trim_effects/copper/chest run function dandelion:trim_effects/copper/remove
execute if entity @s[tag=copper_legs] unless predicate dandelion:trim_effects/copper/legs run function dandelion:trim_effects/copper/remove
execute if entity @s[tag=copper_feet] unless predicate dandelion:trim_effects/copper/feet run function dandelion:trim_effects/copper/remove
