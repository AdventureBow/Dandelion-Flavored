# Amethyst trim: +0.5 damage per piece.

execute store result score #dmg arrow_dmg run data get entity @s damage 100
scoreboard players set #write arrow_dmg 0

scoreboard players set #am arrow_dmg 0
execute on origin if predicate dandelion:trim_effects/amethyst/head run scoreboard players add #am arrow_dmg 1
execute on origin if predicate dandelion:trim_effects/amethyst/chest run scoreboard players add #am arrow_dmg 1
execute on origin if predicate dandelion:trim_effects/amethyst/legs run scoreboard players add #am arrow_dmg 1
execute on origin if predicate dandelion:trim_effects/amethyst/feet run scoreboard players add #am arrow_dmg 1

execute if score #am arrow_dmg matches 1.. run scoreboard players set #bonus arrow_dmg 50
execute if score #am arrow_dmg matches 1.. run scoreboard players operation #bonus arrow_dmg *= #am arrow_dmg
execute if score #am arrow_dmg matches 1.. run scoreboard players operation #dmg arrow_dmg += #bonus arrow_dmg
execute if score #am arrow_dmg matches 1.. run scoreboard players set #write arrow_dmg 1

execute if score #write arrow_dmg matches 1 store result entity @s damage double 0.01 run scoreboard players get #dmg arrow_dmg
