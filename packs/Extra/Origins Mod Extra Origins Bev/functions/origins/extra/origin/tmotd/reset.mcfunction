clear @s trident
effect @s[scores={odw:underwater=1}] strength 0 1 true
effect @s[scores={odw:underwater=1}] haste 0 5 true
clear @s origins:power1
event entity @s origins:breath_air
effect @s[scores={odw:rain=1}] water_breathing 0 1 true
effect @s[scores={odw:water=0}] slowness 0 2 true
event entity @s origins:swim_speed_1
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_tmotd 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_tmotd_origin_selected