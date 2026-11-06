$execute if block ~ ~1 ~ $(block) positioned ~ ~1 ~ run return run function dandelion:bonemeal/column {block:"$(block)"}
$execute if block ~ ~-2 ~ $(block) run return fail
execute unless block ~ ~1 ~ minecraft:air run return fail
execute if block ~ ~ ~ minecraft:cactus unless block ~1 ~1 ~ minecraft:air run return fail
execute if block ~ ~ ~ minecraft:cactus unless block ~-1 ~1 ~ minecraft:air run return fail
execute if block ~ ~ ~ minecraft:cactus unless block ~ ~1 ~1 minecraft:air run return fail
execute if block ~ ~ ~ minecraft:cactus unless block ~ ~1 ~-1 minecraft:air run return fail
$setblock ~ ~1 ~ $(block)
function dandelion:bonemeal/finish
return 1
