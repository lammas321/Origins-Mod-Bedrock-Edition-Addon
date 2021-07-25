event entity @s origins:dmg_default
effect @s jump_boost 2147483647 2 true
event entity @s origins:dmg_immunity_kinetic
scoreboard objectives add slime_ebp dummy
scoreboard players set @s slime_ebp 0
event entity @s "origins:detect_(temp)()"
scoreboard players add @e[type=origins:extra_origins] c_slime 1
tag @s add origins:origin_selected
tag @s add origins:extra_slime_origin_selected
tag @s remove origins:become_extra_slime_origin