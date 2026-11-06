# One-shot speed/HP tuning. Always on. Batch for perf.
# Arrow damage (skeleton +2, amethyst, dispenser) runs every tick in arrow_boost/tick.
execute as @e[type=#dandelion:zombies_tuned,tag=!mob_tuned,limit=30] run function dandelion:mob_stats/zombie
execute if entity @a[advancements={minecraft:end/kill_dragon=true}] as @e[type=#dandelion:zombies_tuned,tag=mob_tuned,tag=!zombie_hp20,limit=30] run function dandelion:mob_stats/zombie_hp20
execute as @e[type=minecraft:cave_spider,tag=!mob_tuned,limit=30] run function dandelion:mob_stats/cave_spider
execute as @e[type=#dandelion:skeleton_archers,tag=!mob_tuned,limit=30] run function dandelion:mob_stats/skeleton
execute as @e[type=minecraft:enderman,tag=!mob_tuned,limit=30] run function dandelion:mob_stats/enderman
execute as @e[type=minecraft:ender_dragon,tag=!mob_tuned,limit=4] run function dandelion:mob_stats/ender_dragon
execute as @e[type=minecraft:wither,tag=!mob_tuned,limit=8] run function dandelion:mob_stats/wither
