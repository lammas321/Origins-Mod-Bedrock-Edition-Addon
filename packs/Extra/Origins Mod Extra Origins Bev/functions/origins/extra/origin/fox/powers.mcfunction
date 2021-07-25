#camouflage
scoreboard players add @s[scores={od:sneaking=1,od:moving=0,fox_ct=..80}] fox_ct 1
effect @s[scores={odw:sneaking=1,od:sneaking=0,fox_ct=81}] invisibility 0 1 true
effect @s[scores={odw:moving=0,od:moving=1,fox_ct=81}] invisibility 0 1 true
scoreboard players set @s[scores={odw:sneaking=1,od:sneaking=0}] fox_ct 0
scoreboard players set @s[scores={odw:moving=0,od:moving=1}] fox_ct 0
effect @s[scores={fox_ct=80}] invisibility 2147483647 0 true
#pounce
scoreboard players remove @s[scores={fox_pcd=1..}] fox_pcd 1
effect @s[scores={od:dj=1,fox_pcd=0}] levitation 1 14 true
effect @s[scores={fox_pcd=50}] levitation 0 15 true
effect @s[scores={od:dj=1,fox_pcd=0}] strength 3 0 true
effect @s[scores={od:dj=1,fox_pcd=0}] hunger 1 3 true
scoreboard players set @s[scores={od:dj=1,fox_pcd=0}] fox_pcd 60
title @s[scores={fox_pcd=1}] actionbar §l§a//////
title @s[scores={fox_pcd=2..10}] actionbar §l§a/////§4/
title @s[scores={fox_pcd=11..20}] actionbar §l§a////§4//
title @s[scores={fox_pcd=21..30}] actionbar §l§a///§4///
title @s[scores={fox_pcd=31..40}] actionbar §l§a//§4////
title @s[scores={fox_pcd=41..50}] actionbar §l§a/§4/////
title @s[scores={fox_pcd=51..60}] actionbar §l§4//////
#mighty mouth
function origins/main/presets/spare_inventory_9
#nocturnal
tag @s[tag=origins:extra_fox_nv,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] add origins:extra_fox_nv_off
effect @s[scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] night_vision 2147483647 0 true
tag @s[scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] add origins:extra_fox_nv
effect @s[tag=origins:extra_fox_nv_off] night_vision 0 1 true
tag @s[tag=origins:extra_fox_nv_off] remove origins:extra_fox_nv
tag @s remove origins:extra_fox_nv_off
#berry craver
effect @s[scores={od:hold=287,od:use_time=31}] saturation 1 3 true
scoreboard players set @s[scores={od:hold=287,od:use_time=31}] od:use_time 0
#fast footed
effect @s[scores={odw:moving=0,od:moving=1}] speed 2147483647 0 true
#hungry boi
effect @s[scores={odw:moving=0,od:moving=1}] hunger 2147483647 0 true
effect @s[scores={odw:moving=1,od:moving=0}] hunger 0 1 true
#unwieldy
replaceitem entity @s[scores={od:hold=355,od:sneaking=1}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:ohold=355,od:sneaking=1}] slot.weapon.offhand 0 air