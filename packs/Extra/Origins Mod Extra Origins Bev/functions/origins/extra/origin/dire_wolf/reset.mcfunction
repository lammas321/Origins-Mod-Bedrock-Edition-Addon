effect @s strength 0 1 true
event entity @s origins:hp_20
effect @s[scores={odw:day=1}] night_vision 0 1 true
effect @s[scores={odw:day=1}] speed 0 1 true
event entity @s origins:scale_1
effect @s[scores={odw:moving=1}] hunger 0 1 true
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_dire_wolf 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_dire_wolf_origin_selected