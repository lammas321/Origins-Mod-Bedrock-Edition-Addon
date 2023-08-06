scoreboard players operation @e[type=origins:extra_inventory] origin:playerid -= @s origin:playerid
execute @s[tag=origins:power_extra_inventory_5slots] ~~~ execute @e[type=origins:extra_inventory,scores={origin:playerid=0}] ~~~ function origins/powers/extra_inventory/reset_5slots
execute @s[tag=origins:power_extra_inventory_9slots] ~~~ execute @e[type=origins:extra_inventory,scores={origin:playerid=0}] ~~~ function origins/powers/extra_inventory/reset_9slots
execute @s[scores={od:dim=0}] ~~~ tp @e[type=origins:extra_inventory,scores={origin:playerid=0}] 0 -63 0
scoreboard players operation @e[type=origins:extra_inventory] origin:playerid += @s origin:playerid
tag @s remove origins:power_extra_inventory_5slots
tag @s remove origins:power_extra_inventory_9slots