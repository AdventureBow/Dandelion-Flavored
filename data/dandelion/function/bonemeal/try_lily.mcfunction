execute if score #placed trim_mat >= #cap trim_mat run return fail
$execute unless block ~$(x) ~ ~$(z) minecraft:air run return fail
$execute unless block ~$(x) ~-1 ~$(z) minecraft:water[level=0] run return fail
$setblock ~$(x) ~ ~$(z) minecraft:lily_pad
scoreboard players add #placed trim_mat 1
