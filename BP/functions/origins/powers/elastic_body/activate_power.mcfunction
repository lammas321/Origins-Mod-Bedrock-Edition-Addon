execute @s ~~0.1~ summon origins:explosion ^^^-0.1 origins:explosion_p1_b0_f0
effect @e[r=1.3] resistance 1 255 true
scoreboard players set @s elastic_cd 160
title @s actionbar show_elastic_body_resource_bar
clear @s origins:power1