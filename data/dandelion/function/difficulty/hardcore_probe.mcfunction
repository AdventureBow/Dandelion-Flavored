# Hard and hardcore both report 3. On hardcore, asking for normal leaves the world on hard.
difficulty normal
execute store result score #read difficulty run difficulty
execute if score #read difficulty matches 3 run scoreboard players set #world difficulty 4
execute if score #read difficulty matches 2 run scoreboard players set #world difficulty 3
execute if score #read difficulty matches 2 run difficulty hard
scoreboard players set #checked difficulty 1
