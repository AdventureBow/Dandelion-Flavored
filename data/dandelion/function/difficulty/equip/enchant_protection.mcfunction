execute store result score #ench trim_mat run random value 1..8
$execute if score #ench trim_mat matches 1 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:protection":1},add:true}
$execute if score #ench trim_mat matches 2 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:protection":2},add:true}
$execute if score #ench trim_mat matches 3 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_protection":1},add:true}
$execute if score #ench trim_mat matches 4 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_protection":2},add:true}
$execute if score #ench trim_mat matches 5 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:blast_protection":1},add:true}
$execute if score #ench trim_mat matches 6 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:blast_protection":2},add:true}
$execute if score #ench trim_mat matches 7 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:projectile_protection":1},add:true}
$execute if score #ench trim_mat matches 8 run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"minecraft:projectile_protection":2},add:true}
