tag @s remove will_trim
execute if predicate dandelion:rarity/common run tag @s add will_trim
execute if entity @s[tag=will_trim] run function dandelion:difficulty/trim/prepare

execute if predicate dandelion:rarity/half run item replace entity @s armor.head with minecraft:netherite_helmet
execute if entity @s[tag=will_trim] if items entity @s armor.head minecraft:netherite_helmet run function dandelion:difficulty/trim/maybe {slot:"armor.head",item:"minecraft:netherite_helmet"}

execute if predicate dandelion:rarity/rare run item replace entity @s armor.chest with minecraft:netherite_chestplate
execute if entity @s[tag=will_trim] if items entity @s armor.chest minecraft:netherite_chestplate run function dandelion:difficulty/trim/maybe {slot:"armor.chest",item:"minecraft:netherite_chestplate"}

execute if predicate dandelion:rarity/half run item replace entity @s armor.legs with minecraft:netherite_leggings
execute if entity @s[tag=will_trim] if items entity @s armor.legs minecraft:netherite_leggings run function dandelion:difficulty/trim/maybe {slot:"armor.legs",item:"minecraft:netherite_leggings"}

execute if predicate dandelion:rarity/half run item replace entity @s armor.feet with minecraft:netherite_boots
execute if entity @s[tag=will_trim] if items entity @s armor.feet minecraft:netherite_boots run function dandelion:difficulty/trim/maybe {slot:"armor.feet",item:"minecraft:netherite_boots"}
