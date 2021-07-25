#climbing
scoreboard players set @s dummy_value 0
execute @s ~~~ detect ~-0.4~~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~-0.4~~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~-0.4~0.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~0.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~-0.4~0.9~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~0.9~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~-0.4~1.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~1.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~-0.4~1.9~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~1.9~0.4 air 0 scoreboard players add @s dummy_value 1
effect @s[tag=!origins:base_arachnid_wasclimb,scores={dummy_value=0..11}] slow_falling 2147483647 0 true
effect @s[tag=origins:base_arachnid_wasclimb,scores={dummy_value=12}] slow_falling 0 1 true
effect @s[scores={dummy_value=0..11,odw:jumping=0,od:jumping=1}] levitation 1 2 true
tag @s[scores={dummy_value=0..11,odw:jumping=0,od:jumping=1}] add origins:base_arachnid_jumped
effect @s[tag=origins:base_arachnid_wasclimb,scores={dummy_value=12},tag=origins:base_arachnid_jumped] levitation 0 3 true
tp @s[scores={dummy_value=0..11,od:sneaking=1,od:on_ground=0,od:water=0}] ~~~
tag @s[tag=origins:base_arachnid_wasclimb,scores={dummy_value=12}] remove origins:base_arachnid_jumped
tag @s remove origins:base_arachnid_wasclimb
tag @s[scores={dummy_value=0..11}] add origins:base_arachnid_wasclimb
#webbing
execute @s[scores={od:attacking=1}] ~~~ execute @e[scores={odw:hurting=1},r=7] ~~~ setblock ~~~ web 0 keep
#spider sense
tag @s[tag=origins:base_arachnid_sense,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] add origins:base_arachnid_sense_off
effect @s[scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] night_vision 2147483647 0 true
tag @s[scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] add origins:base_arachnid_sense
effect @s[tag=origins:base_arachnid_sense_off] night_vision 0 1 true
tag @s[tag=origins:base_arachnid_sense_off] remove origins:base_arachnid_sense
tag @s remove origins:base_arachnid_sense_off
#carnivore
function origins/main/presets/carnivore