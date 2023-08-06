tag @s[tag=origins:power_climbing_active,scores={odw:jumping=0,od:jumping=1,od:sneaking=1,od:water=0}] add origins:power_climbing_off
execute @s[scores={odw:jumping=0,od:jumping=1,od:sneaking=1,od:water=0}] ~~~ function origins/powers/climbing/activate_power
tag @s[tag=origins:power_climbing_off] remove origins:power_climbing_active
execute @s[tag=origins:power_climbing_off] ~~~ function origins/powers/climbing/deactivate_power
execute @s[tag=origins:power_climbing_active] ~~~ function origins/powers/climbing/power_active