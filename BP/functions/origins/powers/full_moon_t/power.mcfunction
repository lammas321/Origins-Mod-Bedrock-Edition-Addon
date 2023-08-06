scoreboard players remove @s[scores={bloodt_cd=1..}] bloodt_cd 1
clear @s[scores={odw:sneaking=0,od:sneaking=1}] origins:power1
give @s[scores={odw:sneaking=0,od:sneaking=1}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
scoreboard players remove @s[scores={bch_cd=1..}] bch_cd 1
execute @s[scores={odw:day=1,od:day=0}] ~~~ scoreboard players set @e[type=origins:origin_extra_wolfwalkt] unusual_sound 0
execute @s[tag=origins:power1_use,tag=!origins:power_full_moon_transformed] ~~~ function origins/powers/full_moon_t/activate_power
execute @s[tag=origins:power1_use,tag=!origins:power_full_moon_transforming] ~~~ function origins/powers/full_moon_t/deactivate_power
execute @s[tag=origins:power_full_moon_transformed] ~~~ function origins/powers/full_moon_t/power_active
tag @s remove origins:power_full_moon_transforming