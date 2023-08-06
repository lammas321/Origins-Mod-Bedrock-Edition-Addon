tag @s[scores={odw:sneaking=0,od:sneaking=1,od:hold=299}] add origins:power_arson_tendencies_has
clear @s[scores={odw:sneaking=0,od:sneaking=1},tag=!origins:power_arson_tendencies_has] flint_and_steel
give @s[scores={odw:sneaking=0,od:sneaking=1},tag=!origins:power_arson_tendencies_has] flint_and_steel 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
tag @s[scores={odw:sneaking=0,od:sneaking=1},tag=origins:power_arson_tendencies_has] remove origins:power_arson_tendencies_has