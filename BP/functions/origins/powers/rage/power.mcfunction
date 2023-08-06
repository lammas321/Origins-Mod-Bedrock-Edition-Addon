scoreboard players remove @s[scores={rage_cd=1..}] rage_cd 1
give @s[scores={rage_cd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={rage_cd=0,odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={rage_cd=0,odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_use,scores={rage_cd=0}] ~~~ function origins/powers/rage/activate_power