execute if score #placed trim_mat >= #cap trim_mat run return fail
$execute unless block ~$(x) ~ ~$(z) minecraft:mycelium run return fail
$execute unless block ~$(x) ~1 ~$(z) minecraft:air run return fail
$execute store result score #flip trim_mat run random value 0..1
$execute if score #flip trim_mat matches 0 run setblock ~$(x) ~1 ~$(z) minecraft:red_mushroom
$execute if score #flip trim_mat matches 1 run setblock ~$(x) ~1 ~$(z) minecraft:brown_mushroom
scoreboard players add #placed trim_mat 1
