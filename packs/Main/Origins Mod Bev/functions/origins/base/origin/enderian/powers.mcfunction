#teleportation
scoreboard players remove @s[scores={enderian_tpcd=1..}] enderian_tpcd 1
scoreboard players set @s[scores={odw:alive=0,od:alive=1}] enderian_tpcd 20
event entity @s[scores={enderian_tpcd=0,od:hold=100007,od:using=1}] origins:custom_ender_pearl
scoreboard players set @s[scores={enderian_tpcd=0,od:hold=100007,od:using=1}] enderian_tpcd -1
clear @s[scores={enderian_tpcd=-1}] origins:power1
clear @s[scores={enderian_tpcd=2..}] origins:power1
execute @e[type=origins:custom_ender_pearl_lands] ~~~ effect @p[tag=origins:base_enderian_origin_selected,r=2] instant_health 1 0 true
execute @e[type=origins:custom_ender_pearl_lands] ~~~ effect @p[tag=origins:base_enderian_origin_selected,r=2] regeneration 1 2 true
execute @e[type=origins:custom_ender_pearl_lands] ~~~ scoreboard players set @p[tag=origins:base_enderian_origin_selected,r=2] enderian_tpcd 100
give @s[scores={enderian_tpcd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={enderian_tpcd=0,odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={enderian_tpcd=0,odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
title @s[scores={enderian_tpcd=1}] actionbar §l§a//////
title @s[scores={enderian_tpcd=2..17}] actionbar §l§a/////§4/
title @s[scores={enderian_tpcd=18..34}] actionbar §l§a////§4//
title @s[scores={enderian_tpcd=35..51}] actionbar §l§a///§4///
title @s[scores={enderian_tpcd=52..68}] actionbar §l§a//§4////
title @s[scores={enderian_tpcd=69..85}] actionbar §l§a/§4/////
title @s[scores={enderian_tpcd=86..100}] actionbar §l§4//////
execute @e[type=origins:custom_ender_pearl_lands] ~~~ tp ~ -100~
kill @e[type=origins:custom_ender_pearl_lands]
#slender body
effect @s[scores={odw:moving=0,od:moving=1}] speed 2147483647 0 true
event entity @s[scores={odw:sneaking=0,od:sneaking=1,od:swimming=0}] origins:col_0.48_1.44
event entity @s[scores={odw:sneaking=1,od:sneaking=0,od:swimming=0}] origins:col_0.48_1.8
#hydrophobia
function origins/main/presets/hydrophobia