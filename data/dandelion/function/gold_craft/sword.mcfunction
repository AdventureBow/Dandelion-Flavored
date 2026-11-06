execute store result score #rng trim_mat run random value 1..10
execute store success score #max trim_mat if predicate dandelion:gold_max
$execute if score #rng trim_mat matches 1 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/sharpness
$execute if score #rng trim_mat matches 1 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/looting
$execute if score #rng trim_mat matches 1 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/sharpness
$execute if score #rng trim_mat matches 2 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/smite
$execute if score #rng trim_mat matches 2 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 2 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/smite
$execute if score #rng trim_mat matches 3 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/bane
$execute if score #rng trim_mat matches 3 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 3 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/bane
$execute if score #rng trim_mat matches 4 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/knockback
$execute if score #rng trim_mat matches 4 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 4 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/knockback
$execute if score #rng trim_mat matches 5 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/fire_aspect
$execute if score #rng trim_mat matches 5 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 5 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/fire_aspect
$execute if score #rng trim_mat matches 6 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/looting
$execute if score #rng trim_mat matches 6 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 6 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/looting
$execute if score #rng trim_mat matches 7 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/sweeping
$execute if score #rng trim_mat matches 7 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 7 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/sweeping
$execute if score #rng trim_mat matches 8 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/unbreaking
$execute if score #rng trim_mat matches 8 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/looting
$execute if score #rng trim_mat matches 8 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/unbreaking
$execute if score #rng trim_mat matches 9 run item modify $(src) dandelion:gold_craft/mending
$execute if score #rng trim_mat matches 9 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 10 run item modify $(src) dandelion:gold_craft/vanishing
$execute if score #rng trim_mat matches 10 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
tag @s add gold_crafted
