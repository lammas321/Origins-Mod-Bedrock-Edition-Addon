#cuteness
scoreboard players remove @s[scores={cute_one_ccd=1..}] cute_one_ccd 1
effect @s[scores={cute_one_ccd=0,od:dj=1,od:sneaking=1}] strength 15 0 true
scoreboard players set @s[scores={cute_one_ccd=0,od:dj=1,od:sneaking=1}] cute_one_ccd 1500
execute @s[scores={cute_one_ccd=1201..}] ~~~ tag @e[tag=!origins:origin_selected,tag=!origins:weirdppl_the_cute_one_origin_selected,family=!ignore,type=!area_effect_cloud,type=!armor_stand,type=!arrow,type=!boat,type=!chest_minecart,type=!command_block_minecart,type=!dragon_fireball,type=!egg,type=!ender_crystal,type=!ender_pearl,type=!evocation_fang,type=!eye_of_ender_signal,type=!falling_block,type=!fireball,type=!fireworks_rocket,type=!fishing_hook,type=!hopper_minecart,type=!item,type=!leash_knot,type=!lightning_bolt,type=!lingering_potion,type=!llama_spit,type=!minecart,type=!moving_block,type=!painting,type=!shield,type=!shulker,type=!shulker_bullet,type=!small_fireball,type=!snowball,type=!splash_potion,type=!thrown_trident,type=!tnt,type=!tnt_minecart,type=!wither_skull,type=!wither_skull_dangerous,type=!xp_bottle,type=!xp_orb,r=6] add origins:weirdppl_the_cute_one_face_cuteness
execute @e[type=origins:position,name=the_cute_one_cuteness] ~~~ tag @e[tag=origins:weirdppl_the_cute_one_face_cuteness,r=1,c=1] add origins:weirdppl_the_cute_one_facing_cuteness
execute @e[tag=origins:weirdppl_the_cute_one_face_cuteness,tag=!origins:weirdppl_the_cute_one_facing_cuteness] ~~~ summon origins:position the_cute_one_cuteness
execute @e[tag=origins:weirdppl_the_cute_one_face_cuteness] ~~~ tag @e[type=origins:position,name=the_cute_one_cuteness,r=1,c=1] add origins:used
title @s[scores={cute_one_ccd=1}] actionbar §l§a//////
title @s[scores={cute_one_ccd=2..200}] actionbar §l§a/////§4/
title @s[scores={cute_one_ccd=201..400}] actionbar §l§a////§4//
title @s[scores={cute_one_ccd=401..600}] actionbar §l§a///§4///
title @s[scores={cute_one_ccd=601..800}] actionbar §l§a//§4////
title @s[scores={cute_one_ccd=801..1000}] actionbar §l§a/§4/////
title @s[scores={cute_one_ccd=1001..1200}] actionbar §l§4//////
#climbing
scoreboard players set @s dummy_value 0
execute @s ~~~ detect ~-0.4~~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~-0.4~~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~-0.4~0.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~0.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~-0.4~0.9~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~0.9~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~-0.4~1.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~1.9~-0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~-0.4~1.9~0.4 air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~0.4~1.9~0.4 air 0 scoreboard players add @s dummy_value 1
effect @s[tag=!origins:weirdppl_the_cute_one_wasclimb,scores={dummy_value=0..11}] slow_falling 2147483647 0 true
effect @s[tag=origins:weirdppl_the_cute_one_wasclimb,scores={dummy_value=12}] slow_falling 0 1 true
effect @s[tag=!origins:weirdppl_the_cute_one_wasclimb,scores={dummy_value=0..11,od:on_ground=0}] hunger 2147483647 0 true
effect @s[scores={dummy_value=0..11,odw:on_ground=1,od:on_ground=0}] hunger 2147483647 0 true
effect @s[tag=origins:weirdppl_the_cute_one_wasclimb,scores={dummy_value=12}] hunger 0 1 true
effect @s[scores={dummy_value=0..11,odw:on_ground=0,od:on_ground=1}] hunger 0 1 true
effect @s[scores={dummy_value=0..11,odw:jumping=0,od:jumping=1}] levitation 1 2 true
tag @s[scores={dummy_value=0..11,odw:jumping=0,od:jumping=1}] add origins:weirdppl_the_cute_one_jumped
effect @s[tag=origins:weirdppl_the_cute_one_wasclimb,scores={dummy_value=12},tag=origins:weirdppl_the_cute_one_jumped] levitation 0 3 true
tp @s[scores={dummy_value=0..11,od:sneaking=1,od:on_ground=0,od:water=0}] ~~~
tag @s[tag=origins:weirdppl_the_cute_one_wasclimb,scores={dummy_value=12}] remove origins:weirdppl_the_cute_one_jumped
tag @s remove origins:weirdppl_the_cute_one_wasclimb
tag @s[scores={dummy_value=0..11}] add origins:weirdppl_the_cute_one_wasclimb
#speedy
effect @s[scores={odw:moving=0,od:moving=1}] speed 2147483647 0 true
#sleepy head
scoreboard players remove @s[scores={cute_one_shcd=0..}] cute_one_shcd 1
scoreboard players set @s[scores={odw:sleeping=1,od:sleeping=0,odw:day=0,od:day=1}] cute_one_shcd 580
tag @s remove origins:weirdppl_the_cute_one_sh
execute @e[type=origins:position,name=the_cute_one_sh] ~~~ tag @p[tag=origins:weirdppl_the_cute_one_origin_selected,scores={cute_one_shcd=1..},r=1] add origins:weirdppl_the_cute_one_sh
execute @s[scores={cute_one_shcd=1..},tag=!origins:weirdppl_the_cute_one_sh] ~~~ summon origins:position the_cute_one_sh
execute @s[scores={cute_one_shcd=1..}] ~~~ tag @e[type=origins:position,name=the_cute_one_sh,r=1,c=1] add origins:used
execute @e[type=origins:position,name=the_cute_one_sh,tag=origins:used] ~~~ tp @p[tag=origins:weirdppl_the_cute_one_origin_selected,r=1] ~~~
effect @s[scores={cute_one_shcd=1..}] blindness 2 0 true
title @s[scores={cute_one_shcd=1..}] times 0 30 10
title @s[scores={cute_one_shcd=1..}] subtitle §cYou will wake up soon.
title @s[scores={cute_one_shcd=1..}] title §eSleepy Head...
#meat diet
function origins/main/presets/carnivore