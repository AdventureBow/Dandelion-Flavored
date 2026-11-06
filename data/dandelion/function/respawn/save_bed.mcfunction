# Remember the overworld respawn point so a far one can be put back after this death.
tag @s add respawn_had_bed
execute store result score @s respawn_sx run data get entity @s respawn.pos[0]
execute store result score @s respawn_sy run data get entity @s respawn.pos[1]
execute store result score @s respawn_sz run data get entity @s respawn.pos[2]

scoreboard players operation @s respawn_dx = @s respawn_sx
scoreboard players operation @s respawn_dz = @s respawn_sz
scoreboard players operation @s respawn_dx -= @s death_x
scoreboard players operation @s respawn_dz -= @s death_z
scoreboard players operation @s respawn_dx *= @s respawn_dx
scoreboard players operation @s respawn_dz *= @s respawn_dz
scoreboard players operation @s respawn_d2 = @s respawn_dx
scoreboard players operation @s respawn_d2 += @s respawn_dz
