#extra fluff
scoreboard players remove @s[scores={sheep_efcd=1..}] sheep_efcd 1
scoreboard players random @s sheep_efr 1 3
give @s[scores={sheep_efcd=0,sheep_efr=1..,od:sneaking=1}] wool
give @s[scores={sheep_efcd=0,sheep_efr=2..,od:sneaking=1}] wool
give @s[scores={sheep_efcd=0,sheep_efr=3,od:sneaking=1}] wool
scoreboard players set @s[scores={sheep_efcd=0,od:sneaking=1}] sheep_efcd 1200
title @s[scores={sheep_efcd=1}] actionbar §l§a//////
title @s[scores={sheep_efcd=2..200}] actionbar §l§a/////§4/
title @s[scores={sheep_efcd=201..400}] actionbar §l§a////§4//
title @s[scores={sheep_efcd=401..600}] actionbar §l§a///§4///
title @s[scores={sheep_efcd=601..800}] actionbar §l§a//§4////
title @s[scores={sheep_efcd=801..1000}] actionbar §l§a/§4/////
title @s[scores={sheep_efcd=1001..1200}] actionbar §l§4//////
#nice and cozy
effect @s[scores={odw:temp=..9,od:temp=10..}] slowness 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:temp=10..}] slowness 2147483647 0 true
effect @s[scores={odw:temp=10..,od:temp=..9}] slowness 0 1 true
effect @s[scores={odw:temp=3..,od:temp=..2}] speed 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:temp=..2}] speed 2147483647 0 true
effect @s[scores={odw:temp=..2,od:temp=3..}] speed 0 1 true
#insulation
replaceitem entity @s[scores={od:head=1..}] slot.armor.head 0 air
replaceitem entity @s[scores={od:chest=1..}] slot.armor.chest 0 air
replaceitem entity @s[scores={od:legs=1..}] slot.armor.legs 0 air
replaceitem entity @s[scores={od:feet=1..}] slot.armor.feet 0 air
effect @s[scores={odw:moving=0,od:moving=1}] resistance 2147483647 1 true
#wheat diet
scoreboard players remove @s[scores={sheep_egcd=1..}] sheep_egcd 1
execute @s[scores={sheep_egcd=0,od:sneaking=1}] ~~~ detect ~~-0.1~ grass 0 tag @s add origins:extra_sheep_ceg
effect @s[tag=origins:extra_sheep_ceg] saturation 1 2 true
execute @s[tag=origins:extra_sheep_ceg] ~~~ setblock ~~-0.1~ dirt
scoreboard players set @s[tag=origins:extra_sheep_ceg] sheep_egcd 600
tag @s remove origins:extra_sheep_ceg
tellraw @s[scores={sheep_egcd=1}] {"rawtext":[{"translate":"origins:extra_sheep.eat_grass_ready"}]}
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