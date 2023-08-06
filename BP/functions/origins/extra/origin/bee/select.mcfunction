function origins/main/selected_origin
tag @s add origins:selected_extra_bee_origin
scoreboard objectives add bee_rb1 dummy
scoreboard players set @s bee_rb1 0
scoreboard objectives add bee_rb2 dummy
scoreboard players set @s bee_rb2 0
scoreboard objectives add bee_rb3 dummy
scoreboard players set @s bee_rb3 0
scoreboard objectives add bee_rb4 dummy
scoreboard players set @s bee_rb4 0
function origins/powers/honey_producer/select
function origins/powers/bee_wings/select
function origins/powers/the_bee_of_life/select
function origins/powers/stinger/select
function origins/powers/pollen_power/select
function origins/powers/kamikaze/select
event entity @s origins:scale_0.75
event entity @s origins:health_5