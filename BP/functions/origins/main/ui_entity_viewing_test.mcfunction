tag @s add origins:ui_entity_viewing_test
execute @e[type=origins:ui] ~~~ tag @a[tag=origins:ui_entity_viewing_test] remove origins:ui_entity_viewing_test
execute @s[tag=origins:ui_entity_viewing_test] ~~~ summon origins:ui ~ -63 ~
tellraw @s[tag=origins:ui_entity_viewing_test] {"rawtext":[{"translate":"origins:display_viewing_ui_failed"}]}
tag @s[tag=origins:ui_entity_viewing_test] remove origins:ui_entity_viewing_test