effect @s[scores={odw:sprinting=1}] jump_boost 0 1 true
event entity @s origins:family_normal
effect @s[scores={odw:day=1}] mining_fatigue 0 1 true
effect @s[scores={odw:day=0}] speed 0 1 true
effect @s[tag=origins:base_feline_nv] night_vision 0 1 true
event entity @s origins:hp_20
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:base_origins] c_feline 1
tag @s remove origins:origin_selected
tag @s remove origins:base_feline_origin_selected