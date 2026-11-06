execute store result score #rng trim_mat run random value 1..6
execute store success score #max trim_mat if predicate dandelion:gold_max
$execute if score #rng trim_mat matches 1 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/efficiency
$execute if score #rng trim_mat matches 1 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/fortune
$execute if score #rng trim_mat matches 1 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/efficiency
$execute if score #rng trim_mat matches 2 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/fortune
$execute if score #rng trim_mat matches 2 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 2 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/fortune
$execute if score #rng trim_mat matches 3 run item modify $(src) dandelion:gold_craft/silk_touch
$execute if score #rng trim_mat matches 3 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/efficiency
$execute if score #rng trim_mat matches 4 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/unbreaking
$execute if score #rng trim_mat matches 4 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/fortune
$execute if score #rng trim_mat matches 4 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/unbreaking
$execute if score #rng trim_mat matches 5 run item modify $(src) dandelion:gold_craft/mending
$execute if score #rng trim_mat matches 5 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 6 run item modify $(src) dandelion:gold_craft/vanishing
$execute if score #rng trim_mat matches 6 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
tag @s add gold_crafted
