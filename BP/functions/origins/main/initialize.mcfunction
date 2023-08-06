tellraw @a[tag=origins:debug] {"rawtext":[{"text":"Origins Debug: origins/main/initialize"}]}
gamerule sendcommandfeedback false
gamerule commandblockoutput false
gamerule showtags false
tag @s add origins:recount_origins
summon origins:origins 0 -63 0
summon origins:ui 0 -63 0
scoreboard objectives add dummy_value dummy
scoreboard objectives add origin:main_ver dummy
scoreboard objectives add origin:origins dummy
scoreboard objectives add origin:playerid dummy
scoreboard objectives add origin:randomly dummy
scoreboard objectives add origin:selectid dummy
scoreboard objectives add origin:usability dummy
scoreboard players set @e[type=origins:origins] origin:main_ver 1003009
scoreboard players add @e[type=origins:origins] origin:origins 0
scoreboard players add @e[type=origins:origins] origin:playerid 0
scoreboard players set @e[type=origins:origins,scores={origin:playerid=0}] origin:playerid 1
scoreboard objectives add od:alive dummy
scoreboard objectives add odw:alive dummy
scoreboard objectives add od:attacking dummy
scoreboard objectives add odw:attacking dummy
scoreboard objectives add od:biome dummy
scoreboard objectives add odw:biome dummy
scoreboard objectives add od:chest dummy
scoreboard objectives add odw:chest dummy
scoreboard objectives add od:day dummy
scoreboard objectives add odw:day dummy
scoreboard objectives add od:dim dummy
scoreboard objectives add odw:dim dummy
scoreboard objectives add od:feet dummy
scoreboard objectives add odw:feet dummy
scoreboard objectives add od:fire dummy
scoreboard objectives add odw:fire dummy
scoreboard objectives add od:gliding dummy
scoreboard objectives add odw:gliding dummy
scoreboard objectives add od:head dummy
scoreboard objectives add odw:head dummy
scoreboard objectives add od:health dummy
scoreboard objectives add odw:health dummy
scoreboard objectives add od:hold dummy
scoreboard objectives add odw:hold dummy
scoreboard objectives add od:jumping dummy
scoreboard objectives add odw:jumping dummy
scoreboard objectives add od:lava dummy
scoreboard objectives add odw:lava dummy
scoreboard objectives add od:legs dummy
scoreboard objectives add odw:legs dummy
scoreboard objectives add od:light dummy
scoreboard objectives add odw:light dummy
scoreboard objectives add od:mhealth dummy
scoreboard objectives add odw:mhealth dummy
scoreboard objectives add od:moon dummy
scoreboard objectives add odw:moon dummy
scoreboard objectives add od:moving dummy
scoreboard objectives add odw:moving dummy
scoreboard objectives add od:ohold dummy
scoreboard objectives add odw:ohold dummy
scoreboard objectives add od:on_fire dummy
scoreboard objectives add odw:on_fire dummy
scoreboard objectives add od:on_ground dummy
scoreboard objectives add odw:on_ground dummy
scoreboard objectives add od:rain dummy
scoreboard objectives add odw:rain dummy
scoreboard objectives add od:ridden dummy
scoreboard objectives add odw:ridden dummy
scoreboard objectives add od:riding dummy
scoreboard objectives add odw:riding dummy
scoreboard objectives add od:sleeping dummy
scoreboard objectives add odw:sleeping dummy
scoreboard objectives add od:sneaking dummy
scoreboard objectives add odw:sneaking dummy
scoreboard objectives add od:splashed dummy
scoreboard objectives add odw:splashed dummy
scoreboard objectives add od:sprinting dummy
scoreboard objectives add odw:sprinting dummy
scoreboard objectives add od:swimming dummy
scoreboard objectives add odw:swimming dummy
scoreboard objectives add od:temp dummy
scoreboard objectives add odw:temp dummy
scoreboard objectives add od:underground dummy
scoreboard objectives add odw:underground dummy
scoreboard objectives add od:underwater dummy
scoreboard objectives add odw:underwater dummy
scoreboard objectives add od:using dummy
scoreboard objectives add odw:using dummy
scoreboard objectives add od:water dummy
scoreboard objectives add odw:water dummy
tag @s remove origins:initialize