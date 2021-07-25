clear @s origins:power2
effect @s[scores={odw:day=0,odw:underground=0}] regeneration 0 2 true
effect @s[scores={odw:day=0,odw:underground=0}] speed 0 1 true
effect @s[scores={odw:day=0,odw:underground=0}] jump_boost 0 4 true
effect @s[scores={odw:day=0,odw:underground=0,odw:sneaking=0}] slow_falling 0 1 true
clear @s origins:power1
effect @s[scores={odw:day=1}] slowness 0 1 true
effect @s[scores={odw:underground=1}] slowness 0 1 true
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_starborne 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_starborne_origin_selected