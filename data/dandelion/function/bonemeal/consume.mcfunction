execute store result score @s bonemeal_cd run time query gametime
scoreboard players add @s bonemeal_cd 4
execute if entity @s[gamemode=creative] run return run function dandelion:bonemeal/stop_use
execute if entity @s[gamemode=spectator] run return run function dandelion:bonemeal/stop_use
execute if items entity @s weapon.mainhand minecraft:bone_meal run return run item modify entity @s weapon.mainhand dandelion:bonemeal_consume
execute if items entity @s weapon.offhand minecraft:bone_meal run item modify entity @s weapon.offhand dandelion:bonemeal_consume
