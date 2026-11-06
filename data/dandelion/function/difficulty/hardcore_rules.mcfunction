# #instant difficulty remembers the last immediate_respawn write.
# A hardcore death that still has hearts must keep instant respawn until vanilla finishes.
execute if entity @a[tag=hardcore_respawn] run scoreboard players set #want difficulty 1
execute unless entity @a[tag=hardcore_respawn] if entity @a[scores={base_hp=..2}] run scoreboard players set #want difficulty 0
execute unless entity @a[tag=hardcore_respawn] unless entity @a[scores={base_hp=..2}] run scoreboard players set #want difficulty 1
execute if score #want difficulty = #instant difficulty run return fail
execute if score #want difficulty matches 1 run function dandelion:difficulty/hardcore_instant_on
execute if score #want difficulty matches 0 run function dandelion:difficulty/hardcore_instant_off
