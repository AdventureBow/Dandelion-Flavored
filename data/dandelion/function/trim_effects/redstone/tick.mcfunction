# Redstone — speed + step height
execute unless predicate dandelion:trim_effects/redstone/any if entity @s[tag=!redstone_head,tag=!redstone_chest,tag=!redstone_legs,tag=!redstone_feet] run return fail

execute if entity @s[tag=!redstone_head] if predicate dandelion:trim_effects/redstone/head run function dandelion:trim_effects/redstone/apply
execute if entity @s[tag=!redstone_chest] if predicate dandelion:trim_effects/redstone/chest run function dandelion:trim_effects/redstone/apply
execute if entity @s[tag=!redstone_legs] if predicate dandelion:trim_effects/redstone/legs run function dandelion:trim_effects/redstone/apply
execute if entity @s[tag=!redstone_feet] if predicate dandelion:trim_effects/redstone/feet run function dandelion:trim_effects/redstone/apply
execute if entity @s[tag=redstone_head] unless predicate dandelion:trim_effects/redstone/head run function dandelion:trim_effects/redstone/remove
execute if entity @s[tag=redstone_chest] unless predicate dandelion:trim_effects/redstone/chest run function dandelion:trim_effects/redstone/remove
execute if entity @s[tag=redstone_legs] unless predicate dandelion:trim_effects/redstone/legs run function dandelion:trim_effects/redstone/remove
execute if entity @s[tag=redstone_feet] unless predicate dandelion:trim_effects/redstone/feet run function dandelion:trim_effects/redstone/remove
