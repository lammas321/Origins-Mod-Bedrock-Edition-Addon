#winged
replaceitem entity @s[scores={od:gliding=1}] slot.armor.chest 0 elytra 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @s[scores={odw:moving=0,od:moving=1}] slot.armor.chest 0 elytra 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
#gift of the winds
scoreboard players remove @s[scores={elytrian_bcd=1..}] elytrian_bcd 1
effect @s[scores={od:dj=1,od:sneaking=1,elytrian_bcd=0}] levitation 1 24 true
effect @s[scores={od:dj=1,od:sneaking=1,elytrian_bcd=0}] slow_falling 2 0 true
scoreboard players set @s[scores={od:dj=1,od:sneaking=1,elytrian_bcd=0}] elytrian_bcd 600
title @s[scores={elytrian_bcd=1}] actionbar §l§a//////
title @s[scores={elytrian_bcd=2..100}] actionbar §l§a/////§4/
title @s[scores={elytrian_bcd=101..200}] actionbar §l§a////§4//
title @s[scores={elytrian_bcd=201..300}] actionbar §l§a///§4///
title @s[scores={elytrian_bcd=301..400}] actionbar §l§a//§4////
title @s[scores={elytrian_bcd=401..500}] actionbar §l§a/§4/////
title @s[scores={elytrian_bcd=501..600}] actionbar §l§4//////
#aerial combat
effect @s[scores={odw:gliding=0,od:gliding=1}] strength 2147483647 1 true
effect @s[scores={odw:gliding=1,od:gliding=0}] strength 0 2 true
#need for mobility
replaceitem entity @s[scores={od:head=5..6}] slot.armor.head 0 air
replaceitem entity @s[scores={od:legs=5..6}] slot.armor.legs 0 air
replaceitem entity @s[scores={od:feet=5..6}] slot.armor.feet 0 air
#claustrophobia
scoreboard players set @s dummy_value 0
execute @s ~~~ detect ~~2~ air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~~3~ air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~~4~ air 0 scoreboard players add @s dummy_value 1
effect @s[tag=!origins:base_elytrian_wasclaust,scores={dummy_value=0..2}] slowness 2147483647 1 true
effect @s[tag=!origins:base_elytrian_wasclaust,scores={dummy_value=0..2}] weakness 2147483647 1 true
effect @s[tag=origins:base_elytrian_wasclaust,scores={dummy_value=3}] slowness 0 2 true
effect @s[tag=origins:base_elytrian_wasclaust,scores={dummy_value=3}] weakness 0 2 true
tag @s remove origins:base_elytrian_wasclaust
tag @s[scores={dummy_value=0..2}] add origins:base_elytrian_wasclaust