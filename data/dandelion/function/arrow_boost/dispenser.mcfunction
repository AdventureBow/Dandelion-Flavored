# Ownerless (dispenser) arrows.
# Snap to one axis, Motion ×8 (get×1000, store×0.008), damage NBT ×0.6
# (get×100, store×0.006). Hit is ceil(speed × damage); crit extra is forced off.

execute store result score #mx arrow_dmg run data get entity @s Motion[0] 1000
execute store result score #my arrow_dmg run data get entity @s Motion[1] 1000
execute store result score #mz arrow_dmg run data get entity @s Motion[2] 1000

scoreboard players set #neg arrow_dmg -1
scoreboard players operation #ax arrow_dmg = #mx arrow_dmg
scoreboard players operation #ay arrow_dmg = #my arrow_dmg
scoreboard players operation #az arrow_dmg = #mz arrow_dmg
execute if score #ax arrow_dmg matches ..-1 run scoreboard players operation #ax arrow_dmg *= #neg arrow_dmg
execute if score #ay arrow_dmg matches ..-1 run scoreboard players operation #ay arrow_dmg *= #neg arrow_dmg
execute if score #az arrow_dmg matches ..-1 run scoreboard players operation #az arrow_dmg *= #neg arrow_dmg

scoreboard players set #axis arrow_dmg 0
execute if score #ax arrow_dmg >= #ay arrow_dmg if score #ax arrow_dmg >= #az arrow_dmg run scoreboard players set #axis arrow_dmg 1
execute if score #ay arrow_dmg > #ax arrow_dmg if score #ay arrow_dmg >= #az arrow_dmg run scoreboard players set #axis arrow_dmg 2
execute if score #az arrow_dmg > #ax arrow_dmg if score #az arrow_dmg > #ay arrow_dmg run scoreboard players set #axis arrow_dmg 3

execute if score #axis arrow_dmg matches 1 run data modify entity @s Motion[1] set value 0.0d
execute if score #axis arrow_dmg matches 1 run data modify entity @s Motion[2] set value 0.0d
execute if score #axis arrow_dmg matches 2 run data modify entity @s Motion[0] set value 0.0d
execute if score #axis arrow_dmg matches 2 run data modify entity @s Motion[2] set value 0.0d
execute if score #axis arrow_dmg matches 3 run data modify entity @s Motion[0] set value 0.0d
execute if score #axis arrow_dmg matches 3 run data modify entity @s Motion[1] set value 0.0d

execute store result entity @s Motion[0] double 0.008 run data get entity @s Motion[0] 1000
execute store result entity @s Motion[1] double 0.008 run data get entity @s Motion[1] 1000
execute store result entity @s Motion[2] double 0.008 run data get entity @s Motion[2] 1000

execute store result score #mx arrow_dmg run data get entity @s Motion[0] 1000
execute store result score #my arrow_dmg run data get entity @s Motion[1] 1000
execute store result score #mz arrow_dmg run data get entity @s Motion[2] 1000

execute if score #axis arrow_dmg matches 1 if score #mx arrow_dmg matches 1.. run data modify entity @s Rotation set value [90.0f, 0.0f]
execute if score #axis arrow_dmg matches 1 if score #mx arrow_dmg matches ..-1 run data modify entity @s Rotation set value [-90.0f, 0.0f]
execute if score #axis arrow_dmg matches 2 if score #my arrow_dmg matches 1.. run data modify entity @s Rotation set value [0.0f, 90.0f]
execute if score #axis arrow_dmg matches 2 if score #my arrow_dmg matches ..-1 run data modify entity @s Rotation set value [0.0f, -90.0f]
execute if score #axis arrow_dmg matches 3 if score #mz arrow_dmg matches 1.. run data modify entity @s Rotation set value [0.0f, 0.0f]
execute if score #axis arrow_dmg matches 3 if score #mz arrow_dmg matches ..-1 run data modify entity @s Rotation set value [180.0f, 0.0f]

execute store result entity @s damage double 0.006 run data get entity @s damage 100
data modify entity @s crit set value 0b

execute at @s run playsound minecraft:entity.firework_rocket.blast master @a[distance=..64] ~ ~ ~ 2 0.75
execute at @s run playsound minecraft:item.crossbow.shoot master @a[distance=..64] ~ ~ ~ 1.5 0.55
