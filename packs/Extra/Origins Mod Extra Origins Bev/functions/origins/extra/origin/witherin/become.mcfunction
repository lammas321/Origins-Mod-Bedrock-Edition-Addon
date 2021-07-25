event entity @s origins:dmg_default
scoreboard objectives add witherin_wb dummy
scoreboard players set @s witherin_wb 0
give @s origins:power1
scoreboard objectives add witherin_ff dummy
scoreboard players set @s witherin_ff 0
effect @s[scores={od:hold=312}] strength 2147483647 1 true
replaceitem entity @s slot.armor.head 0 skull 1 1 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
event entity @s origins:scale_1.25
effect @s slowness 2147483647 0 true
tag @s add origins:nether_spawn1
scoreboard players add @e[type=origins:extra_origins] c_witherin 1
tag @s add origins:origin_selected
tag @s add origins:extra_witherin_origin_selected
tag @s remove origins:become_extra_witherin_origin