$execute if items entity @s $(slot) $(item) unless items entity @s $(slot) *[minecraft:custom_data~{dandelion:{edible:1}}] run item modify entity @s $(slot) $(modifier)
