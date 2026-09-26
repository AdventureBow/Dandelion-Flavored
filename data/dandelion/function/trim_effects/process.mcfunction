# @s = player/mob from trimmed_mobs tag. Skip fully bare entities fast.
execute unless predicate dandelion:trim_effects/any_trim if entity @s[tag=!amethyst_head,tag=!amethyst_chest,tag=!amethyst_legs,tag=!amethyst_feet,tag=!copper_head,tag=!copper_chest,tag=!copper_legs,tag=!copper_feet,tag=!diamond_head,tag=!diamond_chest,tag=!diamond_legs,tag=!diamond_feet,tag=!emerald_head,tag=!emerald_chest,tag=!emerald_legs,tag=!emerald_feet,tag=!gold_head,tag=!gold_chest,tag=!gold_legs,tag=!gold_feet,tag=!iron_head,tag=!iron_chest,tag=!iron_legs,tag=!iron_feet,tag=!netherite_head,tag=!netherite_chest,tag=!netherite_legs,tag=!netherite_feet,tag=!quartz_head,tag=!quartz_chest,tag=!quartz_legs,tag=!quartz_feet,tag=!redstone_head,tag=!redstone_chest,tag=!redstone_legs,tag=!redstone_feet,tag=!resin_trim] run return fail

function dandelion:trim_effects/amethyst/tick
function dandelion:trim_effects/copper/tick
function dandelion:trim_effects/diamond/tick
function dandelion:trim_effects/emerald/tick
function dandelion:trim_effects/gold/tick
function dandelion:trim_effects/iron/tick
function dandelion:trim_effects/netherite/tick
function dandelion:trim_effects/quartz/tick
function dandelion:trim_effects/redstone/tick
function dandelion:trim_effects/resin/tick
