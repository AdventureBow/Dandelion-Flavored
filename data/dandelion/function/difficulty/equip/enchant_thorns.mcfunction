execute store result score #ench trim_mat run random value 1..10
$execute if score #ench trim_mat matches 1..5 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":1},add:true}
$execute if score #ench trim_mat matches 6..8 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":2},add:true}
$execute if score #ench trim_mat matches 9..10 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":3},add:true}
