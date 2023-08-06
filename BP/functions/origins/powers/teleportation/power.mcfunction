scoreboard players remove @s[scores={teleport_cd=1..}] teleport_cd 1
give @s[scores={teleport_cd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={teleport_cd=0,odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={teleport_cd=0,odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_use,scores={teleport_cd=0}] ~~~ function origins/powers/teleportation/activate_power
tag @e[type=origins:custom_ender_pearl_lands,r=2,c=1] add origins:used
execute @e[type=origins:custom_ender_pearl_lands,tag=origins:used] ~~~ effect @p instant_health 1 0 true
execute @e[type=origins:custom_ender_pearl_lands,tag=origins:used] ~~~ effect @p regeneration 1 2 true
execute @e[type=origins:custom_ender_pearl_lands,tag=origins:used] ~~~ tp ~ -100~
kill @e[type=origins:custom_ender_pearl_lands,tag=origins:used]