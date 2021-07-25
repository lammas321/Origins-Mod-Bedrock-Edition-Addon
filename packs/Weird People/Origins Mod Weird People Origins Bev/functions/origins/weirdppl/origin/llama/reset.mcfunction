event entity @s origins:rideable_normal
clear @s origins:power1
effect @s[scores={odw:sprinting=1}] speed 0 2 true
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:weirdppl_origins] c_llama 1
tag @s remove origins:origin_selected
tag @s remove origins:weirdppl_llama_origin_selected