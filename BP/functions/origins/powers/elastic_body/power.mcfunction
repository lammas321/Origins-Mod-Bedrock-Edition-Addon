scoreboard players remove @s[scores={elastic_cd=1..}] elastic_cd 1
effect @s[tag=!origins:power_split_up,scores={odw:moving=0,od:moving=1,odw:alive=1,od:alive=1}] jump_boost 2147483647 2 true
give @s[scores={elastic_cd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={odw:sneaking=0,od:sneaking=1,elastic_cd=0}] origins:power1
give @s[scores={odw:sneaking=0,od:sneaking=1,elastic_cd=0}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_use,scores={elastic_cd=0}] ~~~ function origins/powers/elastic_body/activate_power