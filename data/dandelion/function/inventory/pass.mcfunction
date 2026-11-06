scoreboard players set #food trim_mat 0
scoreboard players set #meal trim_mat 0
execute if items entity @s container.* #dandelion:effect_foods run scoreboard players set #food trim_mat 1
execute if items entity @s hotbar.* #dandelion:effect_foods run scoreboard players set #food trim_mat 1
execute if items entity @s inventory.* #dandelion:effect_foods run scoreboard players set #food trim_mat 1
execute if items entity @s weapon.* #dandelion:effect_foods run scoreboard players set #food trim_mat 1
execute if items entity @s player.cursor #dandelion:effect_foods run scoreboard players set #food trim_mat 1
execute if items entity @s container.* minecraft:bone_meal run scoreboard players set #meal trim_mat 1
execute if items entity @s hotbar.* minecraft:bone_meal run scoreboard players set #meal trim_mat 1
execute if items entity @s inventory.* minecraft:bone_meal run scoreboard players set #meal trim_mat 1
execute if items entity @s weapon.* minecraft:bone_meal run scoreboard players set #meal trim_mat 1
execute if items entity @s player.cursor minecraft:bone_meal run scoreboard players set #meal trim_mat 1
data modify storage dandelion:stamp slot set value "container.0"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.1"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.2"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.3"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.4"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.5"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.6"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.7"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.8"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.9"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.10"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.11"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.12"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.13"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.14"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.15"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.16"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.17"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.18"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.19"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.20"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.21"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.22"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.23"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.24"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.25"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.26"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.27"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.28"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.29"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.30"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.31"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.32"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.33"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.34"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "container.35"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "weapon.offhand"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "weapon.mainhand"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "player.cursor"
function dandelion:inventory/slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "armor.head"
function dandelion:inventory/armor_slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "armor.chest"
function dandelion:inventory/armor_slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "armor.legs"
function dandelion:inventory/armor_slot with storage dandelion:stamp
data modify storage dandelion:stamp slot set value "armor.feet"
function dandelion:inventory/armor_slot with storage dandelion:stamp
