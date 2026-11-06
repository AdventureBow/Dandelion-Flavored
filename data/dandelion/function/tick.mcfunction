function dandelion:unbreakable_eye/tick
function dandelion:respawn/tick

execute as @a[tag=hardcore_respawn] unless data entity @s {Health:0.0f} run function dandelion:respawn/hardcore_alive

execute as @a[tag=gold_trim_active] run function dandelion:trim_effects/gold/tool_check
execute as @a if predicate dandelion:trim_effects/emerald/any run function dandelion:trim_effects/emerald/tick
execute as @a if predicate dandelion:trim_effects/resin/any run function dandelion:trim_effects/resin/tick

function dandelion:netherite_fr/tick
function dandelion:gold_craft/tick_items
function dandelion:iron_craft/tick_items
function dandelion:arrow_boost/tick
execute as @a at @s as @e[type=item,distance=..2.5] if items entity @s contents #dandelion:effect_foods unless items entity @s contents *[minecraft:custom_data~{dandelion:{edible:1}}] run function dandelion:edible/stamp_ground
execute as @a at @s as @e[type=experience_orb,tag=!lapis_xp_orb,distance=..5] at @s run function dandelion:trim_effects/lapis/boost_orb

scoreboard players add #global tick_mod 1
execute if score #global tick_mod matches 10.. run function dandelion:slow_tick
execute as @e[type=#dandelion:wears_animal_armor] if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:1}}]] run function dandelion:enchant/depth_strider
execute as @e[type=#dandelion:wears_animal_armor,tag=depth_on] unless items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:depth_strider",levels:{min:1}}]] run function dandelion:enchant/depth_strider_clear
execute as @e[tag=frost_slip] run function dandelion:enchant/frost_slip_clear
execute as @e[type=#dandelion:wears_animal_armor] if items entity @s armor.body *[minecraft:enchantments~[{enchantments:"minecraft:frost_walker",levels:{min:1}}]] at @s run function dandelion:enchant/frost_walk
