execute if block ~ ~ ~ minecraft:sugar_cane run return run function dandelion:bonemeal/column {block:"minecraft:sugar_cane"}
execute if block ~ ~ ~ minecraft:cactus run return run function dandelion:bonemeal/column {block:"minecraft:cactus"}
execute if block ~ ~ ~ minecraft:nether_wart run return run function dandelion:bonemeal/nether_wart
execute if block ~ ~ ~ minecraft:chorus_flower run return run function dandelion:bonemeal/chorus
execute if block ~ ~ ~ minecraft:chorus_plant run return run function dandelion:bonemeal/chorus
execute if block ~ ~ ~ minecraft:vine run return run function dandelion:bonemeal/vine
execute if block ~ ~ ~ minecraft:lily_pad run return run function dandelion:bonemeal/lily
execute if block ~ ~ ~ #minecraft:small_flowers unless block ~ ~ ~ minecraft:wither_rose run return run function dandelion:bonemeal/spread_flower
execute if block ~ ~ ~ minecraft:mycelium run return run function dandelion:bonemeal/mycelium
execute if block ~ ~ ~ minecraft:pumpkin_stem run return run function dandelion:bonemeal/stem {fruit:"minecraft:pumpkin",stem:"minecraft:attached_pumpkin_stem"}
execute if block ~ ~ ~ minecraft:melon_stem run return run function dandelion:bonemeal/stem {fruit:"minecraft:melon",stem:"minecraft:attached_melon_stem"}
return fail
