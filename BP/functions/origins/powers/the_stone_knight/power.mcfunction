tag @s[scores={od:hold=312}] add origins:power_the_stone_knight_holding
tag @s[scores={od:hold=313}] add origins:power_the_stone_knight_holding
tag @s[scores={od:hold=314}] add origins:power_the_stone_knight_holding
tag @s[scores={od:hold=315}] add origins:power_the_stone_knight_holding
tag @s[scores={od:hold=330}] add origins:power_the_stone_knight_holding
effect @s[tag=!origins:power_the_stone_knight_was_holding,tag=origins:power_the_stone_knight_holding] strength 2147483647 0 true
effect @s[tag=!origins:power_the_stone_knight_was_holding,tag=origins:power_the_stone_knight_holding] haste 2147483647 0 true
effect @s[tag=origins:power_the_stone_knight_holding,scores={odw:attacking=0,od:attacking=1}] strength 2147483647 0 true
effect @s[tag=origins:power_the_stone_knight_holding,scores={odw:attacking=0,od:attacking=1}] haste 2147483647 0 true
effect @s[tag=origins:power_the_stone_knight_was_holding,tag=!origins:power_the_stone_knight_holding] strength 0 1 true
effect @s[tag=origins:power_the_stone_knight_was_holding,tag=!origins:power_the_stone_knight_holding] haste 0 1 true
tag @s[tag=origins:power_the_stone_knight_holding] add origins:power_the_stone_knight_was_holding
tag @s[tag=!origins:power_the_stone_knight_holding] remove origins:power_the_stone_knight_was_holding
tag @s remove origins:power_the_stone_knight_holding