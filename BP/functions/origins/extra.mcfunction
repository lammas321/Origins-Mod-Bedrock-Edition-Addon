execute @a[tag=origins:just_joined] ~~~ function origins/extra/joined
execute @a[tag=origins:double_initialize_fix] ~~~ function origins/extra/double_initialize_fix
execute @a[tag=origins:display_selection_ui,tag=!origins:recount_origins] ~~~ function origins/extra/display_selection_ui
execute @a[tag=origins:display_viewing_ui2] ~~~ function origins/extra/display_viewing_ui
execute @a[tag=origins:tell_origin_to] ~~~ function origins/extra/tell_origin_to
execute @a[tag=origins:random_autoselect] ~~~ function origins/extra/random_autoselect
execute @e[type=origins:origin_extra_fox,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_extra_fox_origin] add origins:reset_origin
execute @e[type=origins:origin_extra_rabbit,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_extra_rabbit_origin] add origins:reset_origin
execute @e[type=origins:origin_extra_slime,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_extra_slime_origin] add origins:reset_origin
execute @e[type=origins:origin_extra_bee,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_extra_bee_origin] add origins:reset_origin
execute @e[type=origins:origin_extra_starborne,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_extra_starborne_origin] add origins:reset_origin
execute @e[type=origins:origin_extra_tmotd,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_extra_tmotd_origin] add origins:reset_origin
execute @e[type=origins:origin_extra_witherin,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_extra_witherin_origin] add origins:reset_origin
execute @e[type=origins:origin_extra_wolfwalkt,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_extra_wolfwalkt_origin] add origins:reset_origin
execute @e[type=origins:origin_extra_wolfwalkf,scores={origin:usability=-1}] ~~~ tag @a[tag=origins:selected_extra_wolfwalkf_origin] add origins:reset_origin
execute @a[tag=origins:reset_origin] ~~~ function origins/extra/reset_origin
execute @a[tag=origins:selected_extra_fox_origin] ~~~ function origins/extra/origin/fox/powers
execute @a[tag=origins:selected_extra_rabbit_origin] ~~~ function origins/extra/origin/rabbit/powers
execute @a[tag=origins:selected_extra_slime_origin] ~~~ function origins/extra/origin/slime/powers
execute @a[tag=origins:selected_extra_bee_origin] ~~~ function origins/extra/origin/bee/powers
execute @a[tag=origins:selected_extra_starborne_origin] ~~~ function origins/extra/origin/starborne/powers
execute @a[tag=origins:selected_extra_tmotd_origin] ~~~ function origins/extra/origin/tmotd/powers
execute @a[tag=origins:selected_extra_witherin_origin] ~~~ function origins/extra/origin/witherin/powers
execute @a[tag=origins:selected_extra_wolfwalkt_origin] ~~~ function origins/extra/origin/wolfwalkt/powers
execute @a[tag=origins:selected_extra_wolfwalkf_origin] ~~~ function origins/extra/origin/wolfwalkf/powers