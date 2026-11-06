tag @s remove will_trim
execute if entity @s[tag=trim_master] if predicate dandelion:rarity/common run tag @s add will_trim
execute if entity @s[tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/rare if predicate dandelion:rarity/rare run tag @s add will_trim
execute if entity @s[tag=trim_heavy] if predicate dandelion:rarity/common run tag @s add will_trim
execute if entity @s[tag=no_trim] run tag @s remove will_trim
execute if entity @s[tag=will_trim] run function dandelion:difficulty/trim/prepare

execute if predicate dandelion:rarity/common run item replace entity @s armor.head with minecraft:golden_helmet
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.head minecraft:golden_helmet run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:golden_helmet"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/common run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:golden_helmet"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.head minecraft:golden_helmet run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:golden_helmet"}

execute if entity @s[tag=trim_master] if predicate dandelion:rarity/common run item replace entity @s armor.chest with minecraft:golden_chestplate
execute if entity @s[tag=!trim_master] if predicate dandelion:rarity/half run item replace entity @s armor.chest with minecraft:golden_chestplate
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.chest minecraft:golden_chestplate run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:golden_chestplate"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:golden_chestplate"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.chest minecraft:golden_chestplate run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:golden_chestplate"}

execute if entity @s[tag=trim_master] if predicate dandelion:rarity/common run item replace entity @s armor.legs with minecraft:golden_leggings
execute if entity @s[tag=!trim_master] if predicate dandelion:rarity/half run item replace entity @s armor.legs with minecraft:golden_leggings
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.legs minecraft:golden_leggings run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:golden_leggings"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/common run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:golden_leggings"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.legs minecraft:golden_leggings run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:golden_leggings"}

execute if predicate dandelion:rarity/common run item replace entity @s armor.feet with minecraft:golden_boots
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.feet minecraft:golden_boots run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:golden_boots"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/common run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:golden_boots"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.feet minecraft:golden_boots run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:golden_boots"}

