execute unless block ~ ~1 ~ minecraft:air run return fail
execute if block ~ ~ ~ minecraft:chorus_flower run setblock ~ ~ ~ minecraft:chorus_plant
setblock ~ ~1 ~ minecraft:chorus_flower
function dandelion:bonemeal/finish
return 1
