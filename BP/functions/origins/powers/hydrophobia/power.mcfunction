execute @s[tag=!origins:power_hydrophobia,scores={od:water=1}] ~~~ function origins/powers/hydrophobia/activate_power
execute @s[tag=!origins:power_hydrophobia,scores={od:rain=1}] ~~~ function origins/powers/hydrophobia/activate_power
execute @s[tag=!origins:power_hydrophobia2,scores={od:underwater=1}] ~~~ function origins/powers/hydrophobia/activate_power2
execute @s[tag=!origins:power_hydrophobia3,scores={od:hold=426,od:using=1}] ~~~ function origins/powers/hydrophobia/activate_power3
execute @s[tag=origins:power_hydrophobia,tag=!origins:power_hydrophobia2,scores={od:water=0,od:rain=0}] ~~~ function origins/powers/hydrophobia/deactivate_power
execute @s[tag=origins:power_hydrophobia2,tag=!origins:power_hydrophobia3,scores={od:underwater=0}] ~~~ function origins/powers/hydrophobia/deactivate_power
execute @s[tag=origins:power_hydrophobia3,scores={odw:hold=426,odw:using=1,od:using=0}] ~~~ function origins/powers/hydrophobia/deactivate_power
effect @s[scores={od:splashed=1}] instant_damage 1 0 true