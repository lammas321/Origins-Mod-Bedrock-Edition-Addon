effect @s[scores={odw:moving=0,od:moving=1}] night_vision 2147483647 0 true
give @s[scores={bch_cd=1}] origins:power2 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
clear @s[scores={odw:sneaking=0,od:sneaking=1,bch_cd=0}] origins:power2
give @s[scores={odw:sneaking=0,od:sneaking=1,bch_cd=0}] origins:power2 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
execute @s[tag=origins:power2_use,scores={bch_cd=0}] ~~~ function origins/powers/full_moon_t/activate_power2
effect @s[scores={odw:sprinting=0,od:sprinting=1}] speed 2147483647 0 true
effect @s[scores={odw:sprinting=1,od:sprinting=0,bloodt_cd=..300}] speed 0 1 true
tag @s[scores={bloodt_cd=0}] add origins:power_bloodthirsty_check
execute @e[tag=origins:power_bloodthirsty_entity,r=15,c=1] ~~~ execute @p[tag=origins:power_bloodthirsty_check] ~~~ function origins/powers/full_moon_t/activate_power3
tag @s remove origins:power_bloodthirsty_check
tag @s add origins:power_leader_of_the_pack_t
execute @p[tag=origins:selected_extra_wolfwalkt_origin,tag=origins:power_full_moon_transformed,tag=!origins:power_leader_of_the_pack_t,r=10] ~~~ effect @p[tag=origins:power_full_moon_transformed,tag=origins:power_leader_of_the_pack_t] speed 2 3 true
tag @s remove origins:power_leader_of_the_pack_t
replaceitem entity @s[scores={od:head=1..7}] slot.armor.head 0 air
execute @s[scores={od:head=1..7}] ~~~ playsound random.break @a
replaceitem entity @s[scores={od:chest=1..6}] slot.armor.chest 0 air
execute @s[scores={od:chest=1..6}] ~~~ playsound random.break @a
replaceitem entity @s[scores={od:legs=1..6}] slot.armor.legs 0 air
execute @s[scores={od:legs=1..6}] ~~~ playsound random.break @a
replaceitem entity @s[scores={od:feet=1..6}] slot.armor.feet 0 air
execute @s[scores={od:feet=1..6}] ~~~ playsound random.break @a