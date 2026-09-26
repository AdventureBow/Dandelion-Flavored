execute as @e[type=minecraft:eye_of_ender,tag=!unbreakable] at @s run function dandelion:unbreakable_eye/arm
execute as @e[type=minecraft:eye_of_ender,tag=unbreakable,scores={eye_timer=1..}] run scoreboard players remove @s eye_timer 1
execute as @e[type=minecraft:eye_of_ender,tag=unbreakable,scores={eye_timer=0}] at @s run function dandelion:unbreakable_eye/recover
