execute store success score #do trim_mat if predicate dandelion:iron_enchant
$execute if score #do trim_mat matches 0 run item modify $(src) dandelion:iron_craft/mark
execute if score #do trim_mat matches 0 run return run tag @s add iron_crafted
execute store result score #rng trim_mat run random value 1..10
$execute if score #rng trim_mat matches 1 run item modify $(src) dandelion:iron_craft/sharpness
$execute if score #rng trim_mat matches 1 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/looting
$execute if score #rng trim_mat matches 2 run item modify $(src) dandelion:iron_craft/smite
$execute if score #rng trim_mat matches 2 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 3 run item modify $(src) dandelion:iron_craft/bane
$execute if score #rng trim_mat matches 3 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 4 run item modify $(src) dandelion:iron_craft/knockback
$execute if score #rng trim_mat matches 4 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 5 run item modify $(src) dandelion:iron_craft/fire_aspect
$execute if score #rng trim_mat matches 5 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 6 run item modify $(src) dandelion:iron_craft/looting
$execute if score #rng trim_mat matches 6 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 7 run item modify $(src) dandelion:iron_craft/lunge
$execute if score #rng trim_mat matches 7 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 8 run item modify $(src) dandelion:iron_craft/unbreaking
$execute if score #rng trim_mat matches 8 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/looting
$execute if score #rng trim_mat matches 9 run item modify $(src) dandelion:iron_craft/mending
$execute if score #rng trim_mat matches 9 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 10 run item modify $(src) dandelion:iron_craft/vanishing
$execute if score #rng trim_mat matches 10 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
tag @s add iron_crafted
