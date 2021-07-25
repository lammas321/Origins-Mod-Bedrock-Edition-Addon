effect @s fire_resistance 0 1 true
event entity @s origins:dmg_over_time_stop
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:base_origins] c_blazeborn 1
tag @s remove origins:origin_selected
tag @s remove origins:base_blazeborn_origin_selected