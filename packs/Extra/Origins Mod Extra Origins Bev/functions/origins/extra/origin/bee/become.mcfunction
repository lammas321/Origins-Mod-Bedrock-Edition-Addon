event entity @s origins:dmg_default
scoreboard objectives add bee_hpcd dummy
scoreboard players set @s bee_hpcd 0
give @s glass_bottle
scoreboard objectives add bee_bwcd dummy
scoreboard players set @s bee_bwcd 0
scoreboard objectives add bee_tbolcd dummy
scoreboard players set @s bee_tbolcd 0
scoreboard objectives add bee_ppcd dummy
scoreboard players set @s bee_ppcd 0
event entity @s origins:scale_0.75
event entity @s origins:hp_10
scoreboard players add @e[type=origins:extra_origins] c_bee 1
tag @s add origins:origin_selected
tag @s add origins:extra_bee_origin_selected
tag @s remove origins:become_extra_bee_origin