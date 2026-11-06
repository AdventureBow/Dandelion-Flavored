execute if score #placed trim_mat matches 1.. run return fail
$execute unless block ~$(x) ~ ~$(z) minecraft:air run return fail
$execute unless block ~$(x) ~-1 ~$(z) #minecraft:dirt unless block ~$(x) ~-1 ~$(z) minecraft:farmland run return fail
$setblock ~$(x) ~ ~$(z) $(fruit)
$setblock ~ ~ ~ $(stem)[facing=$(facing)]
scoreboard players set #placed trim_mat 1
function dandelion:bonemeal/finish
