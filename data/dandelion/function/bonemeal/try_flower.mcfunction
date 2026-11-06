execute if score #placed trim_mat >= #cap trim_mat run return fail
$execute unless block ~$(x) ~ ~$(z) minecraft:air run return fail
$execute unless block ~$(x) ~-1 ~$(z) #dandelion:bonemeal_flower_soil run return fail
$clone ~ ~ ~ ~ ~ ~ ~$(x) ~ ~$(z)
scoreboard players add #placed trim_mat 1
