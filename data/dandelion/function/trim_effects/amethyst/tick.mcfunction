# Amethyst — melee attack damage (+ arrow bonus handled in trim_effects/tick)
execute unless predicate dandelion:trim_effects/amethyst/any if entity @s[tag=!amethyst_head,tag=!amethyst_chest,tag=!amethyst_legs,tag=!amethyst_feet] run return fail

execute if entity @s[tag=!amethyst_head] if predicate dandelion:trim_effects/amethyst/head run function dandelion:trim_effects/amethyst/apply
execute if entity @s[tag=!amethyst_chest] if predicate dandelion:trim_effects/amethyst/chest run function dandelion:trim_effects/amethyst/apply
execute if entity @s[tag=!amethyst_legs] if predicate dandelion:trim_effects/amethyst/legs run function dandelion:trim_effects/amethyst/apply
execute if entity @s[tag=!amethyst_feet] if predicate dandelion:trim_effects/amethyst/feet run function dandelion:trim_effects/amethyst/apply
execute if entity @s[tag=amethyst_head] unless predicate dandelion:trim_effects/amethyst/head run function dandelion:trim_effects/amethyst/remove
execute if entity @s[tag=amethyst_chest] unless predicate dandelion:trim_effects/amethyst/chest run function dandelion:trim_effects/amethyst/remove
execute if entity @s[tag=amethyst_legs] unless predicate dandelion:trim_effects/amethyst/legs run function dandelion:trim_effects/amethyst/remove
execute if entity @s[tag=amethyst_feet] unless predicate dandelion:trim_effects/amethyst/feet run function dandelion:trim_effects/amethyst/remove
