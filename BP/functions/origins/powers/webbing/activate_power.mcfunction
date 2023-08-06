execute @e[tag=origins:power1_hit_by,r=10,c=1] ~~~ setblock ~~~ web 0 keep
scoreboard players set @s webbing_cd 140
title @s actionbar show_webbing_resource_bar
clear @s origins:power1