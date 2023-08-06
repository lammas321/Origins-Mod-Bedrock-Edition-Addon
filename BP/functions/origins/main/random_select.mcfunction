scoreboard players set @s dummy_value 0
scoreboard players operation @s dummy_value += @e[family=origin_entity] origin:randomly
execute @s[scores={dummy_value=1..}] ~~~ function origins/main/can_random_select
scoreboard players operation @s origin:randomly = @e[type=origins:origins] origin:randomly
tag @s[scores={origin:randomly=0}] add origins:display_selection_ui
tag @s[scores={origin:randomly=1}] add origins:random_autoselect