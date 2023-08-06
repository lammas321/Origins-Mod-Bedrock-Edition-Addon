scoreboard players set @s dummy_value 0
scoreboard players operation @s dummy_value > @e[type=origins:origins] origin:playerid
kill @e[type=origins:origins]
kill @e[family=origin_entity]
kill @e[family=origin_group_entity]
function origins/main/joined
scoreboard players operation @e[type=origins:origins] origin:playerid = @s dummy_value