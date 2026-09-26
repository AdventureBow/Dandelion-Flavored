function dandelion:shulker_spawn/despawn
execute as @e[type=minecraft:enderman,tag=!shulker_checked] at @s unless dimension minecraft:the_end run function dandelion:shulker_spawn/roll
