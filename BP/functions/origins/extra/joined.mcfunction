tellraw @s[tag=origins:debug] {"rawtext":[{"text":"Origins Debug: origins/extra/joined"}]}
tag @s add origins:initialize
execute @e[type=origins:origin_group_extra] ~~~ tag @a[tag=origins:initialize] remove origins:initialize
execute @s[tag=origins:initialize] ~~~ function origins/extra/initialize
execute @e[type=origins:origin_group_extra,scores={origin:extra_ver=1000000}] ~~~ function origins/extra/update/v1.0.0
execute @e[type=origins:origin_group_extra,scores={origin:extra_ver=1000001}] ~~~ function origins/extra/update/v1.0.1
execute @e[type=origins:origin_group_extra,scores={origin:extra_ver=1000002}] ~~~ function origins/extra/update/v1.0.2
execute @e[type=origins:origin_group_extra,scores={origin:extra_ver=1000003}] ~~~ function origins/extra/update/v1.0.3
execute @e[type=origins:origin_group_extra,scores={origin:extra_ver=1000004}] ~~~ function origins/extra/update/v1.0.4
execute @e[type=origins:origin_group_extra,scores={origin:extra_ver=1000005}] ~~~ function origins/extra/update/v1.0.5
execute @e[type=origins:origin_group_extra,scores={origin:extra_ver=1000006}] ~~~ function origins/extra/update/v1.0.6
execute @e[type=origins:origin_group_extra,scores={origin:extra_ver=1000007}] ~~~ function origins/extra/update/v1.0.7
scoreboard players add @s origin:extra_ver 0
execute @s[scores={origin:extra_ver=0}] ~~~ function origins/extra/initialize_player
execute @s[scores={origin:extra_ver=1000000}] ~~~ function origins/extra/update_player/v1.0.0
execute @s[scores={origin:extra_ver=1000001}] ~~~ function origins/extra/update_player/v1.0.1
execute @s[scores={origin:extra_ver=1000002}] ~~~ function origins/extra/update_player/v1.0.2
execute @s[scores={origin:extra_ver=1000003}] ~~~ function origins/extra/update_player/v1.0.3
execute @s[scores={origin:extra_ver=1000004}] ~~~ function origins/extra/update_player/v1.0.4
execute @s[scores={origin:extra_ver=1000005}] ~~~ function origins/extra/update_player/v1.0.5
execute @s[scores={origin:extra_ver=1000006}] ~~~ function origins/extra/update_player/v1.0.6
execute @s[scores={origin:extra_ver=1000007}] ~~~ function origins/extra/update_player/v1.0.7