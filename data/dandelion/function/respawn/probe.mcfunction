# Set a spawnpoint on a loaded column. Never teleport the player.
tag @s remove respawn_probe_now
tag @s remove respawn_chunk_wait
scoreboard players reset @s respawn_wait

execute unless data entity @s {Health:0.0f} run return run function dandelion:respawn/cancel

execute store result storage dandelion:respawn x int 1 run scoreboard players get @s respawn_tx
execute store result storage dandelion:respawn z int 1 run scoreboard players get @s respawn_tz
function dandelion:respawn/check_surface with storage dandelion:respawn
execute if entity @s[tag=respawn_armed] run return fail

function dandelion:respawn/reject_spot
execute if entity @s[tag=respawn_probe_now] run function dandelion:respawn/probe
