event entity @s origins:dmg_default
scoreboard objectives add fox_ct dummy
scoreboard players set @s fox_ct 0
scoreboard objectives add fox_pcd dummy
scoreboard players set @s fox_pcd 0
event entity @s origins:dmg_immunity_kinetic
effect @s speed 2147483647 0 true
event entity @s origins:scale_0.75
event entity @s origins:family_foxlike
event entity @s origins:hp_12
scoreboard players add @e[type=origins:extra_origins] c_fox 1
tag @s add origins:origin_selected
tag @s add origins:extra_fox_origin_selected
tag @s remove origins:become_extra_fox_origin