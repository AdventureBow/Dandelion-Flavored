execute unless block ~ ~ ~ minecraft:pumpkin_stem[age=7] unless block ~ ~ ~ minecraft:melon_stem[age=7] run return fail
scoreboard players set #placed trim_mat 0
function dandelion:bonemeal/stem_side {x:1,z:0,facing:"east",fruit:"$(fruit)",stem:"$(stem)"}
function dandelion:bonemeal/stem_side {x:-1,z:0,facing:"west",fruit:"$(fruit)",stem:"$(stem)"}
function dandelion:bonemeal/stem_side {x:0,z:1,facing:"south",fruit:"$(fruit)",stem:"$(stem)"}
function dandelion:bonemeal/stem_side {x:0,z:-1,facing:"north",fruit:"$(fruit)",stem:"$(stem)"}
execute if score #placed trim_mat matches 1.. run return 1
return fail
