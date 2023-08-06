scoreboard players operation @s dummy_value = @s origin:selectid
scoreboard players operation @s dummy_value -= @e[type=origins:origin_base_human,c=1] origin:selectid
scoreboard players operation @s[scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_human,c=1] origin:usability
execute @s[scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_base_human
dialogue open @e[type=origins:ui,c=1] @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_base_human_locked
tag @s[scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_base_avian,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_avian,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_base_avian
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_base_avian_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_base_arachnid,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_arachnid,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_base_arachnid
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_base_arachnid_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_base_elytrian,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_elytrian,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_base_elytrian
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_base_elytrian_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_base_shulk,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_shulk,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_base_shulk
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_base_shulk_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_base_feline,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_feline,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_base_feline
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_base_feline_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_base_enderian,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_enderian,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_base_enderian
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_base_enderian_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_base_merling,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_merling,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_base_merling
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_base_merling_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_base_blazeborn,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_blazeborn,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_base_blazeborn
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_base_blazeborn_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_base_phantom,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_phantom,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_base_phantom
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_base_phantom_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
function origins/main/ui_entity_selection_test