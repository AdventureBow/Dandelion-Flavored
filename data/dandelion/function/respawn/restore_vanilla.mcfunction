# Exhausted rolls → vanilla bed/world spawn.
tag @s remove respawn_chunk_wait
tag @s remove respawn_unload_wait
scoreboard players reset @s respawn_wait
scoreboard players reset @s respawn_unload

function dandelion:respawn/unload_candidate

execute store result storage dandelion:respawn x int 1 run scoreboard players get @s respawn_sx
execute store result storage dandelion:respawn y int 1 run scoreboard players get @s respawn_sy
execute store result storage dandelion:respawn z int 1 run scoreboard players get @s respawn_sz
function dandelion:respawn/tp_xyz with storage dandelion:respawn
