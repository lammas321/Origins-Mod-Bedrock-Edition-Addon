tag @s[scores={gotw_cd=2}] remove origins:main.gift_of_the_winds.velocity
scoreboard players remove @s[scores={gotw_cd=1..}] gotw_cd 1
give @s[scores={gotw_cd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={odw:sneaking=0,od:sneaking=1,gotw_cd=0}] origins:power1
give @s[scores={odw:sneaking=0,od:sneaking=1,gotw_cd=0}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_use,scores={gotw_cd=0}] ~~~ function origins/powers/gift_of_the_winds/activate_power