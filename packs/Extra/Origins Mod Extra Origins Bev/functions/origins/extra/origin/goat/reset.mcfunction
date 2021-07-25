effect @s[scores={odw:sprinting=1}] strength 0 1 true
effect @s[scores={odw:sprinting=1}] jump_boost 0 2 true
effect @s[scores={odw:temp=10..}] slowness 0 1 true
event entity @s origins:hp_20
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_goat 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_goat_origin_selected