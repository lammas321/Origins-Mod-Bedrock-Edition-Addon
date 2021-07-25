replaceitem entity @s slot.armor.chest 0 air
effect @s[scores={odw:gliding=1}] strength 0 2 true
effect @s[tag=origins:base_elytrian_wasclaust] slowness 0 2 true
effect @s[tag=origins:base_elytrian_wasclaust] weakness 0 2 true
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:base_origins] c_elytrian 1
tag @s remove origins:origin_selected
tag @s remove origins:base_elytrian_origin_selected