clear @s[scores={odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
tag @s[tag=origins:power1_use,tag=!origins:power_phantom_form_active] add origins:power_phantom_form_was_inactive
execute @s[tag=origins:power1_use,tag=!origins:power_phantom_form_active] ~~~ function origins/powers/phantom_form/activate_power
execute @s[tag=origins:power1_use,tag=origins:power_phantom_form_active,tag=!origins:power_phantom_form_was_inactive] ~~~ function origins/powers/phantom_form/deactivate_power
tag @s[tag=origins:power_phantom_form_was_inactive] remove origins:power_phantom_form_was_inactive
execute @s[tag=origins:power_phantom_form_active] ~~~ function origins/powers/phantom_form/power_active