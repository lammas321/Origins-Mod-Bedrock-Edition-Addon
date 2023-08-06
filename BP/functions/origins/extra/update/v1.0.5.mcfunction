summon origins:origin_extra_tmotd 0 -63 0
summon origins:origin_extra_witherin 0 -63 0
summon origins:origin_extra_wolfwalkt 0 -63 0
summon origins:origin_extra_wolfwalkf 0 -63 0
scoreboard players set @e[type=origins:origin_extra_tmotd] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_tmotd] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_witherin] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_witherin] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_wolfwalkt] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_wolfwalkt] origin:usability 1
scoreboard players set @e[type=origins:origin_extra_wolfwalkf] origin:randomly 1
scoreboard players set @e[type=origins:origin_extra_wolfwalkf] origin:usability 1
function origins/main/recount_origins
scoreboard players set @s origin:extra_ver 1000006