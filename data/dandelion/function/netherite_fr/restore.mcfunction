execute store result storage dandelion:netherite sec int 0.05 run scoreboard players get @s netherite_fr_dur
execute if score @s netherite_fr_dur matches 1..19 run data modify storage dandelion:netherite sec set value 1
function dandelion:netherite_fr/restore_macro with storage dandelion:netherite
