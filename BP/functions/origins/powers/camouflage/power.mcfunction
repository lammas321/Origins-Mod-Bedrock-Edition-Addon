scoreboard players add @s[scores={od:sneaking=1,od:moving=0,camo_t=..80}] camo_t 1
effect @s[scores={odw:sneaking=1,od:sneaking=0,camo_t=81}] invisibility 0 1 true
effect @s[scores={odw:moving=0,od:moving=1,camo_t=81}] invisibility 0 1 true
scoreboard players set @s[scores={odw:sneaking=1,od:sneaking=0}] camo_t 0
scoreboard players set @s[scores={odw:moving=0,od:moving=1}] camo_t 0
effect @s[scores={od:sneaking=1,od:moving=0,camo_t=80}] invisibility 2147483647 0 true