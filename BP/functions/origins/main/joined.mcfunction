tellraw @s[tag=origins:debug] {"rawtext":[{"text":"Origins Debug: origins/main/joined"}]}
tag @s add origins:just_joined
tag @s add origins:initialize
execute @e[type=origins:origins] ~~~ tag @a[tag=origins:initialize] remove origins:initialize
execute @s[tag=origins:initialize] ~~~ function origins/main/initialize
execute @e[type=origins:origins,scores={origin:main_ver=1003000}] ~~~ function origins/main/update/v1.3.0
execute @e[type=origins:origins,scores={origin:main_ver=1003001}] ~~~ function origins/main/update/v1.3.1
execute @e[type=origins:origins,scores={origin:main_ver=1003002}] ~~~ function origins/main/update/v1.3.2
execute @e[type=origins:origins,scores={origin:main_ver=1003003}] ~~~ function origins/main/update/v1.3.3
execute @e[type=origins:origins,scores={origin:main_ver=1003004}] ~~~ function origins/main/update/v1.3.4
execute @e[type=origins:origins,scores={origin:main_ver=1003005}] ~~~ function origins/main/update/v1.3.5
execute @e[type=origins:origins,scores={origin:main_ver=1003006}] ~~~ function origins/main/update/v1.3.6
execute @e[type=origins:origins,scores={origin:main_ver=1003007}] ~~~ function origins/main/update/v1.3.7
execute @e[type=origins:origins,scores={origin:main_ver=1003008}] ~~~ function origins/main/update/v1.3.8
scoreboard players add @s origin:playerid 0
execute @s[scores={origin:playerid=0}] ~~~ function origins/main/initialize_player
execute @s[scores={origin:main_ver=1003000}] ~~~ function origins/main/update_player/v1.3.0
execute @s[scores={origin:main_ver=1003001}] ~~~ function origins/main/update_player/v1.3.1
execute @s[scores={origin:main_ver=1003002}] ~~~ function origins/main/update_player/v1.3.2
execute @s[scores={origin:main_ver=1003003}] ~~~ function origins/main/update_player/v1.3.3
execute @s[scores={origin:main_ver=1003004}] ~~~ function origins/main/update_player/v1.3.4
execute @s[scores={origin:main_ver=1003005}] ~~~ function origins/main/update_player/v1.3.5
execute @s[scores={origin:main_ver=1003006}] ~~~ function origins/main/update_player/v1.3.6
execute @s[scores={origin:main_ver=1003007}] ~~~ function origins/main/update_player/v1.3.7
execute @s[scores={origin:main_ver=1003008}] ~~~ function origins/main/update_player/v1.3.8