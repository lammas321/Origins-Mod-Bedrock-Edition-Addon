tellraw @a[tag=origins:debug] {"rawtext":[{"text":"Origins Debug: origins/weppl/initialize"}]}
tag @s add origins:recount_origins
summon origins:origin_group_weppl 0 -63 0
scoreboard objectives add origin:weppl_ver dummy
scoreboard players set @e[type=origins:origin_group_weppl] origin:weppl_ver 1000003
summon origins:origin_weppl_llama 0 -63 0
summon origins:origin_weppl_duck 0 -63 0
summon origins:origin_weppl_the_cute_one 0 -63 0
summon origins:origin_weppl_troll 0 -63 0
scoreboard players set @e[type=origins:origin_weppl_llama] origin:randomly 1
scoreboard players set @e[type=origins:origin_weppl_llama] origin:usability 1
scoreboard players set @e[type=origins:origin_weppl_duck] origin:randomly 1
scoreboard players set @e[type=origins:origin_weppl_duck] origin:usability 1
scoreboard players set @e[type=origins:origin_weppl_the_cute_one] origin:randomly 1
scoreboard players set @e[type=origins:origin_weppl_the_cute_one] origin:usability 1
scoreboard players set @e[type=origins:origin_weppl_troll] origin:randomly 1
scoreboard players set @e[type=origins:origin_weppl_troll] origin:usability 1
tag @s remove origins:initialize