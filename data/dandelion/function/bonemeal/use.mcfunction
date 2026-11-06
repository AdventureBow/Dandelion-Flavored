advancement revoke @s only dandelion:bonemeal/use
execute store result score #now trim_mat run time query gametime
execute if score @s bonemeal_cd > #now trim_mat run return run function dandelion:bonemeal/stop_use
scoreboard players set #grew trim_mat 0
scoreboard players set #ray trim_mat 0
execute anchored eyes positioned ^ ^ ^ run function dandelion:bonemeal/ray
execute if score #grew trim_mat matches 1 run function dandelion:bonemeal/consume
execute if score #grew trim_mat matches 0 run function dandelion:bonemeal/stop_use
