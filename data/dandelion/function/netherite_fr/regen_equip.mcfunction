scoreboard players set @s netherite_regen_dur 0
execute store result score @s netherite_regen_dur run data get entity @s active_effects[{id:"minecraft:regeneration"}].duration
execute unless score @s netherite_regen_dur matches 1.. run scoreboard players set @s netherite_regen_dur 0

effect give @s minecraft:regeneration infinite 3 true
tag @s add netherite_regen
