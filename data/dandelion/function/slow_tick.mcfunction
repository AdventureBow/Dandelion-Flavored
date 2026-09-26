scoreboard players set #global tick_mod 0
function dandelion:difficulty/tick
function dandelion:mob_stats/process
function dandelion:shulker_spawn/tick

execute as @e[type=#dandelion:trimmed_mobs,type=!player] at @s run function dandelion:trim_effects/process
execute as @a[predicate=dandelion:trim_effects/any_trim] at @s run function dandelion:trim_effects/particles
execute as @e[type=#dandelion:trimmed_mobs,type=!player,predicate=dandelion:trim_effects/any_trim] at @s run function dandelion:trim_effects/particles
execute as @e[type=minecraft:armor_stand] at @s if entity @a[distance=..10] run function dandelion:trim_effects/display
