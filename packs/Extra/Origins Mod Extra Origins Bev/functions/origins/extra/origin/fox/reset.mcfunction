effect @s[scores={fox_ct=81}] invisibility 0 1 true
effect @s[tag=origins:extra_fox_nv] night_vision 0 1 true
effect @s speed 0 1 true
event entity @s origins:scale_1
event entity @s origins:family_normal
event entity @s origins:hp_20
effect @s[scores={odw:moving=1}] hunger 0 1 true
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_fox 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_fox_origin_selected