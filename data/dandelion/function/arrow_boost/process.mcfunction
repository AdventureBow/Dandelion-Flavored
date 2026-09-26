# @s = arrow / spectral_arrow not fully processed yet.
# Tick 1: wait (spawn tick Motion/Owner often invalid).
# Tick 2+: apply once, tag amethyst_arrow.

execute if entity @s[tag=!arrow_wait] run return run tag @s add arrow_wait

tag @s add amethyst_arrow

# --- Dispenser / ownerless (next to skeleton path below) ---
scoreboard players set #disp arrow_dmg 0
execute store success score #liv arrow_dmg on origin if entity @s
execute unless score #liv arrow_dmg matches 1 run scoreboard players set #disp arrow_dmg 1
execute unless data entity @s Owner run scoreboard players set #disp arrow_dmg 1
execute if score #disp arrow_dmg matches 1 run function dandelion:arrow_boost/dispenser
execute if score #disp arrow_dmg matches 1 run return fail

# --- Owned arrows: skeleton archers + amethyst ---
function dandelion:arrow_boost/owned
