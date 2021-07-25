effect @s jump_boost 0 9 true
event entity @s[tag=origins:extra_slime_small] origins:scale_1
event entity @s[tag=origins:extra_slime_small] origins:hp_20
tag @s remove origins:extra_slime_small
event entity @s origins:dmg_over_time_stop
effect @s[scores={odw:temp=10..}] slowness 0 1 true
effect @s[scores={odw:temp=..2}] slowness 0 1 true
effect @s[scores={odw:sprinting=1}] slowness 0 1 true
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_slime 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_slime_origin_selected