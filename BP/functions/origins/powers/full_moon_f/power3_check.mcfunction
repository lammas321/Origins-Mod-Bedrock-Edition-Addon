scoreboard players operation @s dummy_value = @s od:health
scoreboard players set @e[type=origins:origins] dummy_value 1000
scoreboard players operation @s dummy_value *= @e[type=origins:origins] dummy_value
scoreboard players operation @s dummy_value /= @s od:mhealth
execute @s[scores={dummy_value=..999}] ~~~ execute @p[tag=origins:power_bloodthirsty_check] ~~~ function origins/powers/full_moon_f/activate_power3