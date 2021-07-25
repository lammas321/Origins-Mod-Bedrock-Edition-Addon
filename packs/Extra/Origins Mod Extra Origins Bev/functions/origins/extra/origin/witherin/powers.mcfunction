#wither bomb
scoreboard players remove @s[scores={witherin_wb=1..}] witherin_wb 1
effect @s[scores={od:hold=100007,od:using=1,witherin_wb=0}] resistance 3 255 true
execute @s[scores={od:hold=100007,od:using=1,witherin_wb=0}] ~~~ summon origins:explosion ~~~ origins:explosion_p4_b2_f0
execute @s[scores={od:hold=100007,od:using=1,witherin_wb=0}] ~~~ effect @e[tag=!origins:extra_witherin_origin_selected,r=7] wither 7 2 true
clear @s[scores={od:hold=100007,od:using=1,witherin_wb=0}] origins:power1
scoreboard players set @s[scores={od:hold=100007,od:using=1,witherin_wb=0}] witherin_wb 12000
give @s[scores={witherin_wb=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={witherin_wb=0,odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={witherin_wb=0,odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
title @s[scores={witherin_wb=1}] actionbar §l§a//////
title @s[scores={witherin_wb=2..2000}] actionbar §l§a/////§4/
title @s[scores={witherin_wb=2001..4000}] actionbar §l§a////§4//
title @s[scores={witherin_wb=4001..6000}] actionbar §l§a///§4///
title @s[scores={witherin_wb=6001..8000}] actionbar §l§a//§4////
title @s[scores={witherin_wb=8001..10000}] actionbar §l§a/§4/////
title @s[scores={witherin_wb=10001..12000}] actionbar §l§4//////
#fuel food
scoreboard players remove @s[scores={witherin_ff=1..}] witherin_ff 1
effect @s[scores={odw:sneaking=0,od:sneaking=1,od:hold=302,witherin_ff=0}] saturation 1 0 true
clear @s[scores={odw:sneaking=0,od:sneaking=1,od:hold=302,witherin_ff=0}] coal 0 1
scoreboard players set @s[scores={odw:sneaking=0,od:sneaking=1,od:hold=302,witherin_ff=0}] witherin_ff 60
#stone swordsman
effect @s[scores={odw:hold=..311,od:hold=312}] strength 2147483647 1 true
effect @s[scores={odw:hold=313..,od:hold=312}] strength 2147483647 1 true
effect @s[scores={odw:moving=0,od:moving=1,od:hold=312}] strength 2147483647 1 true
effect @s[scores={odw:hold=312,od:hold=..311}] strength 0 2 true
effect @s[scores={odw:hold=312,od:hold=313..}] strength 0 2 true
#family face
effect @s[scores={odw:using=1,od:using=0}] wither 0 255 true
effect @s[scores={odw:using=1,od:using=0}] poison 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] wither 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] poison 0 255 true
effect @s[scores={odw:moving=1,od:moving=0}] wither 0 255 true
effect @s[scores={odw:moving=1,od:moving=0}] poison 0 255 true
#tall and heavy
effect @s[scores={odw:moving=0,od:moving=1}] slowness 2147483647 0 true
#hydrophobia
function origins/main/presets/hydrophobia
#nether inhabitant
function origins/main/presets/nether_spawn