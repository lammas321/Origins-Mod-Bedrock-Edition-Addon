scoreboard players remove @s[scores={shootstar_cd=1..}] shootstar_cd 1
give @s[scores={shootstar_cd=1}] origins:power2 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={shootstar_cd=0,odw:sneaking=0,od:sneaking=1}] origins:power2
give @s[scores={shootstar_cd=0,odw:sneaking=0,od:sneaking=1}] origins:power2 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power2_use,scores={shootstar_cd=0}] ~~~ function origins/powers/shooting_star/activate_power