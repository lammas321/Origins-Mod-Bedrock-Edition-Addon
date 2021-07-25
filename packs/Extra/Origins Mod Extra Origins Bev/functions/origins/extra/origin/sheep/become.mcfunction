event entity @s origins:dmg_default
scoreboard objectives add sheep_efcd dummy
scoreboard players set @s sheep_efcd 0
scoreboard objectives add sheep_efr dummy
scoreboard players set @s sheep_efr 0
give @s wool 32
event entity @s "origins:detect_(temp)()"
scoreboard objectives add sheep_egcd dummy
scoreboard players set @s sheep_egcd 0
scoreboard players add @e[type=origins:extra_origins] c_sheep 1
tag @s add origins:origin_selected
tag @s add origins:extra_sheep_origin_selected
tag @s remove origins:become_extra_sheep_origin