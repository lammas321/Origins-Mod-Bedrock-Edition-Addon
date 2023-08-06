scoreboard players random @s origin:selectid 0 999
scoreboard players set @s dummy_value 1000
scoreboard players operation @s origin:selectid *= @e[type=origins:origins] origin:origins
scoreboard players operation @s origin:selectid /= @s dummy_value
scoreboard players operation @e[family=origin_entity] origin:selectid -= @s origin:selectid
scoreboard players operation @s dummy_value = @e[family=origin_entity,scores={origin:selectid=0}] origin:randomly
scoreboard players operation @e[family=origin_entity] origin:selectid += @s origin:selectid
execute @s[scores={dummy_value=0}] ~~~ function origins/main/can_random_select