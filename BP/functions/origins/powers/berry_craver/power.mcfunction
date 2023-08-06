clear @s[tag=!origins:power_berry_craver_wait,scores={od:hold=287}] sweet_berries -1 1
give @s[tag=!origins:power_berry_craver_wait,scores={od:hold=287}] origins:modified_sweet_berries
tag @s[tag=origins:power_berry_craver_wait] add origins:power_berry_craver_waitend
tag @s[tag=origins:power_berry_craver_wait] remove origins:power_berry_craver_wait
tag @s[tag=!origins:power_berry_craver_waitend,scores={od:hold=287}] add origins:power_berry_craver_wait
tag @s[tag=origins:power_berry_craver_waitend] remove origins:power_berry_craver_waitend
effect @s[tag=origins:ate_sweet_berries] saturation 1 3 true