effect @s[scores={odw:moving=1}] jump_boost 0 2 true
effect @s[scores={odw:moving=1}] speed 0 1 true
effect @s[tag=origins:extra_rabbit_wasdigging] haste 0 1 true
event entity @s origins:hp_20
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_rabbit 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_rabbit_origin_selected