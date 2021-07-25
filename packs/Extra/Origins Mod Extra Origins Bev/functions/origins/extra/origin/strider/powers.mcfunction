#lava walker
ride @s[scores={od:lava=1,od:sprinting=1}] summon_ride origins:lava_walker reassign_rides
#fire immunity
effect @s[scores={odw:moving=0,od:moving=1}] fire_resistance 2147483647 0 true
#fungus lover
scoreboard players remove @s[scores={strider_fl=1..}] strider_fl 1
execute @s[scores={strider_fl=0,odw:sneaking=0,od:sneaking=1}] ~~~ detect ~~~ warped_fungus 0 tag @s add origins:extra_strider_cef
effect @s[tag=origins:extra_strider_cef] saturation 1 3 true
execute @s[tag=origins:extra_strider_cef] ~~~ setblock ~~~ air
scoreboard players set @s[tag=origins:extra_strider_cef] strider_fl 600
tag @s remove origins:extra_strider_cef
title @s[scores={strider_fl=1}] actionbar §l§a//////
title @s[scores={strider_fl=2..100}] actionbar §l§a/////§4/
title @s[scores={strider_fl=101..200}] actionbar §l§a////§4//
title @s[scores={strider_fl=201..300}] actionbar §l§a///§4///
title @s[scores={strider_fl=301..400}] actionbar §l§a//§4////
title @s[scores={strider_fl=401..500}] actionbar §l§a/§4/////
title @s[scores={strider_fl=501..600}] actionbar §l§4//////
#nether inhabitant
function origins/main/presets/nether_spawn
#the shivers
effect @s[scores={odw:lava=1,od:lava=0}] slowness 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:lava=0}] slowness 2147483647 0 true
effect @s[scores={odw:lava=0,od:lava=1}] slowness 0 1 true
#hydrophobia
function origins/main/presets/hydrophobia