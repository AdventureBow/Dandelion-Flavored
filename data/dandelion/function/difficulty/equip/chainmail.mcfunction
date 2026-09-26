tag @s remove will_trim
execute if predicate dandelion:rarity/half if predicate dandelion:rarity/rare run tag @s add will_trim
execute if entity @s[tag=will_trim] run function dandelion:difficulty/trim/prepare

execute if predicate dandelion:rarity/common run item replace entity @s armor.head with minecraft:chainmail_helmet
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:chainmail_helmet"}

execute if predicate dandelion:rarity/half run item replace entity @s armor.chest with minecraft:chainmail_chestplate
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:chainmail_chestplate"}

execute if predicate dandelion:rarity/rare run item replace entity @s armor.legs with minecraft:chainmail_leggings
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/rare run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:chainmail_leggings"}

execute if predicate dandelion:rarity/half run item replace entity @s armor.feet with minecraft:chainmail_boots
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:chainmail_boots"}

