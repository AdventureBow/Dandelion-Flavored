# First tick after the death. Tick functions run before that tick's respawn packet.
function dandelion:respawn/pick_spot
execute if entity @s[tag=respawn_probe_now] run function dandelion:respawn/probe
