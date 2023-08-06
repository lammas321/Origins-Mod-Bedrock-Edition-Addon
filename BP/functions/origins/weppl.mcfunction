execute @a[tag=origins:just_joined] ~~~ function origins/weppl/joined
execute @a[tag=origins:double_initialize_fix] ~~~ function origins/weppl/double_initialize_fix
execute @a[tag=origins:display_selection_ui,tag=!origins:recount_origins] ~~~ function origins/weppl/display_selection_ui
execute @a[tag=origins:display_viewing_ui2] ~~~ function origins/weppl/display_viewing_ui
execute @a[tag=origins:tell_origin_to] ~~~ function origins/weppl/tell_origin_to
execute @a[tag=origins:random_autoselect] ~~~ function origins/weppl/random_autoselect
execute @e[type=origins:origin_weppl_llama,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_weppl_llama_origin] add origins:reset_origin
execute @e[type=origins:origin_weppl_duck,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_weppl_duck_origin] add origins:reset_origin
execute @e[type=origins:origin_weppl_the_cute_one,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_weppl_the_cute_one_origin] add origins:reset_origin
execute @e[type=origins:origin_weppl_troll,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_weppl_troll_origin] add origins:reset_origin
execute @a[tag=origins:reset_origin] ~~~ function origins/weppl/reset_origin
execute @a[tag=origins:selected_weppl_llama_origin] ~~~ function origins/weppl/origin/llama/powers
execute @a[tag=origins:selected_weppl_duck_origin] ~~~ function origins/weppl/origin/duck/powers
execute @a[tag=origins:selected_weppl_the_cute_one_origin] ~~~ function origins/weppl/origin/the_cute_one/powers
execute @a[tag=origins:selected_weppl_troll_origin] ~~~ function origins/weppl/origin/troll/powers