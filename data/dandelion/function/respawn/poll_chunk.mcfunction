# Forceload needs a few ticks before the heightmap is real.
execute unless data entity @s {Health:0.0f} run return run function dandelion:respawn/cancel

execute store result storage dandelion:respawn x int 1 run scoreboard players get @s respawn_tx
execute store result storage dandelion:respawn z int 1 run scoreboard players get @s respawn_tz
tag @s remove respawn_column_loaded
function dandelion:respawn/column_loaded with storage dandelion:respawn
execute if entity @s[tag=respawn_column_loaded] if score @s respawn_wait matches ..15 run tag @s add respawn_probe_now
tag @s remove respawn_column_loaded
execute if entity @s[tag=respawn_probe_now] run return run function dandelion:respawn/probe

scoreboard players remove @s respawn_wait 1
execute if score @s respawn_wait matches ..0 run function dandelion:respawn/reject_spot
