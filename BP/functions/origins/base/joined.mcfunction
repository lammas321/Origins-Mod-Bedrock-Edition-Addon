tellraw @s[tag=origins:debug] {"rawtext":[{"text":"Origins Debug: origins/base/joined"}]}
tag @s add origins:initialize
execute @e[type=origins:origin_group_base] ~~~ tag @a[tag=origins:initialize] remove origins:initialize
execute @s[tag=origins:initialize] ~~~ function origins/base/initialize
execute @e[type=origins:origin_group_base,scores={origin:base_ver=1003000}] ~~~ function origins/base/update/v1.3.0
execute @e[type=origins:origin_group_base,scores={origin:base_ver=1003001}] ~~~ function origins/base/update/v1.3.1
execute @e[type=origins:origin_group_base,scores={origin:base_ver=1003002}] ~~~ function origins/base/update/v1.3.2
execute @e[type=origins:origin_group_base,scores={origin:base_ver=1003003}] ~~~ function origins/base/update/v1.3.3
execute @e[type=origins:origin_group_base,scores={origin:base_ver=1003004}] ~~~ function origins/base/update/v1.3.4
execute @e[type=origins:origin_group_base,scores={origin:base_ver=1003005}] ~~~ function origins/base/update/v1.3.5
execute @e[type=origins:origin_group_base,scores={origin:base_ver=1003006}] ~~~ function origins/base/update/v1.3.6
execute @e[type=origins:origin_group_base,scores={origin:base_ver=1003007}] ~~~ function origins/base/update/v1.3.7
execute @e[type=origins:origin_group_base,scores={origin:base_ver=1003008}] ~~~ function origins/base/update/v1.3.8
scoreboard players add @s origin:base_ver 0
execute @s[scores={origin:base_ver=0}] ~~~ function origins/base/initialize_player
execute @s[scores={origin:base_ver=1003000}] ~~~ function origins/base/update_player/v1.3.0
execute @s[scores={origin:base_ver=1003001}] ~~~ function origins/base/update_player/v1.3.1
execute @s[scores={origin:base_ver=1003002}] ~~~ function origins/base/update_player/v1.3.2
execute @s[scores={origin:base_ver=1003003}] ~~~ function origins/base/update_player/v1.3.3
execute @s[scores={origin:base_ver=1003004}] ~~~ function origins/base/update_player/v1.3.4
execute @s[scores={origin:base_ver=1003005}] ~~~ function origins/base/update_player/v1.3.5
execute @s[scores={origin:base_ver=1003006}] ~~~ function origins/base/update_player/v1.3.6
execute @s[scores={origin:base_ver=1003007}] ~~~ function origins/base/update_player/v1.3.7
execute @s[scores={origin:base_ver=1003008}] ~~~ function origins/base/update_player/v1.3.8