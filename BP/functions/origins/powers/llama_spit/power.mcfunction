scoreboard players remove @s[scores={llama_scd=1..}] llama_scd 1
give @s[scores={llama_scd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={llama_scd=0,odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={llama_scd=0,odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_use,scores={llama_scd=0}] ~~~ function origins/powers/llama_spit/activate_power