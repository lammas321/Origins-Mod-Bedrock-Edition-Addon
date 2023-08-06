execute @s[tag=!origins:power_i_bee_wet,scores={od:water=1}] ~~~ function origins/powers/i_bee_wet/activate_power
execute @s[tag=!origins:power_i_bee_wet,scores={od:rain=1}] ~~~ function origins/powers/i_bee_wet/activate_power
execute @s[tag=origins:power_i_bee_wet,scores={odw:moving=0,od:moving=1}] ~~~ function origins/powers/i_bee_wet/activate_power
execute @s[tag=origins:power_i_bee_wet,scores={od:water=0,od:rain=0}] ~~~ function origins/powers/i_bee_wet/deactivate_power