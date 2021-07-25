event entity @s origins:dmg_default
scoreboard objectives add llama_scd dummy
scoreboard players set @s llama_scd 0
give @s origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
event entity @s origins:rideable_by_players
scoreboard players add @e[type=origins:weirdppl_origins] c_llama 1
tag @s add origins:origin_selected
tag @s add origins:weirdppl_llama_origin_selected
tag @s remove origins:become_weirdppl_llama_origin