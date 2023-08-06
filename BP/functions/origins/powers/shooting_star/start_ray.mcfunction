tag @s add origins:power_shooting_star_shooter
summon origins:position shooting_star
tp @e[type=origins:position,name=shooting_star] ~~~ facing ^^^1
scoreboard players set @e[type=origins:position,name=shooting_star] shootstar_h 0
scoreboard players set @e[type=origins:position,name=shooting_star] shootstar_d 0
execute @e[type=origins:position,name=shooting_star] ~~1.5~ function origins/powers/shooting_star/ray
tag @s remove origins:power_shooting_star_shooter
kill @e[type=origins:position,name=shooting_star]
playsound mob.illusioner.mirror_move @a ~~~ 1 2