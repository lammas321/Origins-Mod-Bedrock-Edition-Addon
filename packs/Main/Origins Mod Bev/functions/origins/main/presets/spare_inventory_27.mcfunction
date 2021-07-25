scoreboard players operation @e[type=origins:spare_inventory] origin_playerid -= @s origin_playerid
scoreboard players set @s dummy_value 0
scoreboard players set @e[type=origins:spare_inventory,scores={origin_playerid=0}] dummy_value 1
scoreboard players operation @s dummy_value += @e[type=origins:spare_inventory,scores={origin_playerid=0}] dummy_value
execute @s[scores={dummy_value=0}] ~~~ summon origins:spare_inventory ~~~ origins:slots_27
execute @s[scores={dummy_value=0}] ~~~ scoreboard players set @e[type=origins:spare_inventory,r=1,c=1] origin_playerid 0
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:spare_inventory,scores={origin_playerid=0}]
event entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] origins:slots_27
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 0 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 1 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 2 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 3 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 5 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 6 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 7 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 8 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 9 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 10 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 11 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 15 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 16 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 17 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 18 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 19 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 20 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 21 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 23 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 24 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 25 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_5,scores={origin_playerid=0}] slot.inventory 26 air
event entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] origins:slots_27
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 0 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 1 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 2 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 6 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 7 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 8 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 9 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 10 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 11 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 15 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 16 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 17 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 18 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 19 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 20 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 24 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 25 air
replaceitem entity @e[type=origins:spare_inventory,family=slots_9,scores={origin_playerid=0}] slot.inventory 26 air
tag @s[scores={odw:moving=0,od:moving=1}] remove origins:using_spare_inventory
tag @s[scores={od:sneaking=1,od:dim=0}] add origins:using_spare_inventory
execute @s ~~~ detect ~-0.3~-0.1~-0.3 portal -1 tag @s remove origins:using_spare_inventory
execute @s ~~~ detect ~0.3~-0.1~-0.3 portal -1 tag @s remove origins:using_spare_inventory
execute @s ~~~ detect ~-0.3~-0.1~0.3 portal -1 tag @s remove origins:using_spare_inventory
execute @s ~~~ detect ~0.3~-0.1~0.3 portal -1 tag @s remove origins:using_spare_inventory
execute @s ~~~ detect ~-0.3~0.2~-0.3 portal -1 tag @s remove origins:using_spare_inventory
execute @s ~~~ detect ~0.3~0.2~-0.3 portal -1 tag @s remove origins:using_spare_inventory
execute @s ~~~ detect ~-0.3~0.2~0.3 portal -1 tag @s remove origins:using_spare_inventory
execute @s ~~~ detect ~0.3~0.2~0.3 portal -1 tag @s remove origins:using_spare_inventory
tag @s[scores={od:dim=1..2}] remove origins:using_spare_inventory
execute @s[tag=origins:using_spare_inventory] ~~~ tag @e[type=origins:spare_inventory,scores={origin_playerid=0}] add origins:used
execute @s[tag=origins:using_spare_inventory] ~~~ tp @e[type=origins:spare_inventory,scores={origin_playerid=0}] ~~~
scoreboard players operation @e[type=origins:spare_inventory] origin_playerid += @s origin_playerid