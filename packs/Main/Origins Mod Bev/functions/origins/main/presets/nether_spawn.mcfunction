tag @s[tag=origins:nether_spawn1,scores={od:dim=0}] add origins:nether_spawn2
tag @s remove origins:nether_spawn1
execute @s[tag=origins:nether_spawn2] ~~~ fill 1 0 1 3 3 3 bedrock 0 hollow
execute @s[tag=origins:nether_spawn2] ~~~ setblock 2 1 2 portal
tp @s[tag=origins:nether_spawn2] 2 1 2
execute @s[tag=origins:nether_spawn2] ~~~ detect ~~~ portal -1 tag @s add origins:nether_spawn3
tag @s[tag=origins:nether_spawn3] remove origins:nether_spawn2
execute @s[tag=origins:nether_spawn3,scores={od:dim=1}] ~~~ detect ~~-1~ obsidian 0 tag @s add origins:nether_spawn4
tag @s[tag=origins:nether_spawn4] remove origins:nether_spawn3
execute @s[tag=origins:nether_spawn4] ~~~ fill ~-2~~-2 ~2~3~2 air 0 replace obsidian
execute @s[tag=origins:nether_spawn4] ~~~ fill ~-2~-1~-2 ~2~-1~2 netherrack 0 replace obsidian
execute @s[tag=origins:nether_spawn4] ~~~ spawnpoint
tag @s remove origins:nether_spawn4