# Hardcore food stops at 10 hearts.
execute if score @s base_hp matches 20.. run return fail
tag @s remove hardcore_dead
scoreboard players add @s base_hp 2
execute if score @s base_hp matches 21.. run scoreboard players set @s base_hp 20
execute if score @s base_hp matches 3.. run function dandelion:difficulty/hardcore_instant_on
function dandelion:health/gain_heart
