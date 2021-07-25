event entity @s origins:dmg_default
scoreboard objectives add cute_one_ccd dummy
scoreboard players set @s cute_one_ccd 0
effect @s speed 2147483647 0 true
event entity @s origins:scale_0.75
scoreboard objectives add cute_one_shcd dummy
scoreboard players set @s cute_one_shcd 0
event entity @s origins:hp_14
scoreboard players add @e[type=origins:weirdppl_origins] c_the_cute_one 1
tag @s add origins:origin_selected
tag @s add origins:weirdppl_the_cute_one_origin_selected
tag @s remove origins:become_weirdppl_the_cute_one_origin