scoreboard players set @s dummy_value 0
scoreboard players set @e[type=origins:origins] dummy_value 1
scoreboard players operation @s dummy_value += @e[type=origins:origins] dummy_value
tag @s[scores={dummy_value=2..}] add origins:double_initialize_fix
tag @s[scores={dummy_value=2..}] add origins:double_initialize_fix_nonotif