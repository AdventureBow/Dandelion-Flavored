tag @s remove will_trim
execute if predicate dandelion:rarity/half if predicate dandelion:rarity/half run tag @s add will_trim
execute if entity @s[tag=will_trim] run function dandelion:difficulty/trim/prepare

execute if predicate dandelion:rarity/half run item replace entity @s armor.head with minecraft:iron_helmet
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:iron_helmet"}

execute if predicate dandelion:rarity/rare run item replace entity @s armor.chest with minecraft:iron_chestplate
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:iron_chestplate"}

execute if predicate dandelion:rarity/rare run item replace entity @s armor.legs with minecraft:iron_leggings
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:iron_leggings"}

execute if predicate dandelion:rarity/half run item replace entity @s armor.feet with minecraft:iron_boots
execute if entity @s[tag=will_trim] if predicate dandelion:rarity/half run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:iron_boots"}

