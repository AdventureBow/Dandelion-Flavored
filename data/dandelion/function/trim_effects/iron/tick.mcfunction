# Iron — interaction range
execute unless predicate dandelion:trim_effects/iron/any if entity @s[tag=!iron_head,tag=!iron_chest,tag=!iron_legs,tag=!iron_feet] run return fail

execute if entity @s[tag=!iron_head] if predicate dandelion:trim_effects/iron/head run function dandelion:trim_effects/iron/apply
execute if entity @s[tag=!iron_chest] if predicate dandelion:trim_effects/iron/chest run function dandelion:trim_effects/iron/apply
execute if entity @s[tag=!iron_legs] if predicate dandelion:trim_effects/iron/legs run function dandelion:trim_effects/iron/apply
execute if entity @s[tag=!iron_feet] if predicate dandelion:trim_effects/iron/feet run function dandelion:trim_effects/iron/apply
execute if entity @s[tag=iron_head] unless predicate dandelion:trim_effects/iron/head run function dandelion:trim_effects/iron/remove
execute if entity @s[tag=iron_chest] unless predicate dandelion:trim_effects/iron/chest run function dandelion:trim_effects/iron/remove
execute if entity @s[tag=iron_legs] unless predicate dandelion:trim_effects/iron/legs run function dandelion:trim_effects/iron/remove
execute if entity @s[tag=iron_feet] unless predicate dandelion:trim_effects/iron/feet run function dandelion:trim_effects/iron/remove
