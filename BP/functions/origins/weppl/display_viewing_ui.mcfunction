execute @s[tag=origins:selected_weppl_llama_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:selected_weppl_llama_origin] origins_weppl_llama_view
tag @s[tag=origins:selected_weppl_llama_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_weppl_duck_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_weppl_duck_origin] origins_weppl_duck_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_weppl_duck_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_weppl_the_cute_one_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_weppl_the_cute_one_origin] origins_weppl_the_cute_one_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_weppl_the_cute_one_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_weppl_troll_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_weppl_troll_origin] origins_weppl_troll_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_weppl_troll_origin] remove origins:display_viewing_ui
function origins/main/ui_entity_viewing_test