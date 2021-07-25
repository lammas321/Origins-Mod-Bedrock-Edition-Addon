effect @s[scores={odw:underwater=1}] night_vision 0 1 true
effect @s[scores={odw:underwater=1}] haste 0 5 true
event entity @s origins:swim_speed_1
event entity @s origins:breath_air
effect @s[scores={odw:rain=1}] water_breathing 0 1 true
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:base_origins] c_merling 1
tag @s remove origins:origin_selected
tag @s remove origins:base_merling_origin_selected