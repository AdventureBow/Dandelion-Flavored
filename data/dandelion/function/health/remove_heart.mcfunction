execute unless score @s base_hp matches 6..40 run scoreboard players set @s base_hp 20
execute if score @s base_hp matches 14.. run scoreboard players remove @s base_hp 2
function dandelion:health/set_max_hp

function dandelion:trim_effects/clear_tags
function dandelion:trim_effects/process
function dandelion:respawn/on_death

advancement revoke @s only dandelion:health/player_died
