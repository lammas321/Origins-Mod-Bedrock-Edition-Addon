tag @s add origins:main.forward_launch20_blocks.velocity
execute @s ~~~ summon origins:main.forward_launch20_blocks.velocity ~ ~ ~ 
effect @s strength 2 0 true
effect @s hunger 1 9 true
scoreboard players set @s pounce_cd 60
title @s actionbar show_pounce_resource_bar
clear @s origins:power1