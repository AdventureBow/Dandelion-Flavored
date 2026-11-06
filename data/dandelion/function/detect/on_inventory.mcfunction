function dandelion:inventory/pass
tag @s add inv_rearm
schedule function dandelion:detect/revoke_inventory 2t append
