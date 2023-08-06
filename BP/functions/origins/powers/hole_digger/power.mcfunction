scoreboard players set @s dummy_value 0
execute @s ~~~ detect ~~1~ air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~~2~ air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~~3~ air 0 scoreboard players add @s dummy_value 1
effect @s[tag=!origins:hole_digger_was,scores={dummy_value=0..2}] haste 2147483647 0 true
effect @s[tag=origins:hole_digger_was,scores={dummy_value=3}] haste 0 1 true
tag @s remove origins:hole_digger_was
tag @s[scores={dummy_value=0..2}] add origins:hole_digger_was