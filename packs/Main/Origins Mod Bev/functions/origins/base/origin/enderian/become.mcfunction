event entity @s origins:dmg_default
scoreboard objectives add enderian_tpcd dummy
scoreboard players set @s enderian_tpcd 0
give @s origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
event entity @s origins:hp_24
event entity @s origins:scale_1.25
event entity @s origins:col_0.48_1.8
tag @s remove origins:col_0.6_1.8
tag @s add origins:col_0.48_1.8
scoreboard players add @e[type=origins:base_origins] c_enderian 1
tag @s add origins:origin_selected
tag @s add origins:base_enderian_origin_selected
tag @s remove origins:become_base_enderian_origin