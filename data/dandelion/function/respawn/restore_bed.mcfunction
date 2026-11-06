execute store result storage dandelion:respawn x int 1 run scoreboard players get @s respawn_sx
execute store result storage dandelion:respawn y int 1 run scoreboard players get @s respawn_sy
execute store result storage dandelion:respawn z int 1 run scoreboard players get @s respawn_sz
function dandelion:respawn/restore_bed_at with storage dandelion:respawn
tag @s remove respawn_had_bed
