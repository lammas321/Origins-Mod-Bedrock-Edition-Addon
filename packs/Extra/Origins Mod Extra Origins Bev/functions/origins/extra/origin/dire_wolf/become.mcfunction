event entity @s origins:dmg_default
effect @s strength 2147483647 0 true
scoreboard objectives add dire_wolf_cdt dummy
scoreboard players set @s dire_wolf_cdt 0
scoreboard objectives add dire_wolf_cdc dummy
scoreboard players set @s dire_wolf_cdc 0
event entity @s origins:hp_24
effect @s[scores={od:day=0}] night_vision 2147483647 0 true
effect @s[scores={od:day=0}] speed 2147483647 0 true
event entity @s origins:scale_0.75
scoreboard players add @e[type=origins:extra_origins] c_dire_wolf 1
tag @s add origins:origin_selected
tag @s add origins:extra_dire_wolf_origin_selected
tag @s remove origins:become_extra_dire_wolf_origin