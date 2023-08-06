scoreboard players remove @s[scores={kamikaze_cd=1..}] kamikaze_cd 1
give @s[scores={kamikaze_cd=1}] origins:power2 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={odw:sneaking=0,od:sneaking=1,kamikaze_cd=0}] origins:power2
give @s[scores={odw:sneaking=0,od:sneaking=1,kamikaze_cd=0}] origins:power2 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power2_use,scores={kamikaze_cd=0}] ~~~ function origins/powers/kamikaze/activate_power