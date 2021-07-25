event entity @s origins:dmg_default
effect @s jump_boost 2147483647 1 true
effect @s speed 2147483647 0 true
scoreboard objectives add rabbit_gtcd dummy
scoreboard players set @s rabbit_gtcd 0
event entity @s origins:hp_10
scoreboard players add @e[type=origins:extra_origins] c_rabbit 1
tag @s add origins:origin_selected
tag @s add origins:extra_rabbit_origin_selected
tag @s remove origins:become_extra_rabbit_origin