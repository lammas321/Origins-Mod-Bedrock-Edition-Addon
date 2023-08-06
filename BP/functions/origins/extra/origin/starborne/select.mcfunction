function origins/main/selected_origin
tag @s add origins:selected_extra_starborne_origin
scoreboard objectives add starborne_rb1 dummy
scoreboard players set @s starborne_rb1 0
scoreboard objectives add starborne_rb2 dummy
scoreboard players set @s starborne_rb2 0
function origins/powers/speedy_star/select
function origins/powers/shooting_star/select
function origins/powers/born_from_the_stars/select
function origins/powers/supernova/select
tag @s add origins:damage_modification_fire_2x
tag @s add origins:damage_modification_burning_2x
tag @s add origins:damage_modification_lava_2x
tag @s add origins:damage_modification_magma_2x
function origins/powers/starwatcher/select
function origins/powers/nonviolent/select
tag @s add origins:damage_modification_invulnerable_lightning
function origins/powers/starborne_trail/select