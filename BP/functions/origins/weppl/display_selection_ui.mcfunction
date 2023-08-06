scoreboard players operation @s dummy_value = @s origin:selectid
scoreboard players operation @s dummy_value -= @e[type=origins:origin_weppl_llama,c=1] origin:selectid
scoreboard players operation @s[scores={dummy_value=0}] origin:usability = @e[type=origins:origin_weppl_llama,c=1] origin:usability
execute @s[scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_weppl_llama
dialogue open @e[type=origins:ui,c=1] @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_weppl_llama_locked
tag @s[scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_weppl_duck,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_weppl_duck,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_weppl_duck
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_weppl_duck_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_weppl_the_cute_one,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_weppl_the_cute_one,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_weppl_the_cute_one
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_weppl_the_cute_one_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value = @s[tag=origins:display_selection_ui] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui] dummy_value -= @e[type=origins:origin_weppl_troll,c=1] origin:selectid
scoreboard players operation @s[tag=origins:display_selection_ui,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_weppl_troll,c=1] origin:usability
execute @s[tag=origins:display_selection_ui,scores={dummy_value=0}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=1}] origins_weppl_troll
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:display_selection_ui,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=..0}] origins_weppl_troll_locked
tag @s[tag=origins:display_selection_ui,scores={dummy_value=0}] remove origins:display_selection_ui
function origins/main/ui_entity_selection_test