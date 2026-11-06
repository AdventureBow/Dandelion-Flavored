# Death sets await_respawn_place during the level tick, after this function.
# The next tick sets the spawnpoint before that tick reads a respawn packet.

execute as @a[tag=respawn_probe_now] run function dandelion:respawn/probe
execute as @a[tag=await_respawn_place,tag=!respawn_probe_now,tag=!respawn_chunk_wait,tag=!respawn_armed] if data entity @s {Health:0.0f} run function dandelion:respawn/begin
execute as @a[tag=respawn_chunk_wait] run function dandelion:respawn/poll_chunk

# Respawned before a spot was ready. Leave the vanilla position alone.
execute as @a[tag=await_respawn_place,tag=!respawn_armed] unless data entity @s {Health:0.0f} run function dandelion:respawn/cancel

execute as @a[tag=respawn_armed] unless data entity @s {Health:0.0f} run function dandelion:respawn/arrived

execute as @a[tag=respawn_unload_wait,scores={respawn_unload=1..}] run scoreboard players remove @s respawn_unload 1
execute as @a[tag=respawn_unload_wait,scores={respawn_unload=0}] run function dandelion:respawn/finish_unload
