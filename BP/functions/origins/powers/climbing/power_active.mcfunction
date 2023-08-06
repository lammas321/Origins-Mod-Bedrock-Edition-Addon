scoreboard players set @s dummy_value 0
execute @s ~~~ detect ~-0.4~~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=1}] ~~~ detect ~0.4~~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=2}] ~~~ detect ~-0.4~~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=3}] ~~~ detect ~0.4~~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=4}] ~~~ detect ~-0.4~0.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=5}] ~~~ detect ~0.4~0.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=6}] ~~~ detect ~-0.4~0.9~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=7}] ~~~ detect ~0.4~0.9~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=8}] ~~~ detect ~-0.4~1.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=9}] ~~~ detect ~0.4~1.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=10}] ~~~ detect ~-0.4~1.9~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=11}] ~~~ detect ~0.4~1.9~0.4 air 0 scoreboard players add @s dummy_value 1
effect @s[tag=!origins:power_climbing_wasclimb,scores={dummy_value=0..11,od:water=0}] slow_falling 2147483647 0 true
effect @s[tag=origins:power_climbing_wasclimb,scores={dummy_value=12}] slow_falling 0 1 true
effect @s[scores={dummy_value=0..11,od:jumping=1,od:water=0}] levitation 1 2 true
tag @s[scores={dummy_value=0..11,od:jumping=1,od:water=0}] add origins:power_climbing_jumped
effect @s[tag=origins:power_climbing_wasclimb,scores={dummy_value=12},tag=origins:power_climbing_jumped] levitation 0 3 true
tp @s[scores={dummy_value=0..11,od:sneaking=1,od:on_ground=0,od:water=0}] ~~~
tag @s[tag=origins:power_climbing_wasclimb,scores={dummy_value=12}] remove origins:power_climbing_jumped
tag @s remove origins:power_climbing_wasclimb
tag @s[scores={dummy_value=0..11}] add origins:power_climbing_wasclimb