tag @s add origins:main.forward_launch30_blocks.velocity
execute @s ~~~ summon origins:main.forward_launch30_blocks.velocity ~ ~ ~ 
playsound mob.illusioner.prepare_blindness @a[r=20] ~~~ 100 2
function origins/powers/speedy_star/starcircle
tag @s add origins:power_speedy_star
effect @e[tag=!origins:power_speedy_star,r=3] levitation 1 14 true
tag @s remove origins:power_speedy_star
scoreboard players set @s speedystar_cd 120
clear @s origins:power1