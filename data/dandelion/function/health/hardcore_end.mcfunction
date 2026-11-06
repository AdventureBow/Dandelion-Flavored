# Last heart. Leave the vanilla hardcore death in place.
scoreboard players set @s base_hp 0
attribute @s minecraft:max_health base set 1
tag @s add hardcore_dead
function dandelion:trim_effects/clear_tags
function dandelion:trim_effects/process
advancement revoke @s only dandelion:health/player_died
