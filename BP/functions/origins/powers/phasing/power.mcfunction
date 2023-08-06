execute @s[scores={odw:sneaking=1,od:sneaking=0}] ~~~ function origins/powers/phasing/deactivate_power
execute @s[scores={odw:sneaking=0,od:sneaking=1}] ~~~ function origins/powers/phasing/activate_power_sneak
execute @s[tag=!origins:power_phasing_crouch_started,scores={od:attacking=1,od:hold=100007}] ~~~ function origins/powers/phasing/activate_power
execute @s[tag=origins:power_phasing_crouch_started] ~~~ function origins/powers/phasing/power_active