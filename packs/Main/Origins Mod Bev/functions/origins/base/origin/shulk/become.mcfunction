event entity @s origins:dmg_default
effect @s resistance 2147483647 1 true
effect @s haste 2147483647 0 true
scoreboard players add @e[type=origins:base_origins] c_shulk 1
tag @s add origins:origin_selected
tag @s add origins:base_shulk_origin_selected
tag @s remove origins:become_base_shulk_origin