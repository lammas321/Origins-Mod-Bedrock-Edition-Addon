clear @s origins:power1
effect @s strength 0 2 true
replaceitem entity @s slot.armor.head 0 air
event entity @s origins:scale_1
effect @s slowness 0 1 true
event entity @s origins:dmg_over_time_stop
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_witherin 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_witherin_origin_selected