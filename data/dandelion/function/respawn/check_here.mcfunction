# Execution position is the candidate. Do not use at @s (that is the death position).
kill @e[type=minecraft:marker,tag=df_probe]
summon minecraft:marker ~ ~ ~ {Tags:["df_probe"]}
execute store result score @s respawn_dx run data get entity @e[type=minecraft:marker,tag=df_probe,limit=1] Pos[1]
kill @e[type=minecraft:marker,tag=df_probe]
execute if score @s respawn_dx matches 400.. run return fail

execute if block ~ ~-1 ~ minecraft:air run return fail
execute if block ~ ~-1 ~ minecraft:cave_air run return fail
execute if block ~ ~-1 ~ minecraft:lava run return fail
execute if block ~ ~-1 ~ minecraft:fire run return fail
execute if block ~ ~-1 ~ minecraft:soul_fire run return fail
execute if block ~ ~-1 ~ minecraft:water run return fail
execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air run return fail
execute unless block ~ ~1 ~ minecraft:air unless block ~ ~1 ~ minecraft:cave_air run return fail

execute store success score @s respawn_t run spawnpoint @s ~ ~ ~
execute unless score @s respawn_t matches 1 run return fail

tag @s add respawn_armed
tag @s remove await_respawn_place
tag @s remove respawn_probe_now
tag @s remove respawn_chunk_wait
scoreboard players reset @s respawn_wait
