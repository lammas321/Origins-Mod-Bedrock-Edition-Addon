clear @s origins:power1
effect @s[tag=origins:base_phantom_state] invisibility 0 1 true
effect @s[tag=origins:base_phantom_state] hunger 0 2 true
event entity @s origins:daylight_burns_stop
event entity @s origins:dmg_over_time_stop
event entity @s origins:hp_20
tag @s remove origins:base_phantom_state
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:base_origins] c_phantom 1
tag @s remove origins:origin_selected
tag @s remove origins:base_phantom_origin_selected