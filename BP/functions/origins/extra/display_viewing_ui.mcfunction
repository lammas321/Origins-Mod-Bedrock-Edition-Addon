execute @s[tag=origins:selected_extra_fox_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:selected_extra_fox_origin] origins_extra_fox_view
tag @s[tag=origins:selected_extra_fox_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_rabbit_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_rabbit_origin] origins_extra_rabbit_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_rabbit_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_slime_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_slime_origin] origins_extra_slime_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_slime_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_bee_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_bee_origin] origins_extra_bee_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_bee_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_starborne_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_starborne_origin] origins_extra_starborne_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_starborne_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_tmotd_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_tmotd_origin] origins_extra_tmotd_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_tmotd_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_witherin_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_witherin_origin] origins_extra_witherin_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_witherin_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_wolfwalkt_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_wolfwalkt_origin] origins_extra_wolfwalkt_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_wolfwalkt_origin] remove origins:display_viewing_ui
execute @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_wolfwalkf_origin] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_wolfwalkf_origin] origins_extra_wolfwalkf_view
tag @s[tag=origins:display_viewing_ui,tag=origins:selected_extra_wolfwalkf_origin] remove origins:display_viewing_ui
function origins/main/ui_entity_viewing_test