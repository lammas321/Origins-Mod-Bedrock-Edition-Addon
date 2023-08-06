tag @s add origins:double_initialize_fixing
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_group_base] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_group_base]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_base_human] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_base_human]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_base_avian] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_base_avian]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_base_arachnid] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_base_arachnid]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_base_elytrian] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_base_elytrian]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_base_shulk] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_base_shulk]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_base_feline] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_base_feline]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_base_enderian] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_base_enderian]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_base_merling] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_base_merling]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_base_blazeborn] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_base_blazeborn]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_base_phantom] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_base_phantom]
tag @s remove origins:double_initialize_fixing