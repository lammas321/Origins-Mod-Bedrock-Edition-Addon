#arson tendencies
clear @s[scores={odw:sneaking=0,od:sneaking=1}] flint_and_steel
give @s[scores={odw:sneaking=0,od:sneaking=1}] flint_and_steel 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
#explosive pockets
scoreboard players remove @s[scores={troll_epcd=1..}] troll_epcd 1
give @s[scores={troll_epcd=0,od:sneaking=1}] tnt
scoreboard players set @s[scores={troll_epcd=0,od:sneaking=1}] troll_epcd 600
title @s[scores={troll_epcd=1}] actionbar §l§a//////
title @s[scores={troll_epcd=2..100}] actionbar §l§a/////§4/
title @s[scores={troll_epcd=101..200}] actionbar §l§a////§4//
title @s[scores={troll_epcd=201..300}] actionbar §l§a///§4///
title @s[scores={troll_epcd=301..400}] actionbar §l§a//§4////
title @s[scores={troll_epcd=401..500}] actionbar §l§a/§4/////
title @s[scores={troll_epcd=501..600}] actionbar §l§4//////
#escapist
effect @s[scores={odw:sprinting=0,od:sprinting=1}] speed 2147483647 2 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] speed 0 3 true
#large appetite
effect @s[scores={odw:sprinting=0,od:sprinting=1}] hunger 2147483647 0 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] hunger 0 1 true