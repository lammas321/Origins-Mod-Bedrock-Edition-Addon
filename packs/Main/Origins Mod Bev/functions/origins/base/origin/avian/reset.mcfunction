effect @s[scores={odw:sneaking=0}] slow_falling 0 1 true
effect @s speed 0 1 true
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:base_origins] c_avian 1
tag @s remove origins:origin_selected
tag @s remove origins:base_avian_origin_selected