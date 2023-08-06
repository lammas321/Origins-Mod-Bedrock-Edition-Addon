scoreboard players remove @s[scores={bee_wings_cd=1..}] bee_wings_cd 1
clear @s[scores={odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
effect @s[tag=origins:power1_use,scores={bee_wings_cd=0}] slow_falling 2147483647 0 true
scoreboard players set @s[tag=origins:power1_use,scores={bee_wings_cd=0}] bee_wings_cd 1200
effect @s[tag=!origins:power_i_bee_wet,scores={od:rain=0,od:water=0,od:jumping=1,bee_wings_cd=601..1200}] levitation 1 1 true
effect @s[tag=!origins:power_i_bee_wet,scores={od:rain=0,od:water=0,odw:moving=0,od:moving=1,bee_wings_cd=601..1200}] slow_falling 2147483647 0 true
effect @s[scores={bee_wings_cd=600}] levitation 0 2 true
effect @s[scores={bee_wings_cd=600}] slow_falling 0 1 true
effect @s[tag=origins:power_i_bee_wet] levitation 0 2 true
effect @s[tag=origins:power_i_bee_wet] slow_falling 0 1 true