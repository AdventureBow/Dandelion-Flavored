scoreboard players set @s netherite_total 0

execute if items entity @s armor.head minecraft:netherite_helmet run scoreboard players add @s netherite_total 1
execute if items entity @s armor.chest minecraft:netherite_chestplate run scoreboard players add @s netherite_total 1
execute if items entity @s armor.legs minecraft:netherite_leggings run scoreboard players add @s netherite_total 1
execute if items entity @s armor.feet minecraft:netherite_boots run scoreboard players add @s netherite_total 1

execute if items entity @s armor.head *[minecraft:trim~{material:"minecraft:netherite"}] run scoreboard players add @s netherite_total 1
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:netherite"}] run scoreboard players add @s netherite_total 1
execute if items entity @s armor.legs *[minecraft:trim~{material:"minecraft:netherite"}] run scoreboard players add @s netherite_total 1
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:netherite"}] run scoreboard players add @s netherite_total 1

execute if score @s netherite_total matches 4.. if entity @s[tag=!netherite_fr] run function dandelion:netherite_fr/equip
execute if score @s netherite_total matches 4.. if entity @s[tag=netherite_fr] run effect give @s minecraft:fire_resistance infinite 0 true
execute if score @s netherite_total matches ..3 if entity @s[tag=netherite_fr] run function dandelion:netherite_fr/unequip

execute if score @s netherite_total matches 8 at @s if function dandelion:netherite_fr/in_heat if entity @s[tag=!netherite_regen] run function dandelion:netherite_fr/regen_equip
execute if entity @s[tag=netherite_regen] unless score @s netherite_total matches 8 run function dandelion:netherite_fr/regen_unequip
execute if entity @s[tag=netherite_regen] at @s unless function dandelion:netherite_fr/in_heat run function dandelion:netherite_fr/regen_unequip
