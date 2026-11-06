# Vanilla already placed them on the spot set during the death screen.
execute if entity @s[tag=respawn_had_bed] run function dandelion:respawn/restore_bed
tag @s remove respawn_armed
tag @s remove await_respawn_place
scoreboard players set @s respawn_unload 30
tag @s add respawn_unload_wait
