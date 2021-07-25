event entity @s origins:dmg_default
give @s iron_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
scoreboard objectives add duck_bpcd dummy
scoreboard players set @s duck_bpcd 0
event entity @s origins:swim_speed_1.5
event entity @s origins:scale_0.5
event entity @s origins:hp_14
event entity @s origins:family_terrorist
scoreboard players add @e[type=origins:weirdppl_origins] c_duck 1
tag @s add origins:origin_selected
tag @s add origins:weirdppl_duck_origin_selected
tag @s remove origins:become_weirdppl_duck_origin