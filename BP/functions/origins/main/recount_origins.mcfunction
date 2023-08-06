scoreboard players set @e[type=origins:origins] origin:origins 0
execute @e[family=origin_entity] ~~~ scoreboard players add @e[type=origins:origins] origin:origins 1
scoreboard players set @e[family=origin_entity] origin:selectid -1
execute @e[family=no_impact_origin] ~~~ function origins/main/set_origin_selectid
execute @e[family=low_impact_origin] ~~~ function origins/main/set_origin_selectid
execute @e[family=medium_impact_origin] ~~~ function origins/main/set_origin_selectid
execute @e[family=high_impact_origin] ~~~ function origins/main/set_origin_selectid
tag @s remove origins:recount_origins