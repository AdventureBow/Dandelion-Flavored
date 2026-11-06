# Overworld deaths only. Nether and End keep the vanilla bed.
# The search itself starts on the next tick, from the silent tick source.
execute unless dimension minecraft:overworld run return fail

execute store result score @s death_x run data get entity @s Pos[0]
execute store result score @s death_y run data get entity @s Pos[1]
execute store result score @s death_z run data get entity @s Pos[2]

execute if entity @s[tag=respawn_unload_wait] run function dandelion:respawn/unload_candidate
tag @s remove respawn_delay
tag @s remove respawn_probe_now
tag @s remove respawn_chunk_wait
tag @s remove respawn_armed
tag @s remove respawn_had_bed
tag @s remove respawn_unload_wait
tag @s remove await_respawn_place
scoreboard players reset @s respawn_wait
scoreboard players reset @s respawn_unload

# A respawn point in another dimension is left alone.
execute if data entity @s respawn{dimension:"minecraft:the_nether"} run return fail
execute if data entity @s respawn{dimension:"minecraft:the_end"} run return fail
execute if data entity @s respawn unless data entity @s respawn{dimension:"minecraft:overworld"} run return fail

execute if data entity @s respawn{dimension:"minecraft:overworld"} run function dandelion:respawn/save_bed
execute if entity @s[tag=respawn_had_bed] if score @s respawn_d2 matches ..90000 run return run function dandelion:respawn/keep_bed

tag @s add await_respawn_place
scoreboard players set @s respawn_attempts 0
