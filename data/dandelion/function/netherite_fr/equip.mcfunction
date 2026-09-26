scoreboard players set @s netherite_fr_dur 0
execute store result score @s netherite_fr_dur run data get entity @s active_effects[{id:"minecraft:fire_resistance"}].duration
execute unless score @s netherite_fr_dur matches 1.. run scoreboard players set @s netherite_fr_dur 0

effect give @s minecraft:fire_resistance infinite 0 true
tag @s add netherite_fr
