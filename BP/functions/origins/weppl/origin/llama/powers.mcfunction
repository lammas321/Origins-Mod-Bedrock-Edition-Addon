function origins/powers/llama_spit/power
function origins/powers/extra_inventory/power
function origins/powers/rideable/power
function origins/powers/quick/power
function origins/powers/vegetarian/power
scoreboard players add @s hearts 1
execute @s[scores={hearts=60}] ~~~ execute @p[tag=origins:selected_weppl_the_cute_one_origin,r=2] ~~~ particle minecraft:heart_particle ~~2~
scoreboard players set @s[scores={hearts=60}] hearts 0