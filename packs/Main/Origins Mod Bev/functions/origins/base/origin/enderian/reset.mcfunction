clear @s origins:power1
event entity @s origins:hp_20
effect @s speed 0 1 true
event entity @s origins:scale_1
event entity @s origins:col_0.6_1.8
tag @s remove origins:col_0.48_1.8
tag @s add origins:col_0.6_1.8
event entity @s origins:dmg_over_time_stop
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:base_origins] c_enderian 1
tag @s remove origins:origin_selected
tag @s remove origins:base_enderian_origin_selected