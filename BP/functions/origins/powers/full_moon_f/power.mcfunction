scoreboard players remove @s[scores={bloodt_cd=1..}] bloodt_cd 1
scoreboard players remove @s[scores={bch_cd=1..}] bch_cd 1
execute @s[scores={odw:day=1,od:day=0}] ~~~ scoreboard players set @e[type=origins:origin_extra_wolfwalkf] unusual_sound 0
execute @s[scores={odw:day=0,od:day=0}] ~~~ scoreboard players set @e[type=origins:origin_extra_wolfwalkf,scores={unusual_sound=2}] unusual_sound 1
execute @s[tag=!origins:power_full_moon_transformed,scores={odw:day=1,od:day=0}] ~~~ function origins/powers/full_moon_f/activate_power
execute @s[tag=origins:power_full_moon_transformed,scores={odw:day=0,od:day=1}] ~~~ function origins/powers/full_moon_f/deactivate_power
execute @s[tag=origins:power_full_moon_transformed] ~~~ function origins/powers/full_moon_f/power_active