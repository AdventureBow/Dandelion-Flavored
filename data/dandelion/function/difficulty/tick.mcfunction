# #world difficulty picks the armor set. Dragon and nether advancements still pick the stage.
# 0 and 1 are the light set. 2 is the current set. 3 and 4 are the heavy set.
execute if score #world difficulty matches 0 run return run function dandelion:difficulty/route_light
execute if score #world difficulty matches 1 run return run function dandelion:difficulty/route_light
execute if score #world difficulty matches 3 run return run function dandelion:difficulty/route_heavy
execute if score #world difficulty matches 4 run return run function dandelion:difficulty/route_heavy
execute if entity @a[advancements={minecraft:end/kill_dragon=true}] run return run function dandelion:difficulty/scan_master
execute if entity @a[advancements={minecraft:story/enter_the_nether=true}] run return run function dandelion:difficulty/scan_hard
function dandelion:difficulty/scan_deep
