event entity @s origins:dmg_default
scoreboard objectives add starborne_shs dummy
scoreboard players set @s starborne_shs 0
give @s origins:power2 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
event entity @s "origins:detect_(underground)()"
effect @s[scores={od:day=0,od:underground=0}] regeneration 2147483647 1 true
effect @s[scores={od:day=0,od:underground=0}] speed 2147483647 0 true
effect @s[scores={od:day=0,od:underground=0}] jump_boost 2147483647 3 true
effect @s[scores={od:day=0,od:underground=0,od:sneaking=0}] slow_falling 2147483647 1 true
scoreboard objectives add starborne_ss dummy
scoreboard players set @s starborne_ss 0
give @s origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
event entity @s "origins:dmg_(multiply_fire_2,multiply_fire_tick_2,multiply_lava_2,multiply_magma_2)"
scoreboard objectives add starborne_sn dummy
scoreboard players set @s starborne_sn 0
effect @s[scores={od:day=1}] slowness 2147483647 0 true
effect @s[scores={od:underground=1}] slowness 2147483647 0 true
scoreboard objectives add starborne_ko dummy
scoreboard players set @s starborne_ko 0
scoreboard players add @e[type=origins:extra_origins] c_starborne 1
tag @s add origins:origin_selected
tag @s add origins:extra_starborne_origin_selected
tag @s remove origins:become_extra_starborne_origin