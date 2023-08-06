event entity @s origins:morph_wolf_angry
give @s[scores={bch_cd=0}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
effect @s[scores={od:sprinting=1}] speed 2147483647 1 true
tag @s add origins:power_bloodthirsty
event entity @s origins:health_7
execute @e[type=origins:origin_extra_wolfwalkf,scores={unusual_sound=0}] ~~~ tellraw @a {"rawtext":[{"translate":"origins:power.unusual_sound.feral"}]}
scoreboard players set @e[type=origins:origin_extra_wolfwalkf] unusual_sound 2
title @s actionbar origins:show_red_tint_25
tag @s add origins:power_full_moon_transformed