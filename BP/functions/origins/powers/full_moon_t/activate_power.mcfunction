event entity @s origins:morph_wolf
effect @s night_vision 2147483647 0 true
give @s[scores={bch_cd=0}] origins:power2 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
effect @s[scores={od:sprinting=1}] speed 2147483647 0 true
tag @s add origins:power_bloodthirsty
event entity @s origins:health_7
execute @e[type=origins:origin_extra_wolfwalkt,scores={unusual_sound=0}] ~~~ tellraw @a {"rawtext":[{"translate":"origins:power.unusual_sound.tame"}]}
scoreboard players set @e[type=origins:origin_extra_wolfwalkt] unusual_sound 1
clear @s origins:power1
tag @s add origins:power_full_moon_transformed
tag @s add origins:power_full_moon_transforming