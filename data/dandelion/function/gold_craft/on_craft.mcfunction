tag @s add gold_craft_pending
advancement revoke @s only dandelion:detect/craft_gold
schedule function dandelion:gold_craft/apply_scheduled 2t append
