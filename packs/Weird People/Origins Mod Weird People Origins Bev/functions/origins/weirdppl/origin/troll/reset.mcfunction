clear @s flint_and_steel
effect @s[scores={odw:sprinting=1}] speed 0 3 true
effect @s[scores={odw:sprinting=1}] hunger 0 1 true
event entity @s origins:family_normal
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:weirdppl_origins] c_troll 1
tag @s remove origins:origin_selected
tag @s remove origins:weirdppl_troll_origin_selected