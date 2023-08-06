tellraw @s[tag=origins:debug] {"rawtext":[{"text":"Origins Debug: origins/weppl/joined"}]}
tag @s add origins:initialize
execute @e[type=origins:origin_group_weppl] ~~~ tag @a[tag=origins:initialize] remove origins:initialize
execute @s[tag=origins:initialize] ~~~ function origins/weppl/initialize
execute @e[type=origins:origin_group_weppl,scores={origin:weppl_ver=1000000}] ~~~ function origins/weppl/update/v1.0.0
execute @e[type=origins:origin_group_weppl,scores={origin:weppl_ver=1000001}] ~~~ function origins/weppl/update/v1.0.1
execute @e[type=origins:origin_group_weppl,scores={origin:weppl_ver=1000002}] ~~~ function origins/weppl/update/v1.0.2
scoreboard players add @s origin:weppl_ver 0
execute @s[scores={origin:weppl_ver=0}] ~~~ function origins/weppl/initialize_player
execute @s[scores={origin:weppl_ver=1000000}] ~~~ function origins/weppl/update_player/v1.0.0
execute @s[scores={origin:weppl_ver=1000001}] ~~~ function origins/weppl/update_player/v1.0.1
execute @s[scores={origin:weppl_ver=1000002}] ~~~ function origins/weppl/update_player/v1.0.2