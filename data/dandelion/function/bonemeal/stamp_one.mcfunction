$execute if items entity @s $(slot) minecraft:bone_meal unless items entity @s $(slot) *[minecraft:custom_data~{dandelion:{bonemeal:1}}] run item modify entity @s $(slot) dandelion:bonemeal_stamp
