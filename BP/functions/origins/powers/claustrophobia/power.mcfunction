scoreboard players set @s dummy_value 0
execute @s ~~~ detect ~~2~ air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=1}] ~~~ detect ~~3~ air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=2}] ~~~ detect ~~4~ air 0 scoreboard players add @s dummy_value 1
effect @s[tag=!origins:power_claustrophobia_was,scores={dummy_value=0..2}] slowness 2147483647 1 true
effect @s[tag=!origins:power_claustrophobia_was,scores={dummy_value=0..2}] weakness 2147483647 1 true
effect @s[tag=origins:power_claustrophobia_was,scores={dummy_value=0..2,odw:moving=0,od:moving=1}] slowness 2147483647 1 true
effect @s[tag=origins:power_claustrophobia_was,scores={dummy_value=0..2,odw:moving=0,od:moving=1}] weakness 2147483647 1 true
effect @s[tag=origins:power_claustrophobia_was,scores={dummy_value=3}] slowness 0 2 true
effect @s[tag=origins:power_claustrophobia_was,scores={dummy_value=3}] weakness 0 2 true
tag @s remove origins:power_claustrophobia_was
tag @s[scores={dummy_value=0..2}] add origins:power_claustrophobia_was