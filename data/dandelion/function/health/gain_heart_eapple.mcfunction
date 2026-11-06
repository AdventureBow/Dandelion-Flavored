# Golden Apple: +1 heart, cap 10 hearts (20 HP).

advancement revoke @s only dandelion:health/eat_enchanted_apple

execute if score #world difficulty matches 4 run return run function dandelion:health/gain_heart_hardcore

execute if score @s base_hp matches 20.. run return fail
scoreboard players add @s base_hp 2
execute if score @s base_hp matches 21.. run scoreboard players set @s base_hp 20
function dandelion:health/gain_heart
