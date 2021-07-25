#rabbit legs
effect @s[scores={odw:moving=0,od:moving=1}] jump_boost 2147483647 1 true
effect @s[scores={odw:moving=0,od:moving=1}] speed 2147483647 0 true
#hole digger
scoreboard players set @s dummy_value 0
execute @s ~~~ detect ~~2~ air 0 scoreboard players add @s dummy_value 1
execute @s ~~~ detect ~~3~ air 0 scoreboard players add @s dummy_value 1
effect @s[tag=!origins:extra_rabbit_wasdigging,scores={dummy_value=0..1}] haste 2147483647 0 true
effect @s[tag=origins:extra_rabbit_wasdigging,scores={dummy_value=2}] haste 0 1 true
tag @s remove origins:extra_rabbit_wasdigging
tag @s[scores={dummy_value=0..1}] add origins:extra_rabbit_wasdigging
#green thumb
scoreboard players remove @s[scores={rabbit_gtcd=1..,od:day=1}] rabbit_gtcd 1
give @s[scores={rabbit_gtcd=0}] bone_meal
scoreboard players set @s[scores={rabbit_gtcd=0}] rabbit_gtcd 1200
#vegetarian
function origins/main/presets/vegetarian