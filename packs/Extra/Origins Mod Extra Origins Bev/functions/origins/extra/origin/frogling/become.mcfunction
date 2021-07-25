event entity @s origins:dmg_default
effect @s speed 2147483647 0 true
event entity @s origins:swim_speed_1.25
event entity @s origins:breath_air_long
event entity @s origins:hp_16
event entity @s origins:dmg_multiply_fire_2
scoreboard players add @e[type=origins:extra_origins] c_frogling 1
tag @s add origins:origin_selected
tag @s add origins:extra_frogling_origin_selected
tag @s remove origins:become_extra_frogling_origin