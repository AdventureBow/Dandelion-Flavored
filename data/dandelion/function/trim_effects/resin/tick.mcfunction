execute unless predicate dandelion:trim_effects/resin/any if entity @s[tag=!resin_trim] run return fail

execute if predicate dandelion:trim_effects/resin/any if predicate dandelion:trim_effects/sneaking run function dandelion:trim_effects/resin/apply
execute if entity @s[tag=resin_trim] unless predicate dandelion:trim_effects/sneaking run function dandelion:trim_effects/resin/remove
