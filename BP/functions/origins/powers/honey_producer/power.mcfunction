scoreboard players remove @s[scores={honeyprod_cd=1..}] honeyprod_cd 1
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,honeyprod_cd=0}] ~~~ detect ~~~ yellow_flower 0 clear @s glass_bottle 0 1
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,honeyprod_cd=0}] ~~~ detect ~~~ yellow_flower 0 give @s honey_bottle
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,honeyprod_cd=0}] ~~~ detect ~~~ yellow_flower 0 scoreboard players set @s honeyprod_cd 600
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,honeyprod_cd=0}] ~~~ detect ~~~ red_flower -1 clear @s glass_bottle 0 1
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,honeyprod_cd=0}] ~~~ detect ~~~ red_flower -1 give @s honey_bottle
execute @s[scores={od:hold=427,odw:sneaking=0,od:sneaking=1,honeyprod_cd=0}] ~~~ detect ~~~ red_flower -1 scoreboard players set @s honeyprod_cd 600