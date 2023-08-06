scoreboard players operation @e[type=origins:extra_inventory] origin:playerid -= @s origin:playerid
scoreboard players set @s dummy_value 0
scoreboard players set @e[type=origins:extra_inventory,scores={origin:playerid=0}] dummy_value 1
scoreboard players operation @s dummy_value += @e[type=origins:extra_inventory,scores={origin:playerid=0}] dummy_value
execute @s[scores={dummy_value=0}] ~~~ summon origins:extra_inventory
execute @s[scores={dummy_value=0}] ~~~ scoreboard players set @e[type=origins:extra_inventory,r=1,c=1] origin:playerid 0
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:extra_inventory,scores={origin:playerid=0}]
tag @s[scores={od:moving=0,od:sneaking=1}] add origins:power_extra_inventory_using
execute @s[tag=origins:power_extra_inventory_using] ~~~ detect ~-0.3~-0.1~-0.3 portal -1 tag @s remove origins:power_extra_inventory_using
execute @s[tag=origins:power_extra_inventory_using] ~~~ detect ~0.3~-0.1~-0.3 portal -1 tag @s remove origins:power_extra_inventory_using
execute @s[tag=origins:power_extra_inventory_using] ~~~ detect ~-0.3~-0.1~0.3 portal -1 tag @s remove origins:power_extra_inventory_using
execute @s[tag=origins:power_extra_inventory_using] ~~~ detect ~0.3~-0.1~0.3 portal -1 tag @s remove origins:power_extra_inventory_using
execute @s[tag=origins:power_extra_inventory_using] ~~~ detect ~-0.3~0.2~-0.3 portal -1 tag @s remove origins:power_extra_inventory_using
execute @s[tag=origins:power_extra_inventory_using] ~~~ detect ~0.3~0.2~-0.3 portal -1 tag @s remove origins:power_extra_inventory_using
execute @s[tag=origins:power_extra_inventory_using] ~~~ detect ~-0.3~0.2~0.3 portal -1 tag @s remove origins:power_extra_inventory_using
execute @s[tag=origins:power_extra_inventory_using] ~~~ detect ~0.3~0.2~0.3 portal -1 tag @s remove origins:power_extra_inventory_using
execute @s[tag=origins:power_extra_inventory_using] ~~~ tp @e[type=origins:extra_inventory,scores={origin:playerid=0}] ~~0.1~
execute @s[tag=!origins:power_extra_inventory_using] ~~~ tp @e[type=origins:extra_inventory,scores={origin:playerid=0}] 0 -63 0
execute @s[tag=origins:power_extra_inventory_using,tag=origins:power_extra_inventory_5slots] ~~~ execute @e[type=origins:extra_inventory,scores={origin:playerid=0}] ~~~ function origins/powers/extra_inventory/power_5slots
execute @s[tag=origins:power_extra_inventory_using,tag=origins:power_extra_inventory_9slots] ~~~ execute @e[type=origins:extra_inventory,scores={origin:playerid=0}] ~~~ function origins/powers/extra_inventory/power_9slots
tag @s[tag=origins:power_extra_inventory_using] remove origins:power_extra_inventory_using
scoreboard players operation @e[type=origins:extra_inventory] origin:playerid += @s origin:playerid