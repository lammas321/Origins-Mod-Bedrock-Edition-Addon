effect @s[scores={bee_bwcd=601..1200}] slow_falling 0 1 true
effect @s[scores={odw:rain=1}] slowness 0 2 true
effect @s[scores={odw:water=1}] slowness 0 2 true
effect @s[scores={odw:rain=1}] weakness 0 2 true
effect @s[scores={odw:water=1}] weakness 0 2 true
event entity @s origins:scale_1
event entity @s origins:hp_20
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_bee 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_bee_origin_selected