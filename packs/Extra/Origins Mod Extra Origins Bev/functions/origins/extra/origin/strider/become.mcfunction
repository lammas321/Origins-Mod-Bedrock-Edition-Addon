event entity @s origins:dmg_default
event entity @s "origins:detect_(lava)()"
effect @s fire_resistance 2147483647 0 true
event entity @s origins:dmg_immunity_magma
event entity @s origins:family_nether_passive
scoreboard objectives add strider_fl dummy
scoreboard players set @s strider_fl 0
tag @s add origins:nether_spawn1
effect @s[scores={od:lava=0}] slowness 2147483647 0 true
scoreboard players add @e[type=origins:extra_origins] c_strider 1
tag @s add origins:origin_selected
tag @s add origins:extra_strider_origin_selected
tag @s remove origins:become_extra_strider_origin