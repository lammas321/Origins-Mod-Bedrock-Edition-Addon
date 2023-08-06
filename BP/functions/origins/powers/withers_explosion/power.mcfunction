scoreboard players remove @s[scores={wither_cd=1..}] wither_cd 1
give @s[scores={wither_cd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={odw:sneaking=0,od:sneaking=1,wither_cd=0}] origins:power1
give @s[scores={odw:sneaking=0,od:sneaking=1,wither_cd=0}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_use,scores={wither_cd=0}] ~~~ function origins/powers/withers_explosion/activate_power
execute @s[scores={odw:alive=1,od:alive=0,od:sneaking=0,wither_cd=0}] ~~~ function origins/powers/withers_explosion/activate_power