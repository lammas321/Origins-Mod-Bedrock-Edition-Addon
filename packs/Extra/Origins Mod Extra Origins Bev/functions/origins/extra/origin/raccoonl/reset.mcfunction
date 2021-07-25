effect @s[scores={odw:day=0}] night_vision 0 1 true
effect @s[tag=origins:extra_raccoonl_claws] strength 0 1 true
effect @s[scores={odw:sprinting=1}] speed 0 1 true
event entity @s origins:hp_20
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_raccoonl 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_raccoonl_origin_selected