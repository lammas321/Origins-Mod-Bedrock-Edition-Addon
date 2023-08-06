tag @s[tag=origins:selected_base_shulk_origin] add origins:power_break_stone
effect @s[tag=origins:selected_base_shulk_origin] hunger 0 1 true
event entity @s[tag=origins:selected_base_shulk_origin] origins:exhaustion_1.5x
tag @s[tag=origins:selected_base_feline_origin] remove origins:power_catlike_appearance
tag @s[tag=origins:selected_base_feline_origin] add origins:mob_creeper_neutral
tag @s[tag=origins:selected_base_feline_origin] add origins:mob_creeper_scare
tag @s[tag=origins:selected_base_feline_origin] add origins:mob_phantom_scare
scoreboard players set @s origin:base_ver 1003005