event entity @s origins:dmg_default
replaceitem entity @s slot.armor.chest 0 elytra 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
scoreboard objectives add elytrian_bcd dummy
scoreboard players set @s elytrian_bcd 0
event entity @s "origins:detect_(underground)()"
event entity @s origins:dmg_multiply_kinetic_1.5
scoreboard players add @e[type=origins:base_origins] c_elytrian 1
tag @s add origins:origin_selected
tag @s add origins:base_elytrian_origin_selected
tag @s remove origins:become_base_elytrian_origin