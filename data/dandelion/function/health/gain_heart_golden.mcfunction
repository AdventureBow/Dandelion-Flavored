# Enchanted Golden Apple: +1 heart, cap 20 hearts (40 HP).

advancement revoke @s only dandelion:health/eat_enchanted_golden_apple

execute if score #world difficulty matches 4 run return run function dandelion:health/gain_heart_hardcore

execute if score @s base_hp matches 40.. run return fail
scoreboard players add @s base_hp 2
execute if score @s base_hp matches 41.. run scoreboard players set @s base_hp 40
function dandelion:health/gain_heart
