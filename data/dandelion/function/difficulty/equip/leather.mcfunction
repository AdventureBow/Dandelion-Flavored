tag @s remove will_trim
execute if entity @s[tag=!no_trim] if predicate dandelion:rarity/half if predicate dandelion:rarity/rare run tag @s add will_trim
execute if entity @s[tag=will_trim] run function dandelion:difficulty/trim/prepare

execute if predicate dandelion:rarity/common run item replace entity @s armor.head with minecraft:leather_helmet
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:leather_helmet"}

execute if predicate dandelion:rarity/half run item replace entity @s armor.chest with minecraft:leather_chestplate
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:leather_chestplate"}

execute if predicate dandelion:rarity/rare run item replace entity @s armor.legs with minecraft:leather_leggings
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/rare run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:leather_leggings"}

execute if predicate dandelion:rarity/half run item replace entity @s armor.feet with minecraft:leather_boots
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:leather_boots"}
