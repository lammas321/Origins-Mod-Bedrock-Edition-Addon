#joined/update
scoreboard objectives add weirdppl_ver dummy
scoreboard players add @a weirdppl_ver 0
execute @p[tag=origins:just_joined] ~~~ function origins/weirdppl/joined
execute @p[tag=origins:update] ~~~ function origins/weirdppl/origins_update
execute @p[scores={weirdppl_ver=1..119}] ~~~ function origins/weirdppl/update
scoreboard players set @p[scores={weirdppl_ver=1..119}] weirdppl_ver 120

#initialize
scoreboard players set @e[type=origins:weirdppl_origins] origin_ecount 1
tag @e[type=origins:weirdppl_origins] remove origins:weirdppl_counter
tag @e[type=origins:weirdppl_origins,r=3,c=1] add origins:weirdppl_counter
scoreboard players operation @e[type=origins:weirdppl_origins,tag=origins:weirdppl_counter] origin_ecount += @e[type=origins:weirdppl_origins,tag=!origins:weirdppl_counter] origin_ecount
execute @e[type=origins:weirdppl_origins,tag=origins:weirdppl_counter,scores={origin_ecount=2..}] ~~~ kill @e[type=origins:weirdppl_origins,tag=!origins:weirdppl_counter]
tag @a remove origins:weirdppl_summmon
tag @p[r=999999999] add origins:weirdppl_summon
execute @e[type=origins:weirdppl_origins] ~~~ tag @a remove origins:weirdppl_summon
execute @p[tag=origins:weirdppl_summon] ~~~ summon origins:weirdppl_origins 0 1 0
execute @p[tag=origins:weirdppl_summon] ~~~ function origins/weirdppl/make_scoreboards
scoreboard players add @e[type=origins:weirdppl_origins] c_duck 0
scoreboard players add @e[type=origins:weirdppl_origins] t_duck 0
scoreboard players add @e[type=origins:weirdppl_origins] c_llama 0
scoreboard players add @e[type=origins:weirdppl_origins] t_llama 0
scoreboard players add @e[type=origins:weirdppl_origins] c_the_cute_one 0
scoreboard players add @e[type=origins:weirdppl_origins] t_the_cute_one 0
scoreboard players add @e[type=origins:weirdppl_origins] c_troll 0
scoreboard players add @e[type=origins:weirdppl_origins] t_troll 0
scoreboard players set @e[type=origins:weirdppl_origins] origin_count 4
scoreboard players add @e[type=origins:weirdppl_origins] origin_groupid 0

#group selected
tag @a remove origins:weirdppl_group_selected
tag @e[type=origins:weirdppl_origins] remove origins:weirdppl_setgroupid
tag @e[type=origins:weirdppl_origins,scores={origin_groupid=0..1}] add origins:weirdppl_setgroupid
scoreboard players operation @e[type=origins:weirdppl_origins,tag=origins:weirdppl_setgroupid] origin_groupid > @e[family=origin_group] origin_groupid
scoreboard players add @e[type=origins:weirdppl_origins,tag=origins:weirdppl_setgroupid] origin_groupid 1
scoreboard players operation @a origin_groupid -= @e[type=origins:weirdppl_origins,c=1] origin_groupid
tag @a[scores={origin_groupid=0}] add origins:weirdppl_group_selected
scoreboard players operation @a origin_groupid += @e[type=origins:weirdppl_origins,c=1] origin_groupid
scoreboard players set @a[tag=origins:weirdppl_group_selected,scores={origin_selectid=5..}] origin_selectid 4

#origin reset
execute @a[tag=origins:weirdppl_group_selected,tag=origins:weirdppl_duck_origin_selected,tag=origins:reset_origin] ~~~ function origins/weirdppl/origin/duck/reset
execute @a[tag=origins:weirdppl_group_selected,tag=origins:weirdppl_llama_origin_selected,tag=origins:reset_origin] ~~~ function origins/weirdppl/origin/llama/reset
execute @a[tag=origins:weirdppl_group_selected,tag=origins:weirdppl_the_cute_one_origin_selected,tag=origins:reset_origin] ~~~ function origins/weirdppl/origin/the_cute_one/reset
execute @a[tag=origins:weirdppl_group_selected,tag=origins:weirdppl_troll_origin_selected,tag=origins:reset_origin] ~~~ function origins/weirdppl/origin/troll/reset
execute @e[type=origins:weirdppl_origins,scores={t_duck=2}] ~~~ execute @a[tag=origins:weirdppl_group_selected,tag=origins:weirdppl_duck_origin_selected] ~~~ function origins/weirdppl/origin/duck/reset
execute @e[type=origins:weirdppl_origins,scores={t_llama=2}] ~~~ execute @a[tag=origins:weirdppl_group_selected,tag=origins:weirdppl_llama_origin_selected] ~~~ function origins/weirdppl/origin/llama/reset
execute @e[type=origins:weirdppl_origins,scores={t_the_cute_one=2}] ~~~ execute @a[tag=origins:weirdppl_group_selected,tag=origins:weirdppl_the_cute_one_origin_selected] ~~~ function origins/weirdppl/origin/the_cute_one/reset
execute @e[type=origins:weirdppl_origins,scores={t_troll=2}] ~~~ execute @a[tag=origins:weirdppl_group_selected,tag=origins:weirdppl_troll_origin_selected] ~~~ function origins/weirdppl/origin/troll/reset

#origin powers
execute @a[tag=origins:weirdppl_duck_origin_selected] ~~~ function origins/weirdppl/origin/duck/powers
execute @a[tag=origins:weirdppl_llama_origin_selected] ~~~ function origins/weirdppl/origin/llama/powers
tag @e remove origins:weirdppl_the_cute_one_face_cuteness
tag @e remove origins:weirdppl_the_cute_one_facing_cuteness
tag @e[type=origins:position,name=the_cute_one_cuteness] remove origins:used
tag @e[type=origins:position,name=the_cute_one_sh] remove origins:used
execute @a[tag=origins:weirdppl_the_cute_one_origin_selected] ~~~ function origins/weirdppl/origin/the_cute_one/powers
tp @e[type=origins:position,name=the_cute_one_cuteness,tag=!origins:used] ~ -100~
kill @e[type=origins:position,name=the_cute_one_cuteness,tag=!origins:used]
execute @e[type=origins:position,name=the_cute_one_cuteness,tag=origins:used] ~~~ tp @e[tag=origins:weirdppl_the_cute_one_face_cuteness,r=1,c=1] ~~~ facing @p[tag=origins:weirdppl_the_cute_one_origin_selected,scores={cute_one_ccd=1201..}]
titleraw @a[tag=origins:weirdppl_the_cute_one_face_cuteness] actionbar {"rawtext":[{"translate":"origins:weirdppl_the_cute_one.cuteness_msg"}]}
tp @e[type=origins:position,name=the_cute_one_sh,tag=!origins:used] ~ -100~
kill @e[type=origins:position,name=the_cute_one_sh,tag=!origins:used]
execute @a[tag=origins:weirdppl_troll_origin_selected] ~~~ function origins/weirdppl/origin/troll/powers

#origin selected
execute @e[type=origins:weirdppl_origins,scores={t_duck=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=1},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:weirdppl_group_selected] ~~~ function origins/weirdppl/origin/duck/become
execute @e[type=origins:weirdppl_origins,scores={t_llama=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=2},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:weirdppl_group_selected] ~~~ function origins/weirdppl/origin/llama/become
execute @e[type=origins:weirdppl_origins,scores={t_the_cute_one=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=3},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:weirdppl_group_selected] ~~~ function origins/weirdppl/origin/the_cute_one/become
execute @e[type=origins:weirdppl_origins,scores={t_troll=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=4},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:weirdppl_group_selected] ~~~ function origins/weirdppl/origin/troll/become
execute @a[tag=origins:become_weirdppl_duck_origin,tag=!origins:reset_origin] ~~~ function origins/weirdppl/origin/duck/become
execute @a[tag=origins:become_weirdppl_llama_origin,tag=!origins:reset_origin] ~~~ function origins/weirdppl/origin/llama/become
execute @a[tag=origins:become_weirdppl_the_cute_one_origin,tag=!origins:reset_origin] ~~~ function origins/weirdppl/origin/the_cute_one/become
execute @a[tag=origins:become_weirdppl_troll_origin,tag=!origins:reset_origin] ~~~ function origins/weirdppl/origin/troll/become

#origin selection items
replaceitem entity @a[tag=origins:weirdppl_group_selected,tag=!origins:origin_selected,tag=!origins:origin_group_selected] slot.hotbar 4 keep origins:weirdppl_origins 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:weirdppl_group_selected] origins:weirdppl_origins
clear @a[tag=origins:origin_selected] origins:weirdppl_origins
clear @a[tag=origins:origin_group_selected] origins:weirdppl_origins
replaceitem entity @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] slot.hotbar 4 keep origins:origin_duck 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:weirdppl_group_selected] origins:origin_duck
clear @a[tag=!origins:origin_group_selected] origins:origin_duck
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..0}] origins:origin_duck
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=2..}] origins:origin_duck
replaceitem entity @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] slot.hotbar 4 keep origins:origin_llama 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:weirdppl_group_selected] origins:origin_llama
clear @a[tag=!origins:origin_group_selected] origins:origin_llama
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..1}] origins:origin_llama
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=3..}] origins:origin_llama
replaceitem entity @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] slot.hotbar 4 keep origins:origin_the_cute_one 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:weirdppl_group_selected] origins:origin_the_cute_one
clear @a[tag=!origins:origin_group_selected] origins:origin_the_cute_one
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..2}] origins:origin_the_cute_one
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=4..}] origins:origin_the_cute_one
replaceitem entity @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] slot.hotbar 4 keep origins:origin_troll 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:weirdppl_group_selected] origins:origin_troll
clear @a[tag=!origins:origin_group_selected] origins:origin_troll
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..3}] origins:origin_troll
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=5..}] origins:origin_troll

#origin availability
execute @e[type=origins:weirdppl_origins,scores={t_duck=0}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Duck\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_duck"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_duck=1}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Duck\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_duck"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_duck=2}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Duck\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_duck"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_llama=0}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Llama\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_llama"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_llama=1}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Llama\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_llama"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_llama=2}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Llama\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_llama"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_the_cute_one=0}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"The Cute One\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_the_cute_one"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_the_cute_one=1}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"The Cute One\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_the_cute_one"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_the_cute_one=2}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"The Cute One\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_the_cute_one"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_troll=0}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Troll\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_troll"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_troll=1}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Troll\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_troll"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:weirdppl_origins,scores={t_troll=2}] ~~~ titleraw @a[tag=origins:weirdppl_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Troll\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:weirdppl_origins]","objective":"c_troll"}},{"translate":"origins:origin_selection.availability3b"}]}

#book
execute @a[scores={od:hold=100001,od:use_time=1},tag=origins:weirdppl_group_selected] ~~~ function origins_admin/weirdppl/book
scoreboard players set @a[scores={od:hold=100001,od:use_time=1},tag=origins:weirdppl_group_selected] od:use_time 2
