execute if entity @s[type=#minecraft:can_wear_nautilus_armor,tag=!depth_legacy] run attribute @s minecraft:movement_speed modifier remove dandelion:depth_strider_nautilus
execute if entity @s[type=#minecraft:can_wear_nautilus_armor] run tag @s add depth_legacy
execute unless predicate dandelion:in_water if entity @s[tag=depth_on] run return run function dandelion:enchant/depth_strider_clear
execute unless predicate dandelion:in_water run return 0
execute if entity @s[type=#minecraft:can_wear_nautilus_armor,tag=!depth_swim] run function dandelion:enchant/depth_strider_clear
execute if entity @s[tag=depth_l1] unless items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:1,max:1}}]] run function dandelion:enchant/depth_strider_clear
execute if entity @s[tag=depth_l2] unless items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:2,max:2}}]] run function dandelion:enchant/depth_strider_clear
execute if entity @s[tag=depth_l3] unless items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:3,max:3}}]] run function dandelion:enchant/depth_strider_clear
execute if entity @s[tag=depth_l1] run return 0
execute if entity @s[tag=depth_l2] run return 0
execute if entity @s[tag=depth_l3] run return 0
function dandelion:enchant/depth_strider_apply
