# Vanilla hardcore just respawned this player as a spectator. Put them back in survival.
# The spot picker teleports on a later tick, after the chunk is loaded.
gamemode survival @s
function dandelion:health/set_max_hp
tag @s remove hardcore_respawn
execute if score @s base_hp matches ..2 run function dandelion:difficulty/hardcore_instant_off
