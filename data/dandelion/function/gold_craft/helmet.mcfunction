execute store result score #rng trim_mat run random value 1..11
execute store success score #max trim_mat if predicate dandelion:gold_max
$execute if score #rng trim_mat matches 1 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/protection
$execute if score #rng trim_mat matches 1 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/thorns
$execute if score #rng trim_mat matches 1 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/protection
$execute if score #rng trim_mat matches 2 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/fire_protection
$execute if score #rng trim_mat matches 2 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 2 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/fire_protection
$execute if score #rng trim_mat matches 3 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/blast_protection
$execute if score #rng trim_mat matches 3 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 3 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/blast_protection
$execute if score #rng trim_mat matches 4 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/projectile_protection
$execute if score #rng trim_mat matches 4 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 4 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/projectile_protection
$execute if score #rng trim_mat matches 5 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/respiration
$execute if score #rng trim_mat matches 5 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 5 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/respiration
$execute if score #rng trim_mat matches 6 run item modify $(src) dandelion:gold_craft/aqua_affinity
$execute if score #rng trim_mat matches 6 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 7 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/thorns
$execute if score #rng trim_mat matches 7 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/protection
$execute if score #rng trim_mat matches 7 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/thorns
$execute if score #rng trim_mat matches 8 if score #max trim_mat matches 1 run item modify $(src) dandelion:gold_craft/unbreaking
$execute if score #rng trim_mat matches 8 if score #max trim_mat matches 1 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/thorns
$execute if score #rng trim_mat matches 8 if score #max trim_mat matches 0 run item modify $(src) dandelion:gold_craft/low/unbreaking
$execute if score #rng trim_mat matches 9 run item modify $(src) dandelion:gold_craft/mending
$execute if score #rng trim_mat matches 9 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 10 run item modify $(src) dandelion:gold_craft/vanishing
$execute if score #rng trim_mat matches 10 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
$execute if score #rng trim_mat matches 11 run item modify $(src) dandelion:gold_craft/binding
$execute if score #rng trim_mat matches 11 if predicate dandelion:gold_second run item modify $(src) dandelion:gold_craft/second/unbreaking
tag @s add gold_crafted
