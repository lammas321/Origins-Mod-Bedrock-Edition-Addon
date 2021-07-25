effect @s[scores={odw:health=..8}] speed 0 2 true
replaceitem entity @s slot.armor.head 0 air
replaceitem entity @s slot.armor.chest 0 air
replaceitem entity @s slot.armor.legs 0 air
replaceitem entity @s slot.armor.feet 0 air
event entity @s origins:dmg_immunity_all
scoreboard players remove @e[type=origins:extra_origins] c_cow 1
tag @s remove origins:origin_selected
tag @s remove origins:extra_cow_origin_selected