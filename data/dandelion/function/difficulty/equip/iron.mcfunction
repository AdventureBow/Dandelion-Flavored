tag @s remove will_trim
execute if entity @s[tag=trim_master] if predicate dandelion:rarity/common run tag @s add will_trim
execute if entity @s[tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/half if predicate dandelion:rarity/half run tag @s add will_trim
execute if entity @s[tag=trim_heavy] if predicate dandelion:rarity/common run tag @s add will_trim
execute if entity @s[tag=no_trim] run tag @s remove will_trim
execute if entity @s[tag=will_trim] run function dandelion:difficulty/trim/prepare

execute if entity @s[tag=trim_master] if predicate dandelion:rarity/common run item replace entity @s armor.head with minecraft:iron_helmet
execute if entity @s[tag=!trim_master] if predicate dandelion:rarity/half run item replace entity @s armor.head with minecraft:iron_helmet
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.head minecraft:iron_helmet run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:iron_helmet"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:iron_helmet"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.head minecraft:iron_helmet run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:iron_helmet"}

execute if entity @s[tag=trim_master] if predicate dandelion:rarity/half run item replace entity @s armor.chest with minecraft:iron_chestplate
execute if entity @s[tag=!trim_master] if predicate dandelion:rarity/rare run item replace entity @s armor.chest with minecraft:iron_chestplate
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.chest minecraft:iron_chestplate run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:iron_chestplate"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:iron_chestplate"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.chest minecraft:iron_chestplate run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:iron_chestplate"}

execute if entity @s[tag=trim_master] if predicate dandelion:rarity/half run item replace entity @s armor.legs with minecraft:iron_leggings
execute if entity @s[tag=!trim_master] if predicate dandelion:rarity/rare run item replace entity @s armor.legs with minecraft:iron_leggings
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.legs minecraft:iron_leggings run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:iron_leggings"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:iron_leggings"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.legs minecraft:iron_leggings run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:iron_leggings"}

execute if entity @s[tag=trim_master] if predicate dandelion:rarity/common run item replace entity @s armor.feet with minecraft:iron_boots
execute if entity @s[tag=!trim_master] if predicate dandelion:rarity/half run item replace entity @s armor.feet with minecraft:iron_boots
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.feet minecraft:iron_boots run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:iron_boots"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:iron_boots"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.feet minecraft:iron_boots run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:iron_boots"}

