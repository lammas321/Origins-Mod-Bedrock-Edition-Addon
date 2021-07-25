#shiv
clear @s[scores={odw:sneaking=0,od:sneaking=1}] iron_sword
give @s[scores={odw:sneaking=0,od:sneaking=1}] iron_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
#boom poo
scoreboard players remove @s[scores={duck_bpcd=1..}] duck_bpcd 1
execute @s[scores={duck_bpcd=0,od:sneaking=1,od:dj=1}] ~~~ summon tnt ~~-0.25~
scoreboard players set @s[scores={duck_bpcd=0,od:sneaking=1,od:dj=1}] duck_bpcd 600
title @s[scores={duck_bpcd=1}] actionbar §l§a//////
title @s[scores={duck_bpcd=2..100}] actionbar §l§a/////§4/
title @s[scores={duck_bpcd=101..200}] actionbar §l§a////§4//
title @s[scores={duck_bpcd=201..300}] actionbar §l§a///§4///
title @s[scores={duck_bpcd=301..400}] actionbar §l§a//§4////
title @s[scores={duck_bpcd=401..500}] actionbar §l§a/§4/////
title @s[scores={duck_bpcd=501..600}] actionbar §l§4//////