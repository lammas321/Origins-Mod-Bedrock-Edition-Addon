tellraw @s[tag=origins:debug] {"rawtext":[{"text":"Origins Debug: origins/base/initialize"}]}
tag @s add origins:recount_origins
summon origins:origin_group_base 0 -63 0
scoreboard objectives add origin:base_ver dummy
scoreboard players set @e[type=origins:origin_group_base] origin:base_ver 1003009
summon origins:origin_base_human 0 -63 0
summon origins:origin_base_avian 0 -63 0
summon origins:origin_base_arachnid 0 -63 0
summon origins:origin_base_elytrian 0 -63 0
summon origins:origin_base_shulk 0 -63 0
summon origins:origin_base_feline 0 -63 0
summon origins:origin_base_enderian 0 -63 0
summon origins:origin_base_merling 0 -63 0
summon origins:origin_base_blazeborn 0 -63 0
summon origins:origin_base_phantom 0 -63 0
scoreboard players set @e[type=origins:origin_base_human] origin:randomly 1
scoreboard players set @e[type=origins:origin_base_human] origin:usability 1
scoreboard players set @e[type=origins:origin_base_avian] origin:randomly 1
scoreboard players set @e[type=origins:origin_base_avian] origin:usability 1
scoreboard players set @e[type=origins:origin_base_arachnid] origin:randomly 1
scoreboard players set @e[type=origins:origin_base_arachnid] origin:usability 1
scoreboard players set @e[type=origins:origin_base_elytrian] origin:randomly 1
scoreboard players set @e[type=origins:origin_base_elytrian] origin:usability 1
scoreboard players set @e[type=origins:origin_base_shulk] origin:randomly 1
scoreboard players set @e[type=origins:origin_base_shulk] origin:usability 1
scoreboard players set @e[type=origins:origin_base_feline] origin:randomly 1
scoreboard players set @e[type=origins:origin_base_feline] origin:usability 1
scoreboard players set @e[type=origins:origin_base_enderian] origin:randomly 1
scoreboard players set @e[type=origins:origin_base_enderian] origin:usability 1
scoreboard players set @e[type=origins:origin_base_merling] origin:randomly 1
scoreboard players set @e[type=origins:origin_base_merling] origin:usability 1
scoreboard players set @e[type=origins:origin_base_blazeborn] origin:randomly 1
scoreboard players set @e[type=origins:origin_base_blazeborn] origin:usability 1
scoreboard players set @e[type=origins:origin_base_phantom] origin:randomly 1
scoreboard players set @e[type=origins:origin_base_phantom] origin:usability 1
tag @s remove origins:initialize