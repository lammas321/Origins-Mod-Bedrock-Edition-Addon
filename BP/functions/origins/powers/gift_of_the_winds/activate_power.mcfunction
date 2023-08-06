tag @s add origins:main.gift_of_the_winds.velocity
summon origins:main.gift_of_the_winds.velocity ^^^-0.2 origins:leap_target
effect @s[scores={od:gliding=0}] slow_falling 2 0 true
scoreboard players set @s gotw_cd 600
title @s actionbar show_gift_of_the_winds_resource_bar
clear @s origins:power1