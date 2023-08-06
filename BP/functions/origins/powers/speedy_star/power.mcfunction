tag @s[scores={speedystar_cd=2}] remove origins:main.forward_launch30_blocks.velocity
scoreboard players remove @s[scores={speedystar_cd=1..}] speedystar_cd 1
give @s[scores={speedystar_cd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={odw:sneaking=0,od:sneaking=1,speedystar_cd=0}] origins:power1
give @s[scores={odw:sneaking=0,od:sneaking=1,speedystar_cd=0}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_use,scores={speedystar_cd=0,od:on_ground=1,od:water=0,od:sneaking=0}] ~~~ function origins/powers/speedy_star/activate_power