execute @s[tag=!origins:power_born_from_the_stars,scores={od:day=0,od:underground=0}] ~~~ function origins/powers/born_from_the_stars/activate_power
execute @s[tag=origins:power_born_from_the_stars,tag=!origins:power_born_from_the_stars2,scores={od:sneaking=0}] ~~~ function origins/powers/born_from_the_stars/activate_power2
execute @s[tag=origins:power_born_from_the_stars,scores={od:day=1}] ~~~ function origins/powers/born_from_the_stars/deactivate_power
execute @s[tag=origins:power_born_from_the_stars,scores={od:underground=1}] ~~~ function origins/powers/born_from_the_stars/deactivate_power
execute @s[tag=!origins:power_born_from_the_stars] ~~~ function origins/powers/born_from_the_stars/deactivate_power2
execute @s[tag=origins:power_born_from_the_stars2,scores={od:sneaking=1}] ~~~ function origins/powers/born_from_the_stars/deactivate_power2
execute @s[tag=origins:power_born_from_the_stars,scores={odw:moving=0,od:moving=1}] ~~~ function origins/powers/born_from_the_stars/activate_power
execute @s[tag=origins:power_born_from_the_stars2,scores={odw:moving=0,od:moving=1}] ~~~ function origins/powers/born_from_the_stars/activate_power2