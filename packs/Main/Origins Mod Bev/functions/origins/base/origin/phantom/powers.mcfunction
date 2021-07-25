#phasing
event entity @s[tag=!origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] origins:dmg_immunity_suffocation
event entity @s[tag=!origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] origins:daylight_burns_stop
give @s[tag=!origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
event entity @s[tag=origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] origins:dmg_multiply_suffocation_1
event entity @s[tag=origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] origins:daylight_burns
clear @s[tag=origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] origins:power1
tag @s[tag=origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] add origins:base_phantom_state_exit
tag @s[tag=!origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] add origins:base_phantom_state
tag @s[tag=origins:base_phantom_state_exit,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] remove origins:base_phantom_state
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~~ detect ~~-0.25~ air 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~~ detect ^^^0.2 barrier 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~~ detect ^^^0.8 barrier 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~0.9~ detect ^^^0.2 barrier 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~0.9~ detect ^^^0.8 barrier 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~1.8~ detect ^^^0.2 barrier 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~1.8~ detect ^^^0.8 barrier 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~~ detect ^^^0.2 bedrock 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~~ detect ^^^0.8 bedrock 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~0.9~ detect ^^^0.2 bedrock 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~0.9~ detect ^^^0.8 bedrock 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~1.8~ detect ^^^0.2 bedrock 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~1.8~ detect ^^^0.8 bedrock 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~~ detect ^^^0.2 crying_obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~~ detect ^^^0.8 crying_obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~0.9~ detect ^^^0.2 crying_obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~0.9~ detect ^^^0.8 crying_obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~1.8~ detect ^^^0.2 crying_obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~1.8~ detect ^^^0.8 crying_obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~~ detect ^^^0.2 obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~~ detect ^^^0.8 obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~0.9~ detect ^^^0.2 obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~0.9~ detect ^^^0.8 obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~1.8~ detect ^^^0.2 obsidian 0 tag @s add origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:sneaking=1}] ~~1.8~ detect ^^^0.8 obsidian 0 tag @s add origins:base_phantom_nophase
tag @s[tag=origins:base_phantom_state,scores={od:sneaking=1,od:hold=10007,od:using=1}] add origins:base_phantom_nophase
tp @s[tag=origins:base_phantom_state,tag=!origins:base_phantom_nophase,scores={od:sneaking=1}] ^^^0.5
tag @s remove origins:base_phantom_nophase
execute @s[tag=origins:base_phantom_state,scores={od:hold=100007,od:use_time=1}] ~~~ summon origins:position base_phantom_lock
execute @e[type=origins:position,name=base_phantom_lock,c=1] ~~~ tp @p[tag=origins:base_phantom_state,scores={od:hold=100007,od:using=1},r=1] ~~~
execute @s[tag=origins:base_phantom_state,scores={od:hold=100007,od:use_time=1}] ~~~ detect ~~1.5~ stone 0 tag @s add origins:base_phantom_headin_stone
execute @s[tag=origins:base_phantom_state,scores={od:hold=100007,od:use_time=1}] ~~~ detect ~~1.5~ stone 1 tag @s add origins:base_phantom_headin_granite
execute @s[tag=origins:base_phantom_state,scores={od:hold=100007,od:use_time=1}] ~~~ detect ~~1.5~ stone 3 tag @s add origins:base_phantom_headin_diorite
execute @s[tag=origins:base_phantom_state,scores={od:hold=100007,od:use_time=1}] ~~~ detect ~~1.5~ stone 5 tag @s add origins:base_phantom_headin_andesite
execute @s[tag=origins:base_phantom_state,scores={od:hold=100007,od:use_time=1}] ~~~ detect ~~1.5~ netherrack 0 tag @s add origins:base_phantom_headin_netherrack
execute @s[tag=origins:base_phantom_state,tag=origins:base_phantom_headin_stone,scores={od:hold=100007,od:use_time=1}] ~~~ setblock ~~1.5~ leaves 3
execute @s[tag=origins:base_phantom_state,tag=origins:base_phantom_headin_granite,scores={od:hold=100007,od:use_time=1}] ~~~ setblock ~~1.5~ leaves 3
execute @s[tag=origins:base_phantom_state,tag=origins:base_phantom_headin_diorite,scores={od:hold=100007,od:use_time=1}] ~~~ setblock ~~1.5~ leaves 3
execute @s[tag=origins:base_phantom_state,tag=origins:base_phantom_headin_andesite,scores={od:hold=100007,od:use_time=1}] ~~~ setblock ~~1.5~ leaves 3
execute @s[tag=origins:base_phantom_state,tag=origins:base_phantom_headin_netherrack,scores={od:hold=100007,od:use_time=1}] ~~~ setblock ~~1.5~ leaves 3
execute @s[tag=origins:base_phantom_state,tag=origins:base_phantom_headin_stone,scores={odw:hold=100007,odw:using=1,od:using=0}] ~~~ setblock ~~1.5~ stone 0
execute @s[tag=origins:base_phantom_state,tag=origins:base_phantom_headin_granite,scores={odw:hold=100007,odw:using=1,od:using=0}] ~~~ setblock ~~1.5~ stone 1
execute @s[tag=origins:base_phantom_state,tag=origins:base_phantom_headin_diorite,scores={odw:hold=100007,odw:using=1,od:using=0}] ~~~ setblock ~~1.5~ stone 3
execute @s[tag=origins:base_phantom_state,tag=origins:base_phantom_headin_andesite,scores={odw:hold=100007,odw:using=1,od:using=0}] ~~~ setblock ~~1.5~ stone 5
execute @s[tag=origins:base_phantom_state,tag=origins:base_phantom_headin_netherrack,scores={odw:hold=100007,odw:using=1,od:using=0}] ~~~ setblock ~~1.5~ netherrack 0
tag @s[tag=origins:base_phantom_state,scores={od:hold=100007,odw:using=1,od:using=0}] remove origins:base_phantom_headin_stone
tag @s[tag=origins:base_phantom_state,scores={od:hold=100007,odw:using=1,od:using=0}] remove origins:base_phantom_headin_granite
tag @s[tag=origins:base_phantom_state,scores={od:hold=100007,odw:using=1,od:using=0}] remove origins:base_phantom_headin_diorite
tag @s[tag=origins:base_phantom_state,scores={od:hold=100007,odw:using=1,od:using=0}] remove origins:base_phantom_headin_andesite
tag @s[tag=origins:base_phantom_state,scores={od:hold=100007,odw:using=1,od:using=0}] remove origins:base_phantom_headin_netherrack
execute @s[tag=origins:base_phantom_state,scores={od:hold=100007,odw:using=1,od:using=0}] ~~~ tag @e[type=origins:position,name=base_phantom_lock,c=1] add origins:kill
execute @e[type=origins:position,name=base_phantom_lock,tag=origins:kill] ~~~ tp ~ -100~
kill @e[type=origins:position,name=base_phantom_lock,tag=origins:kill]
#invisibility
effect @s[tag=origins:base_phantom_state,scores={odw:moving=0,od:moving=1}] invisibility 2147483647 0 true
effect @s[tag=origins:base_phantom_state_exit] invisibility 0 1 true
#fast metabolism
effect @s[tag=origins:base_phantom_state,scores={odw:moving=0,od:moving=1}] hunger 2147483647 1 true
effect @s[tag=origins:base_phantom_state_exit] hunger 0 2 true
#photoallergic
event entity @s[tag=origins:base_phantom_state_exit] origins:daylight_burns
event entity @s[tag=origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] origins:daylight_burns_stop
event entity @s[tag=!origins:base_phantom_state,scores={od:rain=0,od:water=0,od:head=1..,od:day=1,odw:underground=1,od:underground=0}] origins:dmg_over_time_0.75
event entity @s[tag=!origins:base_phantom_state,scores={od:rain=0,od:water=0,od:head=1..,odw:day=0,od:day=1,od:underground=0}] origins:dmg_over_time_0.75
event entity @s[tag=!origins:base_phantom_state,scores={od:rain=0,od:water=0,odw:head=0,od:head=1..,od:day=1,od:underground=0}] origins:dmg_over_time_0.75
event entity @s[tag=!origins:base_phantom_state,scores={od:rain=0,odw:water=1,od:water=0,od:head=1..,od:day=1,od:underground=0}] origins:dmg_over_time_0.75
event entity @s[tag=!origins:base_phantom_state,scores={odw:rain=1,od:rain=0,od:water=0,od:head=1..,od:day=1,od:underground=0}] origins:dmg_over_time_0.75
event entity @s[tag=!origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1,od:rain=0,od:water=0,od:head=1..,od:day=1,od:underground=0}] origins:dmg_over_time_0.75
event entity @s[tag=!origins:base_phantom_state,scores={odw:head=1..,od:head=0}] origins:dmg_over_time_stop
event entity @s[tag=!origins:base_phantom_state,scores={odw:day=1,od:day=0}] origins:dmg_over_time_stop
event entity @s[tag=!origins:base_phantom_state,scores={odw:underground=0,od:underground=1}] origins:dmg_over_time_stop
event entity @s[tag=!origins:base_phantom_state,scores={odw:water=0,od:water=1}] origins:dmg_over_time_stop
event entity @s[tag=!origins:base_phantom_state,scores={odw:rain=0,od:rain=1}] origins:dmg_over_time_stop
event entity @s[tag=origins:base_phantom_state,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] origins:dmg_over_time_stop
tag @s remove origins:base_phantom_state_exit