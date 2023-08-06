tag @s add origins:main.launch15_blocks.velocity
execute @s ~~~ summon origins:main.launch15_blocks.velocity
effect @s[scores={od:gliding=0}] slow_falling 4 0 true
scoreboard players set @s duck_bpcd 600
title @s actionbar show_boom_poo_resource_bar
clear @s origins:power1