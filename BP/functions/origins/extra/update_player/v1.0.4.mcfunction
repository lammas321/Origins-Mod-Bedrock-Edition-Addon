tag @s[tag=origins:selected_extra_fox_origin] remove origins:power_foxlike_looks
tag @s[tag=origins:selected_extra_fox_origin] add origins:mob_chicken_scare
tag @s[tag=origins:selected_extra_fox_origin] add origins:mob_fox_neutral
tag @s[tag=origins:selected_extra_fox_origin] add origins:mob_wolf_attack_on_sight
effect @s[tag=origins:selected_extra_fox_origin] hunger 0 1 true
event entity @s[tag=origins:selected_extra_fox_origin] origins:exhaustion_3x
scoreboard players set @s origin:extra_ver 1000005