tag @s add iron_craft_pending
advancement revoke @s only dandelion:detect/craft_iron
schedule function dandelion:iron_craft/apply_scheduled 2t append
