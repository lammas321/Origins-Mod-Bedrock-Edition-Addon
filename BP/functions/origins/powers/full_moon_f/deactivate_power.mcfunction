event entity @s origins:morph_reset
clear @s origins:power1
effect @s[scores={odw:sprinting=1}] speed 0 2 true
tag @s remove origins:power_bloodthirsty
event entity @s origins:health_10
title @s actionbar a
tag @s remove origins:power_full_moon_transformed