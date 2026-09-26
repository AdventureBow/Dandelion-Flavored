function dandelion:unbreakable_eye/tick
function dandelion:respawn/tick

execute as @a[tag=respawn_delay] run function dandelion:respawn/try_place
execute as @a[tag=await_respawn_place] unless data entity @s {Health:0.0f} run tag @s add respawn_delay
execute as @a[tag=await_respawn_place] unless data entity @s {Health:0.0f} run tag @s remove await_respawn_place

execute as @a[tag=gold_trim_active] run function dandelion:trim_effects/gold/tool_check
execute as @a if predicate dandelion:trim_effects/emerald/any run function dandelion:trim_effects/emerald/tick
execute as @a if predicate dandelion:trim_effects/resin/any run function dandelion:trim_effects/resin/tick

function dandelion:netherite_fr/tick
function dandelion:gold_craft/tick_items
function dandelion:arrow_boost/tick
execute as @a at @s as @e[type=experience_orb,tag=!lapis_xp_orb,distance=..5] at @s run function dandelion:trim_effects/lapis/boost_orb

scoreboard players add #global tick_mod 1
execute if score #global tick_mod matches 10.. run function dandelion:slow_tick
