event entity @s origins:dmg_default
scoreboard objectives add goat_hjcd dummy
scoreboard players set @s goat_hjcd 0
event entity @s origins:dmg_multiply_kinetic_0.5
event entity @s "origins:detect_(temp)()"
event entity @s origins:hp_16
scoreboard players add @e[type=origins:extra_origins] c_goat 1
tag @s add origins:origin_selected
tag @s add origins:extra_goat_origin_selected
tag @s remove origins:become_extra_goat_origin