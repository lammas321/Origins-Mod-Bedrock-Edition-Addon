event entity @s origins:dmg_default
give @s trident 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
event entity @s "origins:detect_(underwater)()"
effect @s[scores={od:underwater=1}] strength 2147483647 0 true
effect @s[scores={od:underwater=1}] haste 2147483647 4 true
scoreboard objectives add tmotd_ecd dummy
scoreboard players set @s tmotd_ecd 0
give @s origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
event entity @s origins:breath_water_short
effect @s water_breathing 30 0 true
effect @s[scores={od:water=0}] slowness 2147483647 1 true
event entity @s origins:swim_speed_1.5
scoreboard players add @e[type=origins:extra_origins] c_tmotd 1
tag @s add origins:origin_selected
tag @s add origins:extra_tmotd_origin_selected
tag @s remove origins:become_extra_tmotd_origin