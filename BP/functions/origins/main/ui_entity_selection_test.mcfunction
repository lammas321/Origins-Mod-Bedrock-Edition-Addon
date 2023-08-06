tag @s add origins:ui_entity_selection_test
execute @e[type=origins:ui] ~~~ tag @a[tag=origins:ui_entity_selection_test] remove origins:ui_entity_selection_test
tag @s[tag=origins:ui_entity_selection_test] add origins:display_selection_ui
tag @s[m=c] add origins:gamemode_c
tag @s[m=a] add origins:gamemode_a
gamemode s @s