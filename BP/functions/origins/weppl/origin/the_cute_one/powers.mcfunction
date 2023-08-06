function origins/powers/cuteness/power
function origins/powers/regenerative_hugs/power
function origins/powers/climbing/power
function origins/powers/tailwind/power
function origins/powers/sleepy_head/power
function origins/powers/carnivore/power
scoreboard players add @s hearts 1
execute @s[scores={hearts=60}] ~~~ execute @p[tag=origins:selected_weppl_llama_origin,r=2] ~~~ particle minecraft:heart_particle ~~2~
scoreboard players set @s[scores={hearts=60}] hearts 0