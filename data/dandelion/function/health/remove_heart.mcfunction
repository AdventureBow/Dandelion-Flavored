# Lose one heart, then respawn. Floors follow #world difficulty.
# 0 peaceful: no loss. 1 easy: floor 18. 2 normal: floor 12.
# 3 hard: floor 6. 4 hardcore: no floor. At 2 or below, do not respawn.

execute unless score @s base_hp matches 0..40 run scoreboard players set @s base_hp 20

execute if score #world difficulty matches 4 if score @s base_hp matches ..2 run return run function dandelion:health/hardcore_end

execute if score #world difficulty matches 1 if score @s base_hp matches 20.. run scoreboard players remove @s base_hp 2
execute if score #world difficulty matches 2 if score @s base_hp matches 14.. run scoreboard players remove @s base_hp 2
execute unless score #world difficulty matches 0..4 if score @s base_hp matches 14.. run scoreboard players remove @s base_hp 2
execute if score #world difficulty matches 3 if score @s base_hp matches 8.. run scoreboard players remove @s base_hp 2
execute if score #world difficulty matches 4 run scoreboard players remove @s base_hp 2

function dandelion:health/set_max_hp
function dandelion:trim_effects/clear_tags
function dandelion:trim_effects/process

execute if score #world difficulty matches 4 run tag @s add hardcore_respawn
function dandelion:respawn/on_death

advancement revoke @s only dandelion:health/player_died
