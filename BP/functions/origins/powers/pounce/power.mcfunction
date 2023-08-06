tag @s[scores={pounce_cd=2}] remove origins:main.forward_launch20_blocks.velocity
scoreboard players remove @s[scores={pounce_cd=1..}] pounce_cd 1
give @s[scores={pounce_cd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={odw:sneaking=0,od:sneaking=1,pounce_cd=0}] origins:power1
give @s[scores={odw:sneaking=0,od:sneaking=1,pounce_cd=0}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_use,scores={pounce_cd=0}] ~~~ function origins/powers/pounce/activate_power
execute @s[scores={od:attacking=1,od:hold=100007,pounce_cd=0}] ~~~ function origins/powers/pounce/activate_power