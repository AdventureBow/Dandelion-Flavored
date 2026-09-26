execute as @e[type=minecraft:item,distance=..16] if items entity @s contents #dandelion:golden_equipment unless items entity @s contents *[minecraft:custom_data~{dandelion:{gold_craft:1}}] at @s run function dandelion:gold_craft/if_adjacent_crafter
execute as @e[type=minecraft:hopper_minecart,distance=..16] at @s run function dandelion:gold_craft/try_minecart
execute at @s run function dandelion:gold_craft/scan_hoppers
advancement revoke @s only dandelion:detect/crafter_gold
