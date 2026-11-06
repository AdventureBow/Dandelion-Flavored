tag @s remove will_trim
execute if entity @s[tag=trim_master] if predicate dandelion:rarity/common run tag @s add will_trim
execute if entity @s[tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/half if predicate dandelion:rarity/rare run tag @s add will_trim
execute if entity @s[tag=trim_heavy] if predicate dandelion:rarity/common run tag @s add will_trim
execute if entity @s[tag=no_trim] run tag @s remove will_trim
execute if entity @s[tag=will_trim] run function dandelion:difficulty/trim/prepare

execute if predicate dandelion:rarity/common run item replace entity @s armor.head with minecraft:chainmail_helmet
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.head minecraft:chainmail_helmet run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:chainmail_helmet"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:chainmail_helmet"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.head minecraft:chainmail_helmet run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:chainmail_helmet"}

execute if entity @s[tag=trim_master] if predicate dandelion:rarity/common run item replace entity @s armor.chest with minecraft:chainmail_chestplate
execute if entity @s[tag=!trim_master] if predicate dandelion:rarity/half run item replace entity @s armor.chest with minecraft:chainmail_chestplate
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.chest minecraft:chainmail_chestplate run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:chainmail_chestplate"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:chainmail_chestplate"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.chest minecraft:chainmail_chestplate run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:chainmail_chestplate"}

execute if entity @s[tag=trim_master] if predicate dandelion:rarity/half run item replace entity @s armor.legs with minecraft:chainmail_leggings
execute if entity @s[tag=!trim_master] if predicate dandelion:rarity/rare run item replace entity @s armor.legs with minecraft:chainmail_leggings
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.legs minecraft:chainmail_leggings run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:chainmail_leggings"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/rare run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:chainmail_leggings"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.legs minecraft:chainmail_leggings run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:chainmail_leggings"}

execute if entity @s[tag=trim_master] if predicate dandelion:rarity/common run item replace entity @s armor.feet with minecraft:chainmail_boots
execute if entity @s[tag=!trim_master] if predicate dandelion:rarity/half run item replace entity @s armor.feet with minecraft:chainmail_boots
execute if entity @s[tag=will_trim,tag=trim_master] if items entity @s armor.feet minecraft:chainmail_boots run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:chainmail_boots"}
execute if entity @s[tag=will_trim,tag=!trim_master,tag=!trim_heavy] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:chainmail_boots"}
execute if entity @s[tag=will_trim,tag=trim_heavy] if items entity @s armor.feet minecraft:chainmail_boots run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:chainmail_boots"}

