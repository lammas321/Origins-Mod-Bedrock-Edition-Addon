#panic
effect @s[scores={od:health=..8,odw:moving=0,od:moving=1}] speed 2147483647 1 true
effect @s[scores={odw:health=9..,od:health=..8}] speed 2147483647 1 true
effect @s[scores={od:health=9..,odw:moving=0,od:moving=1}] speed 0 255 true
effect @s[scores={odw:health=..8,od:health=9..}] speed 0 255 true
#beefy
replaceitem entity @s[scores={odw:moving=0,od:moving=1}] slot.armor.head 0 leather_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @s[scores={odw:moving=0,od:moving=1}] slot.armor.chest 0 leather_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @s[scores={odw:moving=0,od:moving=1}] slot.armor.legs 0 leather_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @s[scores={odw:moving=0,od:moving=1}] slot.armor.feet 0 leather_boots 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
#milk producer
effect @s[scores={odw:moving=0,od:moving=1}] absorption 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] blindness 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] fatal_poison 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] fire_resistance 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] haste 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] health_boost 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] hunger 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] invisibility 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] jump_boost 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] levitation 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] mining_fatigue 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] nausea 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] night_vision 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] poison 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] regeneration 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] resistance 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] slow_falling 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] slowness 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] strength 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] water_breathing 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] weakness 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] wither 0 255 true
#wheat diet
scoreboard players remove @s[scores={cow_egcd=1..}] cow_egcd 1
execute @s[scores={cow_egcd=0,od:sneaking=1}] ~~~ detect ~~-0.1~ grass 0 tag @s add origins:extra_cow_ceg
effect @s[tag=origins:extra_cow_ceg] saturation 1 2 true
execute @s[tag=origins:extra_cow_ceg] ~~~ setblock ~~-0.1~ dirt
scoreboard players set @s[tag=origins:extra_cow_ceg] cow_egcd 600
tag @s remove origins:extra_cow_ceg
title @s[scores={cow_egcd=1}] actionbar §l§a//////
title @s[scores={cow_egcd=2..100}] actionbar §l§a/////§4/
title @s[scores={cow_egcd=101..200}] actionbar §l§a////§4//
title @s[scores={cow_egcd=201..300}] actionbar §l§a///§4///
title @s[scores={cow_egcd=301..400}] actionbar §l§a//§4////
title @s[scores={cow_egcd=401..500}] actionbar §l§a/§4/////
title @s[scores={cow_egcd=501..600}] actionbar §l§4//////
replaceitem entity @s[scores={od:hold=257..260,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=270,od:use_time=10..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=271..272,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=279..287,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=290,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=558,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=589,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=592,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=10001,od:use_time=20..}] slot.weapon.mainhand 0 air
function origins/main/presets/vegetarian