event entity @s origins:dmg_default
give @s flint_and_steel 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
event entity @s "origins:dmg_(multiply_attack_1.5,immunity_fire_tick,multiply_explosion_0.5,multiply_kinetic_0.5,multiply_lava_0.5)"
scoreboard objectives add troll_epcd dummy
scoreboard players set @s troll_epcd 0
event entity @s origins:family_terrorist
scoreboard players add @e[type=origins:weirdppl_origins] c_troll 1
tag @s add origins:origin_selected
tag @s add origins:weirdppl_troll_origin_selected
tag @s remove origins:become_weirdppl_troll_origin