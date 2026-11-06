# 1-14 chain, 15-26 gold, 27-44 iron, 45-82 diamond, 83-90 netherite, 91-100 none.
tag @s remove trim_heavy
tag @s remove no_trim
tag @s add trim_master
execute store result score #rng trim_mat run random value 1..100
execute if score #rng trim_mat matches 1..90 run function dandelion:difficulty/master_roll
tag @s add boosted
