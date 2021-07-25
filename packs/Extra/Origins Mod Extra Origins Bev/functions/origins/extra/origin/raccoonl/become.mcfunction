event entity @s origins:dmg_default
effect @s[scores={od:day=0}] night_vision 2147483647 0 true
event entity @s origins:hp_16
scoreboard players add @e[type=origins:extra_origins] c_raccoonl 1
tag @s add origins:origin_selected
tag @s add origins:extra_raccoonl_origin_selected
tag @s remove origins:become_extra_raccoonl_origin