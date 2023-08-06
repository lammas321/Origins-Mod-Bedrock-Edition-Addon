scoreboard players remove @s[scores={webbing_cd=1..}] webbing_cd 1
give @s[scores={webbing_cd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={odw:sneaking=0,od:sneaking=1,webbing_cd=0}] origins:power1
give @s[scores={odw:sneaking=0,od:sneaking=1,webbing_cd=0}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_hit,scores={webbing_cd=0}] ~~~ function origins/powers/webbing/activate_power