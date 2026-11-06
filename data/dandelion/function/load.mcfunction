gamerule keep_inventory true

scoreboard objectives add base_hp dummy

scoreboard objectives add copper_trim dummy
scoreboard objectives add lapis_trim dummy
scoreboard objectives add emerald_trim dummy
scoreboard objectives add resin_trim dummy
scoreboard objectives add trim_mat dummy

scoreboard objectives add death_x dummy
scoreboard objectives add death_y dummy
scoreboard objectives add death_z dummy
scoreboard objectives add respawn_sx dummy
scoreboard objectives add respawn_sy dummy
scoreboard objectives add respawn_sz dummy
scoreboard objectives add respawn_attempts dummy
scoreboard objectives add respawn_dx dummy
scoreboard objectives add respawn_dz dummy
scoreboard objectives add respawn_d2 dummy
scoreboard objectives add respawn_t dummy
scoreboard objectives add respawn_tx dummy
scoreboard objectives add respawn_tz dummy
scoreboard objectives add respawn_wait dummy
scoreboard objectives add respawn_unload dummy

scoreboard objectives add arrow_dmg dummy

scoreboard objectives add difficulty dummy "Difficulty"
scoreboard objectives add tick_mod dummy
scoreboard objectives add bonemeal_cd dummy
scoreboard players set #global tick_mod 0

scoreboard objectives add shulker_idle dummy
scoreboard objectives add eye_timer dummy
scoreboard objectives add netherite_total dummy
scoreboard objectives add netherite_fr_dur dummy
scoreboard objectives add netherite_regen_dur dummy
scoreboard objectives add frost_x dummy
scoreboard objectives add frost_y dummy
scoreboard objectives add frost_z dummy

execute as @a[tag=respawn_armed,tag=respawn_had_bed] unless data entity @s {Health:0.0f} run function dandelion:respawn/restore_bed
execute as @a[tag=respawn_armed] unless data entity @s {Health:0.0f} run function dandelion:respawn/unload_candidate
execute as @a[tag=respawn_armed] unless data entity @s {Health:0.0f} run tag @s remove respawn_armed
execute as @a[tag=!respawn_armed] run tag @s remove respawn_had_bed
execute as @a[tag=respawn_chunk_wait] run function dandelion:respawn/unload_candidate
execute as @a[tag=respawn_probe_now] run function dandelion:respawn/unload_candidate
execute as @a[tag=respawn_unload_wait] run function dandelion:respawn/unload_candidate
execute as @a run tag @s remove await_respawn_place
execute as @a run tag @s remove respawn_delay
execute as @a run tag @s remove respawn_probe_now
execute as @a run tag @s remove respawn_chunk_wait
execute as @a run tag @s remove respawn_unload_wait
execute as @a run scoreboard players reset @s respawn_wait
execute as @a run scoreboard players reset @s respawn_unload
execute as @a run tag @s remove inv_rearm
execute as @a run advancement revoke @s only dandelion:detect/inventory_changed
execute as @a run function dandelion:inventory/pass
function dandelion:difficulty/world
