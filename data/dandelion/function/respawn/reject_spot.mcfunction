# Drop ticket for failed candidate, then pick another.
execute store result storage dandelion:respawn x int 1 run scoreboard players get @s respawn_tx
execute store result storage dandelion:respawn z int 1 run scoreboard players get @s respawn_tz
function dandelion:respawn/forceload_remove with storage dandelion:respawn

tag @s remove respawn_unload_wait
scoreboard players reset @s respawn_unload

function dandelion:respawn/pick_spot
