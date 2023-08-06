tag @s[scores={origin:selectid=..-2}] add origins:selectid_underflow
scoreboard players operation @s[tag=origins:selectid_underflow] origin:selectid = @e[type=origins:origins] origin:origins
scoreboard players remove @s[tag=origins:selectid_underflow] origin:selectid 1
tag @s[tag=origins:selectid_underflow] remove origins:selectid_underflow
scoreboard players set @s dummy_value -1
scoreboard players operation @s dummy_value = @s origin:selectid
scoreboard players operation @s dummy_value -= @e[type=origins:origins] origin:origins
scoreboard players set @s[scores={dummy_value=0..}] origin:selectid -1