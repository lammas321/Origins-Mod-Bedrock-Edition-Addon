#shooting star
scoreboard players remove @s[scores={starborne_shs=1..}] starborne_shs 1
event entity @s[scores={od:hold=100008,od:using=1,starborne_shs=0}] origins:custom_magic_beam
scoreboard players set @s[scores={od:hold=100008,od:using=1,starborne_shs=0}] starborne_shs 120
clear @s[scores={starborne_shs=2..}] origins:power2
give @s[scores={starborne_shs=1}] origins:power2 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={starborne_shs=0,odw:sneaking=0,od:sneaking=1}] origins:power2
give @s[scores={starborne_shs=0,odw:sneaking=0,od:sneaking=1}] origins:power2 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
#born from the stars
effect @s[scores={odw:day=1,od:day=0,od:underground=0}] regeneration 2147483647 1 true
effect @s[scores={odw:day=1,od:day=0,od:underground=0}] speed 2147483647 0 true
effect @s[scores={odw:day=1,od:day=0,od:underground=0,od:sneaking=0}] jump_boost 2147483647 2 true
effect @s[scores={odw:day=1,od:day=0,od:underground=0,od:sneaking=0}] slow_falling 2147483647 0 true
effect @s[scores={od:day=0,odw:underground=1,od:underground=0}] regeneration 2147483647 1 true
effect @s[scores={od:day=0,odw:underground=1,od:underground=0}] speed 2147483647 0 true
effect @s[scores={od:day=0,odw:underground=1,od:underground=0,od:sneaking=0}] jump_boost 2147483647 2 true
effect @s[scores={od:day=0,odw:underground=1,od:underground=0,od:sneaking=0}] slow_falling 2147483647 0 true
effect @s[scores={od:day=0,od:underground=0,odw:sneaking=1,od:sneaking=0}] jump_boost 2147483647 2 true
effect @s[scores={od:day=0,od:underground=0,odw:sneaking=1,od:sneaking=0}] slow_falling 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:day=0,od:underground=0}] regeneration 2147483647 1 true
effect @s[scores={odw:moving=0,od:moving=1,od:day=0,od:underground=0}] speed 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:day=0,od:underground=0,od:sneaking=0}] jump_boost 2147483647 2 true
effect @s[scores={odw:moving=0,od:moving=1,od:day=0,od:underground=0,od:sneaking=0}] slow_falling 2147483647 0 true
effect @s[scores={odw:day=0,od:day=1}] regeneration 0 2 true
effect @s[scores={odw:day=0,od:day=1}] speed 0 1 true
effect @s[scores={odw:day=0,od:day=1}] jump_boost 0 3 true
effect @s[scores={odw:day=0,od:day=1}] slow_falling 0 1 true
effect @s[scores={odw:underground=0,od:underground=1}] regeneration 0 2 true
effect @s[scores={odw:underground=0,od:underground=1}] speed 0 1 true
effect @s[scores={odw:underground=0,od:underground=1}] jump_boost 0 3 true
effect @s[scores={odw:underground=0,od:underground=1}] slow_falling 0 1 true
effect @s[scores={odw:sneaking=0,od:sneaking=1}] jump_boost 0 3 true
effect @s[scores={odw:sneaking=0,od:sneaking=1}] slow_falling 0 1 true
#speedy star
scoreboard players remove @s[scores={starborne_ss=1..}] starborne_ss 1
execute @s[scores={od:hold=100007,od:use_time=1,od:on_ground=1,od:water=0,starborne_ss=0}] ~~~ effect @e[family=!ignore,tag=!origins:extra_starborne_origin_selected,type=!area_effect_cloud,type=!arrow,type=!dragon_fireball,type=!egg,type=!ender_crystal,type=!ender_pearl,type=!evocation_fang,type=!eye_of_ender_signal,type=!falling_block,type=!fireball,type=!fireworks_rocket,type=!fishing_hook,type=!leash_knot,type=!lightning_bolt,type=!lingering_potion,type=!llama_spit,type=!moving_block,type=!painting,type=!shield,type=!shulker,type=!shulker_bullet,type=!small_fireball,type=!snowball,type=!splash_potion,type=!thrown_trident,type=!wither_skull,type=!wither_skull_dangerous,type=!xp_bottle,type=!xp_orb,r=7] resistance 2 254 true
effect @s[scores={od:hold=100007,od:use_time=1,od:on_ground=1,od:water=0,starborne_ss=0}] resistance 15 254 true
tag @s[scores={od:hold=100007,od:use_time=1,od:on_ground=1,od:water=0,starborne_ss=0}] add origins:extra_starborne_await_landing
execute @s[scores={od:hold=100007,od:use_time=1,od:on_ground=1,od:water=0,starborne_ss=0}] ~~~ summon origins:explosion ~~~ origins:explosion_p2_b2_f0
execute @s[scores={od:hold=100007,od:use_time=1,od:on_ground=1,od:water=0,starborne_ss=0}] ~~~ summon origins:explosion ~~~ origins:explosion_p8_b0_f0
execute @s[scores={od:hold=100007,od:use_time=1,od:on_ground=1,od:water=0,starborne_ss=0}] ~~~ effect @e[family=!ignore,tag=!origins:extra_starborne_origin_selected,type=!area_effect_cloud,type=!arrow,type=!dragon_fireball,type=!egg,type=!ender_crystal,type=!ender_pearl,type=!evocation_fang,type=!eye_of_ender_signal,type=!falling_block,type=!fireball,type=!fireworks_rocket,type=!fishing_hook,type=!leash_knot,type=!lightning_bolt,type=!lingering_potion,type=!llama_spit,type=!moving_block,type=!painting,type=!shield,type=!shulker,type=!shulker_bullet,type=!small_fireball,type=!snowball,type=!splash_potion,type=!thrown_trident,type=!wither_skull,type=!wither_skull_dangerous,type=!xp_bottle,type=!xp_orb,rm=0.01,r=3] levitation 1 16 true
execute @s[scores={od:hold=100007,od:use_time=1,od:on_ground=1,od:water=0,starborne_ss=0}] ~~~ effect @e[family=!ignore,tag=!origins:extra_starborne_origin_selected,type=!area_effect_cloud,type=!arrow,type=!dragon_fireball,type=!egg,type=!ender_crystal,type=!ender_pearl,type=!evocation_fang,type=!eye_of_ender_signal,type=!falling_block,type=!fireball,type=!fireworks_rocket,type=!fishing_hook,type=!leash_knot,type=!lightning_bolt,type=!lingering_potion,type=!llama_spit,type=!moving_block,type=!painting,type=!shield,type=!shulker,type=!shulker_bullet,type=!small_fireball,type=!snowball,type=!splash_potion,type=!thrown_trident,type=!wither_skull,type=!wither_skull_dangerous,type=!xp_bottle,type=!xp_orb,rm=3,r=4] levitation 1 11 true
tp @s[scores={od:hold=100007,od:use_time=1,od:on_ground=1,od:water=0,starborne_ss=0}] ^^^0.3
scoreboard players set @s[scores={od:hold=100007,od:use_time=1,od:on_ground=1,od:water=0,starborne_ss=0}] starborne_ss 120
effect @s[tag=origins:extra_starborne_await_landing,scores={odw:on_ground=0,od:on_ground=1}] resistance 0 255 true
tag @s[scores={odw:on_ground=0,od:on_ground=1}] remove origins:extra_starborne_await_landing
clear @s[scores={starborne_ss=2..}] origins:power1
give @s[scores={starborne_ss=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={starborne_ss=0,odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={starborne_ss=0,odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
#supernova
scoreboard players remove @s[scores={od:day=0,od:underground=0,starborne_sn=1..}] starborne_sn 1
execute @s[scores={odw:alive=1,od:alive=0,od:sneaking=0,starborne_sn=0}] ~~~ summon origins:explosion ~~~ origins:explosion_p6_b2_f0
scoreboard players set @s[scores={odw:alive=1,od:alive=0,od:sneaking=0,starborne_sn=0}] starborne_sn 1200
title @s[scores={starborne_sn=1}] actionbar §l§a//////
title @s[scores={starborne_sn=2..200}] actionbar §l§a/////§4/
title @s[scores={starborne_sn=201..400}] actionbar §l§a////§4//
title @s[scores={starborne_sn=401..600}] actionbar §l§a///§4///
title @s[scores={starborne_sn=601..800}] actionbar §l§a//§4////
title @s[scores={starborne_sn=801..1000}] actionbar §l§a/§4/////
title @s[scores={starborne_sn=1001..1200}] actionbar §l§4//////
#starwatcher
effect @s[scores={odw:day=0,od:day=1}] slowness 2147483647 0 true
effect @s[scores={odw:underground=0,od:underground=1}] slowness 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:day=1}] slowness 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:underground=1}] slowness 2147483647 0 true
effect @s[scores={odw:day=1,od:day=0,od:underground=0}] slowness 0 1 true
effect @s[scores={od:day=0,odw:underground=1,od:underground=0}] slowness 0 1 true
#nonviolent
scoreboard players random @s[scores={odw:hurting=0,od:hurting=1}] starborne_ko 1 20
effect @s[scores={odw:hurting=0,od:hurting=1,starborne_ko=1}] slowness 8 255 true
effect @s[scores={odw:hurting=0,od:hurting=1,starborne_ko=1}] blindness 8 0 true
effect @s[scores={odw:hurting=0,od:hurting=1,starborne_ko=1}] weakness 8 255 true
effect @s[scores={odw:hurting=0,od:hurting=1,starborne_ko=1}] mining_fatigue 8 255 true