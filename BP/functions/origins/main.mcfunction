execute @a[tag=origins:display_selection_ui,tag=!origins:recount_origins] ~~~ function origins/main/display_selection_ui
execute @a[tag=origins:recount_origins] ~~~ function origins/main/recount_origins
tag @a[tag=origins:first_join] remove origins:first_join
tag @a[tag=origins:just_joined] remove origins:just_joined
execute @a[tag=origins:double_initialize_fix] ~~~ function origins/main/double_initialize_fix
execute @p ~~~ function origins/main/double_initialize_check
tag @a[tag=origins:display_viewing_ui2] remove origins:display_viewing_ui
tag @a[tag=origins:display_viewing_ui2] remove origins:display_viewing_ui2
tag @a[tag=origins:view_origin_of] remove origins:view_origin_of
tag @a[tag=origins:tell_origin_to] remove origins:tell_origin_to
execute @a[tag=origins:reset_origin] ~~~ function origins/main/finish_reset_origin
execute @a[tag=origins:power_used] ~~~ function origins/main/remove_power_used
execute @e[tag=origins:power_hit] ~~~ function origins/main/remove_power_hit
execute @e[tag=origins:ate_food] ~~~ function origins/main/remove_ate_food
clear @a origins:locked_slot
kill @e[type=item,name="§cLocked Slot"]
kill @e[type=item,name="§ePrimary Power"]
kill @e[type=item,name="§eSecondary Power"]
kill @e[type=item,name="§eTertiary Power"]
kill @e[type=item,name="§eQuaternary Power"]
kill @e[type=item,name="§eQuinary Power"]
kill @e[type=item,name="§eSenary Power"]