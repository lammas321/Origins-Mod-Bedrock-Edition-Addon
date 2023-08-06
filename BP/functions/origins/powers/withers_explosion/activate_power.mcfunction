summon origins:explosion ~~~ origins:explosion_p4_b2_f0
effect @s resistance 3 255 true
particle origins:withers_explosion ~~~
effect @e[tag=!origins:selected_extra_witherin_origin,r=10] wither 4 2 true
scoreboard players set @s wither_cd 1200
title @s actionbar show_withers_explosion_resource_bar
clear @s origins:power1