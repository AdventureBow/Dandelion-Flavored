# Quartz — max health
execute unless predicate dandelion:trim_effects/quartz/any if entity @s[tag=!quartz_head,tag=!quartz_chest,tag=!quartz_legs,tag=!quartz_feet] run return fail

execute if entity @s[tag=!quartz_head] if predicate dandelion:trim_effects/quartz/head run function dandelion:trim_effects/quartz/apply
execute if entity @s[tag=!quartz_chest] if predicate dandelion:trim_effects/quartz/chest run function dandelion:trim_effects/quartz/apply
execute if entity @s[tag=!quartz_legs] if predicate dandelion:trim_effects/quartz/legs run function dandelion:trim_effects/quartz/apply
execute if entity @s[tag=!quartz_feet] if predicate dandelion:trim_effects/quartz/feet run function dandelion:trim_effects/quartz/apply
execute if entity @s[tag=quartz_head] unless predicate dandelion:trim_effects/quartz/head run function dandelion:trim_effects/quartz/remove
execute if entity @s[tag=quartz_chest] unless predicate dandelion:trim_effects/quartz/chest run function dandelion:trim_effects/quartz/remove
execute if entity @s[tag=quartz_legs] unless predicate dandelion:trim_effects/quartz/legs run function dandelion:trim_effects/quartz/remove
execute if entity @s[tag=quartz_feet] unless predicate dandelion:trim_effects/quartz/feet run function dandelion:trim_effects/quartz/remove
