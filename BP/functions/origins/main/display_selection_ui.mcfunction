execute @s[scores={origin:selectid=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
dialogue open @e[type=origins:ui,c=1] @s[scores={origin:selectid=-1}] origins_random
tag @s[scores={origin:selectid=-1}] remove origins:display_selection_ui
function origins/main/ui_entity_selection_test
execute @s[tag=origins:ui_entity_selection_test] ~~~ summon origins:ui ~ -63 ~
tag @s[tag=origins:ui_entity_selection_test] remove origins:ui_entity_test
tellraw @s[tag=origins:display_selection_ui] {"rawtext":[{"translate":"origins:display_selection_ui_failed"}]}
tag @s[tag=origins:display_selection_ui] remove origins:display_selection_ui