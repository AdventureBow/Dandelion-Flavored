scoreboard players add #ray trim_mat 1
execute if score #ray trim_mat matches 28.. run return fail
execute unless block ~ ~ ~ #dandelion:bonemeal_passable run return run function dandelion:bonemeal/hit
execute positioned ^ ^ ^0.2 run function dandelion:bonemeal/ray
