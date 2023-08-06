scoreboard players operation @s dummy_value = @s origin:selectid
scoreboard players operation @s dummy_value -= @e[type=origins:origin_extra_fox,c=1] origin:selectid
scoreboard players operation @s[scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_fox,c=1] origin:usability
execute @s[scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_extra_fox
dialogue open @e[type=origins:ui,c=1] @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_extra_fox_locked
tag @s[scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_extra_rabbit,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_rabbit,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_extra_rabbit
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_extra_rabbit_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_extra_slime,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_slime,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_extra_slime
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_extra_slime_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_extra_bee,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_bee,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_extra_bee
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_extra_bee_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_extra_starborne,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_starborne,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_extra_starborne
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_extra_starborne_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_extra_tmotd,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_tmotd,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_extra_tmotd
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_extra_tmotd_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_extra_witherin,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_witherin,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_extra_witherin
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_extra_witherin_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_extra_wolfwalkt,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_wolfwalkt,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_extra_wolfwalkt
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_extra_wolfwalkt_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_extra_wolfwalkf,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_wolfwalkf,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_extra_wolfwalkf
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_extra_wolfwalkf_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
function origins/main/ui_entity_selection_test