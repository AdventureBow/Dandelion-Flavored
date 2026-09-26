execute store result storage dandelion:netherite regen_sec int 0.05 run scoreboard players get @s netherite_regen_dur
execute if score @s netherite_regen_dur matches 1..19 run data modify storage dandelion:netherite regen_sec set value 1
function dandelion:netherite_fr/regen_restore_macro with storage dandelion:netherite
