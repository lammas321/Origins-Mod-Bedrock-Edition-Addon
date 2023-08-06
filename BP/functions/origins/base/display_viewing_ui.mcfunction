execute @s[tag=origins:selected_base_human_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:selected_base_human_origin] origins_base_human_view
tag @s[tag=origins:selected_base_human_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_base_avian_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_base_avian_origin] origins_base_avian_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_base_avian_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_base_arachnid_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_base_arachnid_origin] origins_base_arachnid_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_base_arachnid_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_base_elytrian_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_base_elytrian_origin] origins_base_elytrian_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_base_elytrian_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_base_shulk_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_base_shulk_origin] origins_base_shulk_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_base_shulk_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_base_feline_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_base_feline_origin] origins_base_feline_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_base_feline_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_base_enderian_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_base_enderian_origin] origins_base_enderian_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_base_enderian_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_base_merling_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_base_merling_origin] origins_base_merling_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_base_merling_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_base_blazeborn_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_base_blazeborn_origin] origins_base_blazeborn_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_base_blazeborn_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_base_phantom_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_base_phantom_origin] origins_base_phantom_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_base_phantom_origin] remove origins:display_viewing_ui
function origins/main/ui_entity_viewing_test