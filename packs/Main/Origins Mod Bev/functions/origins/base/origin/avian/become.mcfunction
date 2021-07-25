event entity @s origins:dmg_default
effect @s slow_falling 2147483647 0 true
effect @s speed 2147483647 0 true
scoreboard players add @e[type=origins:base_origins] c_avian 1
tag @s add origins:origin_selected
tag @s add origins:base_avian_origin_selected
tag @s remove origins:become_base_avian_origin