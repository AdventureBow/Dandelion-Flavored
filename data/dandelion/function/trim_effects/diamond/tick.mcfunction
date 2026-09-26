# Diamond — armor + toughness
execute unless predicate dandelion:trim_effects/diamond/any if entity @s[tag=!diamond_head,tag=!diamond_chest,tag=!diamond_legs,tag=!diamond_feet] run return fail

execute if entity @s[tag=!diamond_head] if predicate dandelion:trim_effects/diamond/head run function dandelion:trim_effects/diamond/apply
execute if entity @s[tag=!diamond_chest] if predicate dandelion:trim_effects/diamond/chest run function dandelion:trim_effects/diamond/apply
execute if entity @s[tag=!diamond_legs] if predicate dandelion:trim_effects/diamond/legs run function dandelion:trim_effects/diamond/apply
execute if entity @s[tag=!diamond_feet] if predicate dandelion:trim_effects/diamond/feet run function dandelion:trim_effects/diamond/apply
execute if entity @s[tag=diamond_head] unless predicate dandelion:trim_effects/diamond/head run function dandelion:trim_effects/diamond/remove
execute if entity @s[tag=diamond_chest] unless predicate dandelion:trim_effects/diamond/chest run function dandelion:trim_effects/diamond/remove
execute if entity @s[tag=diamond_legs] unless predicate dandelion:trim_effects/diamond/legs run function dandelion:trim_effects/diamond/remove
execute if entity @s[tag=diamond_feet] unless predicate dandelion:trim_effects/diamond/feet run function dandelion:trim_effects/diamond/remove
