effect @s[tag=origins:base_arachnid_wasclimb] slow_falling 0 1 true
effect @s[tag=origins:base_arachnid_sense] night_vision 0 1 true
event entity @s origins:hp_20
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:base_origins] c_arachnid 1
tag @s remove origins:origin_selected
tag @s remove origins:base_arachnid_origin_selected