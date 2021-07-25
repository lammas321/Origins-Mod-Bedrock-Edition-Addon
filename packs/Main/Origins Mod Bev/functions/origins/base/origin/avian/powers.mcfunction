#featherweight
effect @s[scores={odw:sneaking=1,od:sneaking=0}] slow_falling 2147483647 0 true
effect @s[scores={odw:sneaking=0,od:sneaking=1}] slow_falling 0 1 true
#tailwind
effect @s[scores={odw:moving=0,od:moving=1}] speed 2147483647 0 true
#oviparous
give @s[scores={odw:sleeping=1,od:sleeping=0,odw:day=0,od:day=1}] egg
#fresh air
execute @s[scores={od:sleeping=1},y=0,r=87] ~~~ fill ~-3~-3~-3 ~3~3~3 air 0 replace bed
scoreboard players set @s[scores={od:sleeping=1},y=0,r=87] od:sleeping 0
#vegetarian
function origins/main/presets/vegetarian