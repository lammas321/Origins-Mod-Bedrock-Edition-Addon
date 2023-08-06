tag @s[tag=origins:death_prevented] add origins:power_split_up
tag @s[tag=origins:death_prevented] remove origins:prevent_death
event entity @s[tag=origins:death_prevented] origins:scale_0.5
event entity @s[tag=origins:death_prevented] origins:health_5
effect @s[tag=origins:death_prevented] jump_boost 0 3 true
tag @s[tag=origins:death_prevented] remove origins:death_prevented
tag @s[scores={odw:alive=0,od:alive=1}] remove origins:power_split_up
tag @s[scores={odw:alive=0,od:alive=1}] add origins:prevent_death
event entity @s[scores={odw:alive=0,od:alive=1}] origins:scale_1
event entity @s[scores={odw:alive=0,od:alive=1}] origins:health_10