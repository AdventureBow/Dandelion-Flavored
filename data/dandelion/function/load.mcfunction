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

scoreboard objectives add tick_mod dummy
scoreboard players set #global tick_mod 0

scoreboard objectives add shulker_idle dummy
scoreboard objectives add eye_timer dummy
scoreboard objectives add netherite_total dummy
scoreboard objectives add netherite_fr_dur dummy
scoreboard objectives add netherite_regen_dur dummy

execute as @a run tag @s remove await_respawn_place
execute as @a run tag @s remove respawn_delay
execute as @a run tag @s remove respawn_chunk_wait
execute as @a run tag @s remove respawn_unload_wait
execute as @a run scoreboard players reset @s respawn_wait
execute as @a run scoreboard players reset @s respawn_unload
execute as @a run tag @s remove inv_rearm
execute as @a run advancement revoke @s only dandelion:detect/inventory_changed
