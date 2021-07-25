#joined/update
scoreboard objectives add base_ver dummy
scoreboard players add @a base_ver 0
execute @p[tag=origins:just_joined] ~~~ function origins/base/joined
execute @p[tag=origins:update] ~~~ function origins/base/origins_update
execute @p[scores={base_ver=1..119}] ~~~ function origins/base/update
scoreboard players set @p[scores={base_ver=1..119}] base_ver 120

#initialize
scoreboard players set @e[type=origins:base_origins] origin_ecount 1
tag @e[type=origins:base_origins] remove origins:base_counter
tag @e[type=origins:base_origins,r=3,c=1] add origins:base_counter
scoreboard players operation @e[type=origins:base_origins,tag=origins:base_counter] origin_ecount += @e[type=origins:base_origins,tag=!origins:base_counter] origin_ecount
execute @e[type=origins:base_origins,tag=origins:base_counter,scores={origin_ecount=2..}] ~~~ kill @e[type=origins:base_origins,tag=!origins:base_counter]
tag @a remove origins:base_summmon
tag @p[r=999999999] add origins:base_summon
execute @e[type=origins:base_origins] ~~~ tag @a remove origins:base_summon
execute @p[tag=origins:base_summon] ~~~ summon origins:base_origins 0 1 0
execute @p[tag=origins:base_summon] ~~~ function origins/base/make_scoreboards
scoreboard players add @e[type=origins:base_origins] c_human 0
scoreboard players add @e[type=origins:base_origins] t_human 0
scoreboard players add @e[type=origins:base_origins] c_arachnid 0
scoreboard players add @e[type=origins:base_origins] t_arachnid 0
scoreboard players add @e[type=origins:base_origins] c_avian 0
scoreboard players add @e[type=origins:base_origins] t_avian 0
scoreboard players add @e[type=origins:base_origins] c_blazeborn 0
scoreboard players add @e[type=origins:base_origins] t_blazeborn 0
scoreboard players add @e[type=origins:base_origins] c_elytrian 0
scoreboard players add @e[type=origins:base_origins] t_elytrian 0
scoreboard players add @e[type=origins:base_origins] c_enderian 0
scoreboard players add @e[type=origins:base_origins] t_enderian 0
scoreboard players add @e[type=origins:base_origins] c_feline 0
scoreboard players add @e[type=origins:base_origins] t_feline 0
scoreboard players add @e[type=origins:base_origins] c_merling 0
scoreboard players add @e[type=origins:base_origins] t_merling 0
scoreboard players add @e[type=origins:base_origins] c_phantom 0
scoreboard players add @e[type=origins:base_origins] t_phantom 0
scoreboard players add @e[type=origins:base_origins] c_shulk 0
scoreboard players add @e[type=origins:base_origins] t_shulk 0
scoreboard players set @e[type=origins:base_origins] origin_count 10
scoreboard players set @e[type=origins:base_origins] origin_groupid 1

#group selected
tag @a remove origins:base_group_selected
tag @a[scores={origin_groupid=1}] add origins:base_group_selected
scoreboard players set @a[tag=origins:base_group_selected,scores={origin_selectid=11..}] origin_selectid 10

#origin reset
execute @a[tag=origins:base_group_selected,tag=origins:base_human_origin_selected,tag=origins:reset_origin] ~~~ function origins/base/origin/human/reset
execute @a[tag=origins:base_group_selected,tag=origins:base_arachnid_origin_selected,tag=origins:reset_origin] ~~~ function origins/base/origin/arachnid/reset
execute @a[tag=origins:base_group_selected,tag=origins:base_avian_origin_selected,tag=origins:reset_origin] ~~~ function origins/base/origin/avian/reset
execute @a[tag=origins:base_group_selected,tag=origins:base_blazeborn_origin_selected,tag=origins:reset_origin] ~~~ function origins/base/origin/blazeborn/reset
execute @a[tag=origins:base_group_selected,tag=origins:base_elytrian_origin_selected,tag=origins:reset_origin] ~~~ function origins/base/origin/elytrian/reset
execute @a[tag=origins:base_group_selected,tag=origins:base_enderian_origin_selected,tag=origins:reset_origin] ~~~ function origins/base/origin/enderian/reset
execute @a[tag=origins:base_group_selected,tag=origins:base_feline_origin_selected,tag=origins:reset_origin] ~~~ function origins/base/origin/feline/reset
execute @a[tag=origins:base_group_selected,tag=origins:base_merling_origin_selected,tag=origins:reset_origin] ~~~ function origins/base/origin/merling/reset
execute @a[tag=origins:base_group_selected,tag=origins:base_phantom_origin_selected,tag=origins:reset_origin] ~~~ function origins/base/origin/phantom/reset
execute @a[tag=origins:base_group_selected,tag=origins:base_shulk_origin_selected,tag=origins:reset_origin] ~~~ function origins/base/origin/shulk/reset
execute @e[type=origins:base_origins,scores={t_human=2}] ~~~ execute @a[tag=origins:base_group_selected,tag=origins:base_human_origin_selected] ~~~ function origins/base/origin/human/reset
execute @e[type=origins:base_origins,scores={t_arachnid=2}] ~~~ execute @a[tag=origins:base_group_selected,tag=origins:base_arachnid_origin_selected] ~~~ function origins/base/origin/arachnid/reset
execute @e[type=origins:base_origins,scores={t_avian=2}] ~~~ execute @a[tag=origins:base_group_selected,tag=origins:base_avian_origin_selected] ~~~ function origins/base/origin/avian/reset
execute @e[type=origins:base_origins,scores={t_blazeborn=2}] ~~~ execute @a[tag=origins:base_group_selected,tag=origins:base_blazeborn_origin_selected] ~~~ function origins/base/origin/blazeborn/reset
execute @e[type=origins:base_origins,scores={t_elytrian=2}] ~~~ execute @a[tag=origins:base_group_selected,tag=origins:base_elytrian_origin_selected] ~~~ function origins/base/origin/elytrian/reset
execute @e[type=origins:base_origins,scores={t_enderian=2}] ~~~ execute @a[tag=origins:base_group_selected,tag=origins:base_enderian_origin_selected] ~~~ function origins/base/origin/enderian/reset
execute @e[type=origins:base_origins,scores={t_feline=2}] ~~~ execute @a[tag=origins:base_group_selected,tag=origins:base_feline_origin_selected] ~~~ function origins/base/origin/feline/reset
execute @e[type=origins:base_origins,scores={t_merling=2}] ~~~ execute @a[tag=origins:base_group_selected,tag=origins:base_merling_origin_selected] ~~~ function origins/base/origin/merling/reset
execute @e[type=origins:base_origins,scores={t_phantom=2}] ~~~ execute @a[tag=origins:base_group_selected,tag=origins:base_phantom_origin_selected] ~~~ function origins/base/origin/phantom/reset
execute @e[type=origins:base_origins,scores={t_shulk=2}] ~~~ execute @a[tag=origins:base_group_selected,tag=origins:base_shulk_origin_selected] ~~~ function origins/base/origin/shulk/reset

#origin powers
execute @a[tag=origins:base_arachnid_origin_selected] ~~~ function origins/base/origin/arachnid/powers
execute @a[tag=origins:base_avian_origin_selected] ~~~ function origins/base/origin/avian/powers
execute @a[tag=origins:base_blazeborn_origin_selected] ~~~ function origins/base/origin/blazeborn/powers
execute @a[tag=origins:base_elytrian_origin_selected] ~~~ function origins/base/origin/elytrian/powers
execute @a[tag=origins:base_enderian_origin_selected] ~~~ function origins/base/origin/enderian/powers
execute @a[tag=origins:base_feline_origin_selected] ~~~ function origins/base/origin/feline/powers
execute @a[tag=origins:base_merling_origin_selected] ~~~ function origins/base/origin/merling/powers
execute @a[tag=origins:base_phantom_origin_selected] ~~~ function origins/base/origin/phantom/powers
execute @a[tag=origins:base_shulk_origin_selected] ~~~ function origins/base/origin/shulk/powers

#origin selected
execute @e[type=origins:base_origins,scores={t_human=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=1},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:base_group_selected] ~~~ function origins/base/origin/human/become
execute @e[type=origins:base_origins,scores={t_arachnid=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=2},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:base_group_selected] ~~~ function origins/base/origin/arachnid/become
execute @e[type=origins:base_origins,scores={t_avian=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=3},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:base_group_selected] ~~~ function origins/base/origin/avian/become
execute @e[type=origins:base_origins,scores={t_blazeborn=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=4},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:base_group_selected] ~~~ function origins/base/origin/blazeborn/become
execute @e[type=origins:base_origins,scores={t_elytrian=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=5},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:base_group_selected] ~~~ function origins/base/origin/elytrian/become
execute @e[type=origins:base_origins,scores={t_enderian=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=6},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:base_group_selected] ~~~ function origins/base/origin/enderian/become
execute @e[type=origins:base_origins,scores={t_feline=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=7},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:base_group_selected] ~~~ function origins/base/origin/feline/become
execute @e[type=origins:base_origins,scores={t_merling=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=8},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:base_group_selected] ~~~ function origins/base/origin/merling/become
execute @e[type=origins:base_origins,scores={t_phantom=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=9},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:base_group_selected] ~~~ function origins/base/origin/phantom/become
execute @e[type=origins:base_origins,scores={t_shulk=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=10},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:base_group_selected] ~~~ function origins/base/origin/shulk/become
execute @a[tag=origins:become_base_human_origin,tag=!origins:reset_origin] ~~~ function origins/base/origin/human/become
execute @a[tag=origins:become_base_arachnid_origin,tag=!origins:reset_origin] ~~~ function origins/base/origin/arachnid/become
execute @a[tag=origins:become_base_avian_origin,tag=!origins:reset_origin] ~~~ function origins/base/origin/avian/become
execute @a[tag=origins:become_base_blazeborn_origin,tag=!origins:reset_origin] ~~~ function origins/base/origin/blazeborn/become
execute @a[tag=origins:become_base_elytrian_origin,tag=!origins:reset_origin] ~~~ function origins/base/origin/elytrian/become
execute @a[tag=origins:become_base_enderian_origin,tag=!origins:reset_origin] ~~~ function origins/base/origin/enderian/become
execute @a[tag=origins:become_base_feline_origin,tag=!origins:reset_origin] ~~~ function origins/base/origin/feline/become
execute @a[tag=origins:become_base_merling_origin,tag=!origins:reset_origin] ~~~ function origins/base/origin/merling/become
execute @a[tag=origins:become_base_phantom_origin,tag=!origins:reset_origin] ~~~ function origins/base/origin/phantom/become
execute @a[tag=origins:become_base_shulk_origin,tag=!origins:reset_origin] ~~~ function origins/base/origin/shulk/become

#origin selection items
replaceitem entity @a[tag=origins:base_group_selected,tag=!origins:origin_selected,tag=!origins:origin_group_selected] slot.hotbar 4 keep origins:base_origins 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:base_origins
clear @a[tag=origins:origin_selected] origins:base_origins
clear @a[tag=origins:origin_group_selected] origins:base_origins
replaceitem entity @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] slot.hotbar 4 keep origins:origin_human 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:origin_human
clear @a[tag=!origins:origin_group_selected] origins:origin_human
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..0}] origins:origin_human
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=2..}] origins:origin_human
replaceitem entity @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] slot.hotbar 4 keep origins:origin_arachnid 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:origin_arachnid
clear @a[tag=!origins:origin_group_selected] origins:origin_arachnid
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..1}] origins:origin_arachnid
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=3..}] origins:origin_arachnid
replaceitem entity @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] slot.hotbar 4 keep origins:origin_avian 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:origin_avian
clear @a[tag=!origins:origin_group_selected] origins:origin_avian
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..2}] origins:origin_avian
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=4..}] origins:origin_avian
replaceitem entity @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] slot.hotbar 4 keep origins:origin_blazeborn 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:origin_blazeborn
clear @a[tag=!origins:origin_group_selected] origins:origin_blazeborn
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..3}] origins:origin_blazeborn
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=5..}] origins:origin_blazeborn
replaceitem entity @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=5}] slot.hotbar 4 keep origins:origin_elytrian 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:origin_elytrian
clear @a[tag=!origins:origin_group_selected] origins:origin_elytrian
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..4}] origins:origin_elytrian
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=6..}] origins:origin_elytrian
replaceitem entity @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=6}] slot.hotbar 4 keep origins:origin_enderian 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:origin_enderian
clear @a[tag=!origins:origin_group_selected] origins:origin_enderian
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..5}] origins:origin_enderian
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=7..}] origins:origin_enderian
replaceitem entity @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=7}] slot.hotbar 4 keep origins:origin_feline 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:origin_feline
clear @a[tag=!origins:origin_group_selected] origins:origin_feline
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..6}] origins:origin_feline
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=8..}] origins:origin_feline
replaceitem entity @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=8}] slot.hotbar 4 keep origins:origin_merling 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:origin_merling
clear @a[tag=!origins:origin_group_selected] origins:origin_merling
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..7}] origins:origin_merling
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=9..}] origins:origin_merling
replaceitem entity @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=9}] slot.hotbar 4 keep origins:origin_phantom 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:origin_phantom
clear @a[tag=!origins:origin_group_selected] origins:origin_phantom
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..8}] origins:origin_phantom
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=10..}] origins:origin_phantom
replaceitem entity @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=10}] slot.hotbar 4 keep origins:origin_shulk 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:base_group_selected] origins:origin_shulk
clear @a[tag=!origins:origin_group_selected] origins:origin_shulk
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..9}] origins:origin_shulk
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=11..}] origins:origin_shulk

#origin availability
execute @e[type=origins:base_origins,scores={t_human=0}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Human\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_human"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_human=1}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Human\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_human"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_human=2}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Human\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_human"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_arachnid=0}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Arachnid\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_arachnid"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_arachnid=1}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Arachnid\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_arachnid"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_arachnid=2}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Arachnid\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_arachnid"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_avian=0}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Avian\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_avian"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_avian=1}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Avian\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_avian"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_avian=2}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Avian\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_avian"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_blazeborn=0}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Blazeborn\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_blazeborn"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_blazeborn=1}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Blazeborn\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_blazeborn"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_blazeborn=2}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Blazeborn\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_blazeborn"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_elytrian=0}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=5}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Elytrian\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_elytrian"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_elytrian=1}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=5}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Elytrian\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_elytrian"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_elytrian=2}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=5}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Elytrian\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_elytrian"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_enderian=0}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=6}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Enderian\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_enderian"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_enderian=1}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=6}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Enderian\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_enderian"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_enderian=2}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=6}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Enderian\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_enderian"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_feline=0}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=7}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Feline\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_feline"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_feline=1}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=7}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Feline\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_feline"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_feline=2}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=7}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Feline\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_feline"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_merling=0}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=8}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Merling\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_merling"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_merling=1}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=8}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Merling\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_merling"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_merling=2}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=8}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Merling\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_merling"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_phantom=0}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=9}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Phantom\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_phantom"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_phantom=1}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=9}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Phantom\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_phantom"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_phantom=2}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=9}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Phantom\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_phantom"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_shulk=0}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=10}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Shulk\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_shulk"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_shulk=1}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=10}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Shulk\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_shulk"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:base_origins,scores={t_shulk=2}] ~~~ titleraw @a[tag=origins:base_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=10}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Shulk\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:base_origins]","objective":"c_shulk"}},{"translate":"origins:origin_selection.availability3b"}]}

#book
execute @a[scores={od:hold=100001,od:use_time=1},tag=origins:base_group_selected] ~~~ function origins_admin/base/book
scoreboard players set @a[scores={od:hold=100001,od:use_time=1},tag=origins:base_group_selected] od:use_time 2