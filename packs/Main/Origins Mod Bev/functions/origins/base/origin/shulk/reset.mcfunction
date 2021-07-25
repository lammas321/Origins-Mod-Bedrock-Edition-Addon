tag @s remove origins:using_spare_inventory
effect @s resistance 0 2 true
effect @s haste 0 1 true
effect @s[scores={odw:sprinting=1}] hunger 0 1 true
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:base_origins] c_shulk 1
tag @s remove origins:origin_selected
tag @s remove origins:base_shulk_origin_selected