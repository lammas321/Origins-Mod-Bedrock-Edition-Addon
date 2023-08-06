execute @a[tag=origins:just_joined] ~~~ function origins/base/joined
execute @a[tag=origins:double_initialize_fix] ~~~ function origins/base/double_initialize_fix
execute @a[tag=origins:display_selection_ui,tag=!origins:recount_origins] ~~~ function origins/base/display_selection_ui
execute @a[tag=origins:display_viewing_ui2] ~~~ function origins/base/display_viewing_ui
execute @a[tag=origins:tell_origin_to] ~~~ function origins/base/tell_origin_to
execute @a[tag=origins:random_autoselect] ~~~ function origins/base/random_autoselect
execute @e[type=origins:origin_base_human,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_base_human_origin] add origins:reset_origin
execute @e[type=origins:origin_base_avian,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_base_avian_origin] add origins:reset_origin
execute @e[type=origins:origin_base_arachnid,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_base_arachnid_origin] add origins:reset_origin
execute @e[type=origins:origin_base_elytrian,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_base_elytrian_origin] add origins:reset_origin
execute @e[type=origins:origin_base_shulk,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_base_shulk_origin] add origins:reset_origin
execute @e[type=origins:origin_base_feline,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_base_feline_origin] add origins:reset_origin
execute @e[type=origins:origin_base_enderian,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_base_enderian_origin] add origins:reset_origin
execute @e[type=origins:origin_base_merling,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_base_merling_origin] add origins:reset_origin
execute @e[type=origins:origin_base_blazeborn,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_base_blazeborn_origin] add origins:reset_origin
execute @e[type=origins:origin_base_phantom,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_base_phantom_origin] add origins:reset_origin
execute @a[tag=origins:reset_origin] ~~~ function origins/base/reset_origin
execute @a[tag=origins:selected_base_avian_origin] ~~~ function origins/base/origin/avian/powers
execute @a[tag=origins:selected_base_arachnid_origin] ~~~ function origins/base/origin/arachnid/powers
execute @a[tag=origins:selected_base_elytrian_origin] ~~~ function origins/base/origin/elytrian/powers
execute @a[tag=origins:selected_base_shulk_origin] ~~~ function origins/base/origin/shulk/powers
execute @a[tag=origins:selected_base_feline_origin] ~~~ function origins/base/origin/feline/powers
execute @a[tag=origins:selected_base_enderian_origin] ~~~ function origins/base/origin/enderian/powers
execute @a[tag=origins:selected_base_merling_origin] ~~~ function origins/base/origin/merling/powers
execute @a[tag=origins:selected_base_blazeborn_origin] ~~~ function origins/base/origin/blazeborn/powers
execute @a[tag=origins:selected_base_phantom_origin] ~~~ function origins/base/origin/phantom/powers