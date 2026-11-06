# Vanilla world difficulty on #world: 0 peaceful, 1 easy, 2 normal, 3 hard, 4 hardcore.
# /difficulty with no arguments returns that id. The tick source hides its chat message.
execute store result score #read difficulty run difficulty
execute unless score #read difficulty matches 3 run scoreboard players operation #world difficulty = #read difficulty
execute unless score #read difficulty matches 3 run scoreboard players set #checked difficulty 0
execute if score #read difficulty matches 3 unless score #checked difficulty matches 1 run function dandelion:difficulty/hardcore_probe
execute if score #world difficulty matches 4 run function dandelion:difficulty/hardcore_rules
execute unless score #world difficulty matches 4 unless score #instant difficulty matches 0 run function dandelion:difficulty/hardcore_instant_off
