tag @s add origins:double_initialize_fixing
scoreboard players set @s dummy_value 0
scoreboard players operation @s dummy_value > @e[type=origins:origins] origin:playerid
execute @e[type=origins:origins] ~~~ scoreboard players operation @s dummy_value = @s origin:playerid
execute @e[type=origins:origins] ~~~ scoreboard players operation @s dummy_value -= @p[tag=origins:double_initialize_fixing] dummy_value
kill @e[type=origins:origins,scores={dummy_value=..-1},c=1]
tag @s remove origins:double_initialize_fixing
tag @s remove origins:double_initialize_fix
tellraw @s[tag=!origins:double_initialize_fix_nonotif] {"rawtext":[{"translate":"origins:double_initialize_fixed"}]}
tag @s remove origins:double_initialize_fix_nonotif
tag @s add origins:recount_origins