#tentacle
enchant @s[scores={od:hold=546,od:using=1}] loyalty 3
execute @s[tag=origins:extra_tmotd_ctt] ~~~ tag @e[type=thrown_trident,c=1,r=15] add origins:extra_tmotd_tentacle
tag @s remove origins:tmotd_ctt
tag @s[scores={odw:hold=546,odw:use_time=10..,od:using=0}] add origins:extra_tmotd_ctt
execute @e[type=thrown_trident,tag=origins:extra_tmotd_tentacle] ~~~ tp @e[family=!ignore,tag=!origins:extra_tmotd_origin_selected,type=!area_effect_cloud,type=!arrow,type=!dragon_fireball,type=!egg,type=!ender_crystal,type=!ender_pearl,type=!evocation_fang,type=!eye_of_ender_signal,type=!falling_block,type=!fireball,type=!fireworks_rocket,type=!fishing_hook,type=!leash_knot,type=!lightning_bolt,type=!lingering_potion,type=!llama_spit,type=!moving_block,type=!painting,type=!shield,type=!shulker,type=!shulker_bullet,type=!small_fireball,type=!snowball,type=!splash_potion,type=!thrown_trident,type=!wither_skull,type=!wither_skull_dangerous,type=!xp_bottle,type=!xp_orb,c=1,r=4] ~~-1~
clear @s[scores={odw:sneaking=0,od:sneaking=1}] trident
give @s[scores={odw:sneaking=0,od:sneaking=1}] trident 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
#sea monster
effect @s[scores={odw:underwater=0,od:underwater=1}] strength 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:underwater=1}] strength 2147483647 0 true
effect @s[scores={odw:underwater=1,od:underwater=0}] strength 0 1 true
#aqua affinity
effect @s[scores={odw:underwater=0,od:underwater=1}] haste 2147483647 4 true
effect @s[scores={odw:moving=0,od:moving=1,od:underwater=1}] haste 2147483647 4 true
effect @s[scores={odw:underwater=1,od:underwater=0}] haste 0 5 true
#entanglement
scoreboard players remove @s[scores={tmotd_ecd=1..}] tmotd_ecd 1
scoreboard players set @s[scores={od:hold=100007,od:using=1,tmotd_ecd=0}] tmotd_ecd 1400
execute @s[scores={tmotd_ecd=1201..}] ~~~ tag @e[family=!ignore,tag=!origins:extra_tmotd_origin_selected,type=!area_effect_cloud,type=!armor_stand,type=!arrow,type=!boat,type=!chest_minecart,type=!command_block_minecart,type=!dragon_fireball,type=!egg,type=!ender_crystal,type=!ender_pearl,type=!evocation_fang,type=!eye_of_ender_signal,type=!falling_block,type=!fireball,type=!fireworks_rocket,type=!fishing_hook,type=!hopper_minecart,type=!item,type=!leash_knot,type=!lightning_bolt,type=!lingering_potion,type=!llama_spit,type=!minecart,type=!moving_block,type=!painting,type=!shield,type=!shulker,type=!shulker_bullet,type=!small_fireball,type=!snowball,type=!splash_potion,type=!thrown_trident,type=!tnt,type=!tnt_minecart,type=!wither_skull,type=!wither_skull_dangerous,type=!xp_bottle,type=!xp_orb,c=2,r=4] add origins:extra_tmotd_face_entangler
execute @e[type=origins:position,name=tmotd_entangled] ~~~ tag @e[tag=origins:extra_tmotd_face_entangler,c=1,r=1] add origins:extra_tmotd_facing_entangler
execute @e[tag=origins:extra_tmotd_face_entangler,tag=!origins:extra_tmotd_facing_entangler] ~~~ summon origins:position tmotd_entangled
execute @e[tag=origins:extra_tmotd_face_entangler] ~~~ tag @e[type=origins:position,name=tmotd_entangled,c=1,r=1] add origins:used
clear @s[scores={tmotd_ecd=2..}] origins:power1
give @s[scores={tmotd_ecd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={tmotd_ecd=0,odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={tmotd_ecd=0,odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
title @s[scores={tmotd_ecd=1}] actionbar §l§a//////
title @s[scores={tmotd_ecd=2..200}] actionbar §l§a/////§4/
title @s[scores={tmotd_ecd=201..400}] actionbar §l§a////§4//
title @s[scores={tmotd_ecd=401..600}] actionbar §l§a///§4///
title @s[scores={tmotd_ecd=601..800}] actionbar §l§a//§4////
title @s[scores={tmotd_ecd=801..1000}] actionbar §l§a/§4/////
title @s[scores={tmotd_ecd=1001..1200}] actionbar §l§4//////
#gills
effect @s[scores={odw:rain=0,od:rain=1,od:moving=0}] water_breathing 2147483647 0 true
effect @s[scores={od:rain=1,odw:moving=1,od:moving=0}] water_breathing 2147483647 0 true
effect @s[scores={odw:rain=1,od:rain=0}] water_breathing 0 1 true
effect @s[scores={od:rain=1,odw:moving=0,od:moving=1}] water_breathing 0 1 true
effect @s[scores={odw:alive=0,od:alive=1}] water_breathing 10 0 true
#fins
effect @s[scores={odw:water=1,od:water=0}] slowness 2147483647 1 true
effect @s[scores={odw:moving=0,od:moving=1,od:water=0}] slowness 2147483647 1 true
effect @s[scores={odw:water=0,od:water=1}] slowness 0 2 true
#final breath
execute @s[scores={odw:alive=1,od:alive=0}] ~~~ summon origins:tmotd_fb
kill @e[type=origins:tmotd_fb]
clear @s[scores={od:hold=426,od:use_time=20..}] potion 19
clear @s[scores={od:hold=426,od:use_time=20..}] potion 20