effect @s[scores={odw:temp=10..}] slowness 0 1 true
effect @s[scores={odw:temp=..2}] speed 0 1 true
effect @s resistance 0 2 true
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_sheep 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_sheep_origin_selected