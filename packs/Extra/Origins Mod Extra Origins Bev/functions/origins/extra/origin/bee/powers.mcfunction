#honey producer
scoreboard players remove @s[scores={bee_hpcd=1..}] bee_hpcd 1
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,bee_hpcd=0}] ~~~ detect ~~~ yellow_flower 0 clear @s glass_bottle 0 1
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,bee_hpcd=0}] ~~~ detect ~~~ yellow_flower 0 give @s honey_bottle
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,bee_hpcd=0}] ~~~ detect ~~~ yellow_flower 0 scoreboard players set @s bee_hpcd 600
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,bee_hpcd=0}] ~~~ detect ~~~ red_flower -1 clear @s glass_bottle 0 1
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,bee_hpcd=0}] ~~~ detect ~~~ red_flower -1 give @s honey_bottle
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,bee_hpcd=0}] ~~~ detect ~~~ red_flower -1 scoreboard players set @s bee_hpcd 600
tellraw @s[scores={bee_hpcd=1}] {"rawtext":[{"translate":"origins:extra_bee.honey_producer_ready"}]}
#bee wings
scoreboard players remove @s[scores={bee_bwcd=1..}] bee_bwcd 1
scoreboard players set @s[scores={od:dj=1,od:sneaking=1,bee_bwcd=0}] bee_bwcd 1200
effect @s[scores={od:rain=0,od:water=0,od:jumping=1,bee_bwcd=601..1200}] levitation 1 1 true
effect @s[scores={od:rain=0,od:water=0,odw:moving=0,od:moving=1,bee_bwcd=601..1200}] slow_falling 2147483647 0 true
effect @s[scores={bee_bwcd=600}] levitation 0 2 true
effect @s[scores={bee_bwcd=600}] slow_falling 0 1 true
title @s[scores={bee_bwcd=1}] actionbar §l§a//////
title @s[scores={bee_bwcd=2..100}] actionbar §l§a/////§4/
title @s[scores={bee_bwcd=101..200}] actionbar §l§a////§4//
title @s[scores={bee_bwcd=201..300}] actionbar §l§a///§4///
title @s[scores={bee_bwcd=301..400}] actionbar §l§a//§4////
title @s[scores={bee_bwcd=401..500}] actionbar §l§a/§4/////
title @s[scores={bee_bwcd=501..600}] actionbar §l§4//////
title @s[scores={bee_bwcd=601..700}] actionbar §l§a/§4/////
title @s[scores={bee_bwcd=701..800}] actionbar §l§a//§4////
title @s[scores={bee_bwcd=801..900}] actionbar §l§a///§4///
title @s[scores={bee_bwcd=901..1000}] actionbar §l§a////§4//
title @s[scores={bee_bwcd=1001..1100}] actionbar §l§a/////§4/
title @s[scores={bee_bwcd=1101..1200}] actionbar §l§a//////
#the bee of life
scoreboard players remove @s[scores={bee_tbolcd=1..}] bee_tbolcd 1
clear @s[scores={od:hold=592,odw:jumping=0,od:jumping=1,od:sneaking=1,bee_tbolcd=0}] honey_bottle 0 1
give @s[scores={od:hold=592,odw:jumping=0,od:jumping=1,od:sneaking=1,bee_tbolcd=0}] glass_bottle
give @s[scores={od:hold=592,odw:jumping=0,od:jumping=1,od:sneaking=1,bee_tbolcd=0}] bone_meal
scoreboard players set @s[scores={od:hold=592,odw:jumping=0,od:jumping=1,od:sneaking=1,bee_tbolcd=0}] bee_tbolcd 300
tellraw @s[scores={bee_tbolcd=1}] {"rawtext":[{"translate":"origins:extra_bee.the_bee_of_life_ready"}]}
#stinger
execute @s[scores={od:attacking=1,od:on_ground=0}] ~~~ effect @e[scores={odw:hurting=1},r=7] poison 7 1 true
#pollen power
scoreboard players remove @s[scores={bee_ppcd=1..}] bee_ppcd 1
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 2 effect @s fire_resistance 20 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 3 effect @s blindness 15 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 1 effect @s saturation 1 3 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ yellow_flower 0 effect @s saturation 1 3 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 9 effect @s jump_boost 15 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 10 effect @s poison 20 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 8 effect @s regeneration 10 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 0 effect @s night_vision 15 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 4 effect @s weakness 15 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 5 effect @s weakness 15 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 6 effect @s weakness 15 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower 7 effect @s weakness 15 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ wither_rose 0 effect @s wither 20 0 true
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ yellow_flower 0 scoreboard players set @s bee_ppcd 600
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ red_flower -1 scoreboard players set @s bee_ppcd 600
execute @s[scores={odw:sneaking=0,od:sneaking=1,bee_ppcd=0}] ~~~ detect ~~~ wither_rose 0 scoreboard players set @s bee_ppcd 600
tellraw @s[scores={bee_ppcd=1}] {"rawtext":[{"translate":"origins:extra_bee.pollen_power_ready"}]}
#i bee wet
effect @s[scores={odw:rain=0,od:rain=1}] slowness 2147483647 1 true
effect @s[scores={odw:water=0,od:water=1}] slowness 2147483647 1 true
effect @s[scores={odw:rain=0,od:rain=1}] weakness 2147483647 1 true
effect @s[scores={odw:water=0,od:water=1}] weakness 2147483647 1 true
effect @s[scores={od:rain=1,odw:moving=0,od:moving=1}] slowness 2147483647 1 true
effect @s[scores={od:water=1,odw:moving=0,od:moving=1}] slowness 2147483647 1 true
effect @s[scores={od:rain=1,odw:moving=0,od:moving=1}] weakness 2147483647 1 true
effect @s[scores={od:water=1,odw:moving=0,od:moving=1}] weakness 2147483647 1 true
effect @s[scores={odw:rain=1,od:rain=0}] slowness 0 2 true
effect @s[scores={odw:water=1,od:water=0}] slowness 0 2 true
effect @s[scores={odw:rain=1,od:rain=0}] weakness 0 2 true
effect @s[scores={odw:water=1,od:water=0}] weakness 0 2 true
effect @s[scores={odw:rain=0,od:rain=1,bee_bwcd=601..1200}] levitation 0 2 true
effect @s[scores={odw:water=0,od:water=1,bee_bwcd=601..1200}] levitation 0 2 true
effect @s[scores={odw:rain=0,od:rain=1,bee_bwcd=601..1200}] slow_falling 0 1 true
effect @s[scores={odw:water=0,od:water=1,bee_bwcd=601..1200}] slow_falling 0 1 true
#sugary sweet diet
replaceitem entity @s[scores={od:hold=257..261,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=270,od:use_time=10..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=271..272,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=279..287,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=290,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=558,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=589,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=10001,od:use_time=20..}] slot.weapon.mainhand 0 air
function origins/main/presets/vegetarian