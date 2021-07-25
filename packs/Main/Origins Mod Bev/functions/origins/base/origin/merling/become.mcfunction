event entity @s origins:dmg_default
event entity @s "origins:detect_(underwater)()"
effect @s[scores={od:underwater=1}] night_vision 2147483647 0 true
effect @s[scores={od:underwater=1}] haste 2147483647 4 true
event entity @s origins:swim_speed_1.5
event entity @s origins:breath_water
effect @s water_breathing 30 0 true
scoreboard players add @e[type=origins:base_origins] c_merling 1
tag @s add origins:origin_selected
tag @s add origins:base_merling_origin_selected
tag @s remove origins:become_base_merling_origin