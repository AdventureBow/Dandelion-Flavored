execute if block ~ ~ ~ minecraft:nether_wart[age=3] run return fail
execute if block ~ ~ ~ minecraft:nether_wart[age=2] run setblock ~ ~ ~ minecraft:nether_wart[age=3]
execute if block ~ ~ ~ minecraft:nether_wart[age=1] run setblock ~ ~ ~ minecraft:nether_wart[age=2]
execute if block ~ ~ ~ minecraft:nether_wart[age=0] run setblock ~ ~ ~ minecraft:nether_wart[age=1]
function dandelion:bonemeal/finish
return 1
