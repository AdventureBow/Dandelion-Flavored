# Gold trim — mining speed (doubled while holding a gold tool)
execute unless predicate dandelion:trim_effects/gold/any if entity @s[tag=gold_trim_active] run function dandelion:trim_effects/gold/remove
execute unless predicate dandelion:trim_effects/gold/any run return fail

function dandelion:trim_effects/gold/refresh
