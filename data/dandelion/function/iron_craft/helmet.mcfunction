execute store success score #do trim_mat if predicate dandelion:iron_enchant
$execute if score #do trim_mat matches 0 run item modify $(src) dandelion:iron_craft/mark
execute if score #do trim_mat matches 0 run return run tag @s add iron_crafted
execute store result score #rng trim_mat run random value 1..11
$execute if score #rng trim_mat matches 1 run item modify $(src) dandelion:iron_craft/protection
$execute if score #rng trim_mat matches 1 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/thorns
$execute if score #rng trim_mat matches 2 run item modify $(src) dandelion:iron_craft/fire_protection
$execute if score #rng trim_mat matches 2 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 3 run item modify $(src) dandelion:iron_craft/blast_protection
$execute if score #rng trim_mat matches 3 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 4 run item modify $(src) dandelion:iron_craft/projectile_protection
$execute if score #rng trim_mat matches 4 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 5 run item modify $(src) dandelion:iron_craft/respiration
$execute if score #rng trim_mat matches 5 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 6 run item modify $(src) dandelion:iron_craft/aqua_affinity
$execute if score #rng trim_mat matches 6 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 7 run item modify $(src) dandelion:iron_craft/thorns
$execute if score #rng trim_mat matches 7 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/protection
$execute if score #rng trim_mat matches 8 run item modify $(src) dandelion:iron_craft/unbreaking
$execute if score #rng trim_mat matches 8 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/thorns
$execute if score #rng trim_mat matches 9 run item modify $(src) dandelion:iron_craft/mending
$execute if score #rng trim_mat matches 9 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 10 run item modify $(src) dandelion:iron_craft/vanishing
$execute if score #rng trim_mat matches 10 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
$execute if score #rng trim_mat matches 11 run item modify $(src) dandelion:iron_craft/binding
$execute if score #rng trim_mat matches 11 if predicate dandelion:iron_second run item modify $(src) dandelion:iron_craft/second/unbreaking
tag @s add iron_crafted
