tag @s[scores={duck_bpcd=2}] remove origins:main.launch15_blocks.velocity
scoreboard players remove @s[scores={duck_bpcd=1..}] duck_bpcd 1
execute @s[scores={duck_bpcd=599}] ~~~ summon tnt ~~-0.25~
give @s[scores={duck_bpcd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={duck_bpcd=0,odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={duck_bpcd=0,odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_use,scores={duck_bpcd=0}] ~~~ function origins/powers/boom_poo/activate_power