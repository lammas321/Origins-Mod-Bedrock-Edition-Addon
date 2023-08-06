event entity @s origins:morph_reset
effect @s invisibility 3 0 true
effect @s night_vision 0 1 true
clear @s origins:power2
effect @s[scores={odw:sprinting=1}] speed 0 1 true
tag @s remove origins:power_bloodthirsty
event entity @s origins:health_10
clear @s origins:power1
tag @s remove origins:power_full_moon_transformed