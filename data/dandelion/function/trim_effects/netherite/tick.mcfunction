# Netherite — knockback resist.
execute unless predicate dandelion:trim_effects/netherite/any if entity @s[tag=!netherite_head,tag=!netherite_chest,tag=!netherite_legs,tag=!netherite_feet] run return fail

execute if entity @s[tag=!netherite_head] if predicate dandelion:trim_effects/netherite/head run function dandelion:trim_effects/netherite/apply
execute if entity @s[tag=!netherite_chest] if predicate dandelion:trim_effects/netherite/chest run function dandelion:trim_effects/netherite/apply
execute if entity @s[tag=!netherite_legs] if predicate dandelion:trim_effects/netherite/legs run function dandelion:trim_effects/netherite/apply
execute if entity @s[tag=!netherite_feet] if predicate dandelion:trim_effects/netherite/feet run function dandelion:trim_effects/netherite/apply
execute if entity @s[tag=netherite_head] unless predicate dandelion:trim_effects/netherite/head run function dandelion:trim_effects/netherite/remove
execute if entity @s[tag=netherite_chest] unless predicate dandelion:trim_effects/netherite/chest run function dandelion:trim_effects/netherite/remove
execute if entity @s[tag=netherite_legs] unless predicate dandelion:trim_effects/netherite/legs run function dandelion:trim_effects/netherite/remove
execute if entity @s[tag=netherite_feet] unless predicate dandelion:trim_effects/netherite/feet run function dandelion:trim_effects/netherite/remove
