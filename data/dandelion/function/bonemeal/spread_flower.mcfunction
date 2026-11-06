scoreboard players set #cap trim_mat 1
scoreboard players set #placed trim_mat 0
function dandelion:bonemeal/try_flower {x:1,z:0}
function dandelion:bonemeal/try_flower {x:-1,z:0}
function dandelion:bonemeal/try_flower {x:0,z:1}
function dandelion:bonemeal/try_flower {x:0,z:-1}
function dandelion:bonemeal/try_flower {x:1,z:1}
function dandelion:bonemeal/try_flower {x:1,z:-1}
function dandelion:bonemeal/try_flower {x:-1,z:1}
function dandelion:bonemeal/try_flower {x:-1,z:-1}
execute if score #placed trim_mat matches 1.. run function dandelion:bonemeal/finish
execute if score #placed trim_mat matches 1.. run return 1
return fail
