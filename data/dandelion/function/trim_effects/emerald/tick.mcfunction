# Emerald — gravity/jump (disabled while sneaking)
execute unless predicate dandelion:trim_effects/emerald/any if entity @s[tag=!emerald_head,tag=!emerald_chest,tag=!emerald_legs,tag=!emerald_feet] run return fail

execute if entity @s[tag=!emerald_head] if predicate dandelion:trim_effects/emerald/head unless predicate dandelion:trim_effects/sneaking run function dandelion:trim_effects/emerald/apply
execute if entity @s[tag=!emerald_chest] if predicate dandelion:trim_effects/emerald/chest unless predicate dandelion:trim_effects/sneaking run function dandelion:trim_effects/emerald/apply
execute if entity @s[tag=!emerald_legs] if predicate dandelion:trim_effects/emerald/legs unless predicate dandelion:trim_effects/sneaking run function dandelion:trim_effects/emerald/apply
execute if entity @s[tag=!emerald_feet] if predicate dandelion:trim_effects/emerald/feet unless predicate dandelion:trim_effects/sneaking run function dandelion:trim_effects/emerald/apply
execute if entity @s[tag=emerald_head] unless predicate dandelion:trim_effects/emerald/head run function dandelion:trim_effects/emerald/remove
execute if entity @s[tag=emerald_chest] unless predicate dandelion:trim_effects/emerald/chest run function dandelion:trim_effects/emerald/remove
execute if entity @s[tag=emerald_legs] unless predicate dandelion:trim_effects/emerald/legs run function dandelion:trim_effects/emerald/remove
execute if entity @s[tag=emerald_feet] unless predicate dandelion:trim_effects/emerald/feet run function dandelion:trim_effects/emerald/remove
execute if predicate dandelion:trim_effects/emerald/any if predicate dandelion:trim_effects/sneaking run function dandelion:trim_effects/emerald/remove
