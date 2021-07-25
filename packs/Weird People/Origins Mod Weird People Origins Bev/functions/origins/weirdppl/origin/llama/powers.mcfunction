#llama spit
scoreboard players remove @s[scores={llama_scd=1..}] llama_scd 1
scoreboard players set @s[scores={odw:alive=0,od:alive=1}] llama_scd 20
event entity @s[scores={llama_scd=0,od:hold=100007,od:using=1}] origins:custom_llama_spit
scoreboard players set @s[scores={llama_scd=0,od:hold=100007,od:using=1}] llama_scd 30
clear @s[scores={llama_scd=2..}] origins:power1
give @s[scores={llama_scd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={llama_scd=0,odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={llama_scd=0,odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
title @s[scores={llama_scd=1}] actionbar §l§a//////
title @s[scores={llama_scd=2..5}] actionbar §l§a/////§4/
title @s[scores={llama_scd=6..10}] actionbar §l§a////§4//
title @s[scores={llama_scd=11..15}] actionbar §l§a///§4///
title @s[scores={llama_scd=16..20}] actionbar §l§a//§4////
title @s[scores={llama_scd=21..25}] actionbar §l§a/§4/////
title @s[scores={llama_scd=26..30}] actionbar §l§4//////
#rideable
ride @s[scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] evict_riders
#runner
effect @s[scores={odw:sprinting=0,od:sprinting=1}] speed 2147483647 1 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] speed 0 2 true
#vegetarian
function origins/main/presets/vegetarian