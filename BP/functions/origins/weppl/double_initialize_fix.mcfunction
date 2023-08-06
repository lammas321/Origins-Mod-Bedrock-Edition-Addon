tag @s add origins:double_initialize_fixing
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_group_weppl] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_group_weppl]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_weppl_llama] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_weppl_llama]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_weppl_duck] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_weppl_duck]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_weppl_the_cute_one] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_weppl_the_cute_one]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_weppl_troll] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_weppl_troll]
tag @s remove origins:double_initialize_fixing