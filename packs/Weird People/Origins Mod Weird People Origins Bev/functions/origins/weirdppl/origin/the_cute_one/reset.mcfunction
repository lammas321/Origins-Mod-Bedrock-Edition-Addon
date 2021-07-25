effect @s[tag=origins:weirdppl_the_cute_one_wasclimb] slow_falling 0 1 true
effect @s[tag=origins:weirdppl_the_cute_one_wasclimb] hunger 0 1 true
effect @s speed 0 1 true
event entity @s origins:scale_1
event entity @s origins:hp_20
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:weirdppl_origins] c_the_cute_one 1
tag @s remove origins:origin_selected
tag @s remove origins:weirdppl_the_cute_one_origin_selected