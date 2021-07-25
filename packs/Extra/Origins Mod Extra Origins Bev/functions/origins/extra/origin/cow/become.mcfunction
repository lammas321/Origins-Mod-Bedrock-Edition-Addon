event entity @s origins:dmg_default
replaceitem entity @s slot.armor.head 0 leather_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @s slot.armor.chest 0 leather_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @s slot.armor.legs 0 leather_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @s slot.armor.feet 0 leather_boots 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
scoreboard objectives add cow_egcd dummy
scoreboard players set @s cow_egcd 0
scoreboard players add @e[type=origins:extra_origins] c_cow 1
tag @s add origins:origin_selected
tag @s add origins:extra_cow_origin_selected
tag @s remove origins:become_extra_cow_origin