effect @s speed 0 1 true
event entity @s origins:swim_speed_1
event entity @s origins:breath_air
event entity @s origins:hp_20
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_frogling 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_frogling_origin_selected