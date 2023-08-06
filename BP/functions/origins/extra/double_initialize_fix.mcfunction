tag @s add origins:double_initialize_fixing
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_group_extra] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_group_extra]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_extra_fox] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_extra_fox]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_extra_rabbit] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_extra_rabbit]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_extra_slime] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_extra_slime]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_extra_bee] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_extra_bee]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_extra_starborne] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_extra_starborne]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_extra_tmotd] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_extra_tmotd]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_extra_witherin] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_extra_witherin]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_extra_wolfwalkt] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_extra_wolfwalkt]
scoreboard players set @s dummy_value 0
execute @e[type=origins:origin_extra_wolfwalkf] ~~~ scoreboard players add @p[tag=origins:double_initialize_fixing] dummy_value 1
execute @s[scores={dummy_value=2..}] ~~~ kill @r[type=origins:origin_extra_wolfwalkf]
tag @s remove origins:double_initialize_fixing