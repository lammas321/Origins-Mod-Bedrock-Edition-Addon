event entity @s origins:dmg_default
effect @s fire_resistance 2147483647 0 true
event entity @s origins:dmg_immunity_magma
event entity @s "origins:detect_(lava)()"
tag @s add origins:nether_spawn1
scoreboard players add @e[type=origins:base_origins] c_blazeborn 1
tag @s add origins:origin_selected
tag @s add origins:base_blazeborn_origin_selected
tag @s remove origins:become_base_blazeborn_origin