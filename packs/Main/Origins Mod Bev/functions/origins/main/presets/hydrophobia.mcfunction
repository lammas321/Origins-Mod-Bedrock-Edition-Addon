event entity @s[scores={odw:water=0,od:water=1}] origins:dmg_over_time_1
event entity @s[scores={odw:rain=0,od:rain=1}] origins:dmg_over_time_1
event entity @s[scores={od:hold=426,odw:using=0,od:using=1}] origins:dmg_over_time_0.05
event entity @s[scores={od:water=0,od:rain=0,od:using=0}] origins:dmg_over_time_stop
effect @s[scores={od:splashed=1}] instant_damage 1 0 true