tag @s[scores={odw:sneaking=0,od:sneaking=1,od:hold=307}] add origins:power_shiv_has
clear @s[scores={odw:sneaking=0,od:sneaking=1},tag=!origins:power_shiv_has] iron_sword
give @s[scores={odw:sneaking=0,od:sneaking=1},tag=!origins:power_shiv_has] iron_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
tag @s[scores={odw:sneaking=0,od:sneaking=1},tag=origins:power_shiv_has] remove origins:power_shiv_has