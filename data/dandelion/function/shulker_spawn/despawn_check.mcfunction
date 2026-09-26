execute if data entity @s {PersistenceRequired:1b} run return fail
execute if data entity @s CustomName run return fail

execute unless entity @a[distance=..128] run return run function dandelion:shulker_spawn/despawn_one

execute if entity @a[distance=..32] run scoreboard players set @s shulker_idle 0
execute if entity @a[distance=..32] run return fail

scoreboard players add @s shulker_idle 1
execute if score @s shulker_idle matches 60.. if predicate dandelion:soft_despawn run function dandelion:shulker_spawn/despawn_one
