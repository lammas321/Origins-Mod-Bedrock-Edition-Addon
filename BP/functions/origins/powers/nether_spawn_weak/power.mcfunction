tag @s[tag=origins:power_nether_spawn1,scores={od:dim=0}] add origins:power_nether_spawn2
tag @s[tag=origins:power_nether_spawn1] remove origins:power_nether_spawn1
execute @s[tag=origins:power_nether_spawn2] ~~~ fill 1 -64 1 3 -61 3 bedrock 0 hollow
execute @s[tag=origins:power_nether_spawn2] ~~~ setblock 2 -63 2 portal
tp @s[tag=origins:power_nether_spawn2] 2 -63 2
execute @s[tag=origins:power_nether_spawn2] ~~~ detect ~~~ portal -1 tag @s add origins:power_nether_spawn3
tag @s[tag=origins:power_nether_spawn3] remove origins:power_nether_spawn2
execute @s[tag=origins:power_nether_spawn3,scores={od:dim=1}] ~~~ detect ~~-1~ obsidian 0 tag @s add origins:power_nether_spawn4
tag @s[tag=origins:power_nether_spawn4] remove origins:power_nether_spawn3
execute @s[tag=origins:power_nether_spawn4] ~~~ fill ~-1~~-1 ~1~2~1 air 0 replace portal
execute @s[tag=origins:power_nether_spawn4] ~~~ fill ~-2~~-2 ~2~3~2 air 0 replace obsidian
execute @s[tag=origins:power_nether_spawn4] ~~~ fill ~-2~-1~-2 ~2~-1~2 netherrack 0 replace obsidian
execute @s[tag=origins:power_nether_spawn4] ~~~ spawnpoint
tag @s remove origins:power_nether_spawn4
effect @s[scores={odw:dim=1..,od:dim=0}] weakness 2147483647 0 true
effect @s[scores={odw:attacking=0,od:attacking=1,od:dim=0}] weakness 2147483647 0 true
effect @s[scores={odw:dim=0,od:dim=1..}] weakness 0 1 true