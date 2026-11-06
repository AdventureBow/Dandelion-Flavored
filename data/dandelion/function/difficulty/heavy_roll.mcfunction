# Of armored mobs: 1-40 copper, 41-75 iron, 76-90 chain, 91-100 gold.
execute store result score #rng trim_mat run random value 1..100
execute if score #rng trim_mat matches 1..40 run return run function dandelion:difficulty/equip/copper
execute if score #rng trim_mat matches 41..75 run return run function dandelion:difficulty/equip/iron
execute if score #rng trim_mat matches 76..90 run return run function dandelion:difficulty/equip/chainmail
function dandelion:difficulty/equip/gold
