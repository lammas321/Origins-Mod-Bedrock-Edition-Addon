effect @s[scores={od:hold=262,od:using=1}] saturation 1 2 true
clear @s[scores={od:hold=262,od:using=1}] porkchop 0 1
effect @s[scores={od:hold=273,od:using=1}] saturation 1 2 true
clear @s[scores={od:hold=273,od:using=1}] beef 0 1
effect @s[scores={od:hold=275,od:using=1}] saturation 1 1 true
clear @s[scores={od:hold=275,od:using=1}] chicken 0 1
effect @s[scores={od:hold=288,od:using=1}] saturation 1 2 true
clear @s[scores={od:hold=288,od:using=1}] rabbit 0 1
effect @s[scores={od:hold=550,od:using=1}] saturation 1 1 true
clear @s[scores={od:hold=550,od:using=1}] mutton 0 1
give @s[scores={bch_cd=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={odw:sneaking=0,od:sneaking=1,bch_cd=0}] origins:power1
give @s[scores={odw:sneaking=0,od:sneaking=1,bch_cd=0}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power1_use,scores={bch_cd=0}] ~~~ function origins/powers/full_moon_f/activate_power2
effect @s[scores={odw:sprinting=0,od:sprinting=1}] speed 2147483647 1 true
effect @s[scores={odw:sprinting=1,od:sprinting=0,bloodt_cd=..300}] speed 0 2 true
tag @s[scores={bloodt_cd=0}] add origins:power_bloodthirsty_check
execute @e[tag=origins:power_bloodthirsty_entity,r=15,c=1] ~~~ execute @p[tag=origins:power_bloodthirsty_check] ~~~ function origins/powers/full_moon_f/activate_power3
execute @s[tag=origins:power_bloodthirsty_check] ~~~ execute @a[tag=!origins:selected_extra_wolfwalkf_origin,r=15,c=1] ~~~ function origins/powers/full_moon_f/power3_check
tag @s remove origins:power_bloodthirsty_check
event entity @s[scores={od:day=1,bloodt_cd=300}] origins:exhaustion_1x
event entity @s[scores={od:day=0,bloodt_cd=300}] origins:exhaustion_1.5x
tag @s add origins:power_leader_of_the_pack_f
execute @p[tag=origins:selected_extra_wolfwalkf_origin,tag=origins:power_full_moon_transformed,tag=!origins:power_leader_of_the_pack_f,r=10] ~~~ effect @p[tag=origins:power_full_moon_transformed,tag=origins:power_leader_of_the_pack_f] strength 2 2 true
tag @s remove origins:power_leader_of_the_pack_f
replaceitem entity @s[scores={od:head=1..7}] slot.armor.head 0 air
execute @s[scores={od:head=1..7}] ~~~ playsound random.break @a
replaceitem entity @s[scores={od:chest=1..6}] slot.armor.chest 0 air
execute @s[scores={od:chest=1..6}] ~~~ playsound random.break @a
replaceitem entity @s[scores={od:legs=1..6}] slot.armor.legs 0 air
execute @s[scores={od:legs=1..6}] ~~~ playsound random.break @a
replaceitem entity @s[scores={od:feet=1..6}] slot.armor.feet 0 air
execute @s[scores={od:feet=1..6}] ~~~ playsound random.break @a
title @s[scores={odw:moving=0,od:moving=1}] actionbar origins:show_red_tint_25