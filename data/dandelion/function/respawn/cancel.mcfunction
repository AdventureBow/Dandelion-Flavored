# Search stopped before a spawnpoint was set. Do not teleport.
tag @s remove await_respawn_place
tag @s remove respawn_probe_now
tag @s remove respawn_chunk_wait
tag @s remove respawn_had_bed
scoreboard players reset @s respawn_wait
function dandelion:respawn/unload_candidate
