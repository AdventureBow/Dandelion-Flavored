# Pick XZ in the ring [100,250] from the death.
# A loaded column is probed this tick. An unloaded one is forceloaded, then polled.

scoreboard players add @s respawn_attempts 1
execute if score @s respawn_attempts matches 25.. run return run function dandelion:respawn/cancel

execute store result score @s respawn_dx run random value -250..250
execute store result score @s respawn_dz run random value -250..250
scoreboard players operation @s respawn_d2 = @s respawn_dx
scoreboard players operation @s respawn_d2 *= @s respawn_dx
scoreboard players operation @s respawn_t = @s respawn_dz
scoreboard players operation @s respawn_t *= @s respawn_dz
scoreboard players operation @s respawn_d2 += @s respawn_t

execute if score @s respawn_d2 matches ..9999 run return run function dandelion:respawn/pick_spot
execute if score @s respawn_d2 matches 62501.. run return run function dandelion:respawn/pick_spot

scoreboard players operation @s respawn_tx = @s death_x
scoreboard players operation @s respawn_tz = @s death_z
scoreboard players operation @s respawn_tx += @s respawn_dx
scoreboard players operation @s respawn_tz += @s respawn_dz

execute store result storage dandelion:respawn x int 1 run scoreboard players get @s respawn_tx
execute store result storage dandelion:respawn z int 1 run scoreboard players get @s respawn_tz

tag @s remove respawn_column_loaded
function dandelion:respawn/column_loaded with storage dandelion:respawn
execute if entity @s[tag=respawn_column_loaded] run tag @s add respawn_probe_now
tag @s remove respawn_column_loaded
execute if entity @s[tag=respawn_probe_now] run return fail

execute if score @s respawn_attempts matches ..12 run return run function dandelion:respawn/pick_spot

function dandelion:respawn/forceload_add with storage dandelion:respawn
scoreboard players set @s respawn_wait 20
tag @s add respawn_chunk_wait
