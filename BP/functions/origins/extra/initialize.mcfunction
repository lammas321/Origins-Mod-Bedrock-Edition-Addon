tellraw @a[tag=origins:debug] {"rawtext":[{"text":"Origins Debug: origins/extra/initialize"}]}
tag @s add origins:recount_origins
summon origins:origin_group_extra 0 -63 0
scoreboard objectives add origin:extra_ver dummy
scoreboard players set @e[type=origins:origin_group_extra] origin:extra_ver 1000008
summon origins:origin_extra_fox 0 -63 0
summon origins:origin_extra_rabbit 0 -63 0
summon origins:origin_extra_slime 0 -63 0
summon origins:origin_extra_bee 0 -63 0
summon origins:origin_extra_starborne 0 -63 0
summon origins:origin_extra_tmotd 0 -63 0
summon origins:origin_extra_witherin 0 -63 0
summon origins:origin_extra_wolfwalkt 0 -63 0
summon origins:origin_extra_wolfwalkf 0 -63 0
scoreboard players set @e[type=origins:origin_extra_fox] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_fox] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_rabbit] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_rabbit] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_slime] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_slime] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_bee] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_bee] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_starborne] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_starborne] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_tmotd] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_tmotd] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_witherin] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_witherin] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_wolfwalkt] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_wolfwalkt] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_wolfwalkf] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_wolfwalkf] origin:usability 1
tag @s remove origins:initialize