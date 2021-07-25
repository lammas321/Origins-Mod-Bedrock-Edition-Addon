ride @s stop_riding
effect @s fire_resistance 0 1 true
event entity @s origins:family_normal
effect @s[scores={odw:lava=0}] slowness 0 1 true
event entity @s origins:dmg_over_time_stop
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_strider 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_strider_origin_selected