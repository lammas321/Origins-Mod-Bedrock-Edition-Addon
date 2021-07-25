#joined/update
scoreboard objectives add extra_ver dummy
scoreboard players add @a extra_ver 0
execute @p[tag=origins:just_joined] ~~~ function origins/extra/joined
execute @p[tag=origins:update] ~~~ function origins/extra/origins_update
execute @p[scores={extra_ver=1..119}] ~~~ function origins/extra/update
scoreboard players set @p[scores={extra_ver=1..119}] extra_ver 120

#initialize
scoreboard players set @e[type=origins:extra_origins] origin_ecount 1
tag @e[type=origins:extra_origins] remove origins:extra_counter
tag @e[type=origins:extra_origins,r=3,c=1] add origins:extra_counter
scoreboard players operation @e[type=origins:extra_origins,tag=origins:extra_counter] origin_ecount += @e[type=origins:extra_origins,tag=!origins:extra_counter] origin_ecount
execute @e[type=origins:extra_origins,tag=origins:extra_counter,scores={origin_ecount=2..}] ~~~ kill @e[type=origins:extra_origins,tag=!origins:extra_counter]
tag @a remove origins:extra_summmon
tag @p[r=999999999] add origins:extra_summon
execute @e[type=origins:extra_origins] ~~~ tag @a remove origins:extra_summon
execute @p[tag=origins:extra_summon] ~~~ summon origins:extra_origins 0 1 0
execute @p[tag=origins:extra_summon] ~~~ function origins/extra/make_scoreboards
scoreboard players add @e[type=origins:extra_origins] c_bee 0
scoreboard players add @e[type=origins:extra_origins] t_bee 0
scoreboard players add @e[type=origins:extra_origins] c_cow 0
scoreboard players add @e[type=origins:extra_origins] t_cow 0
scoreboard players add @e[type=origins:extra_origins] c_dire_wolf 0
scoreboard players add @e[type=origins:extra_origins] t_dire_wolf 0
scoreboard players add @e[type=origins:extra_origins] c_fox 0
scoreboard players add @e[type=origins:extra_origins] t_fox 0
scoreboard players add @e[type=origins:extra_origins] c_frogling 0
scoreboard players add @e[type=origins:extra_origins] t_frogling 0
scoreboard players add @e[type=origins:extra_origins] c_goat 0
scoreboard players add @e[type=origins:extra_origins] t_goat 0
scoreboard players add @e[type=origins:extra_origins] c_rabbit 0
scoreboard players add @e[type=origins:extra_origins] t_rabbit 0
scoreboard players add @e[type=origins:extra_origins] c_raccoonl 0
scoreboard players add @e[type=origins:extra_origins] t_raccoonl 0
scoreboard players add @e[type=origins:extra_origins] c_sheep 0
scoreboard players add @e[type=origins:extra_origins] t_sheep 0
scoreboard players add @e[type=origins:extra_origins] c_slime 0
scoreboard players add @e[type=origins:extra_origins] t_slime 0
scoreboard players add @e[type=origins:extra_origins] c_starborne 0
scoreboard players add @e[type=origins:extra_origins] t_starborne 0
scoreboard players add @e[type=origins:extra_origins] c_strider 0
scoreboard players add @e[type=origins:extra_origins] t_strider 0
scoreboard players add @e[type=origins:extra_origins] c_tmotd 0
scoreboard players add @e[type=origins:extra_origins] t_tmotd 0
scoreboard players add @e[type=origins:extra_origins] c_witherin 0
scoreboard players add @e[type=origins:extra_origins] t_witherin 0
scoreboard players set @e[type=origins:extra_origins] origin_count 14
scoreboard players add @e[type=origins:extra_origins] origin_groupid 0

#group selected
tag @a remove origins:extra_group_selected
tag @e[type=origins:extra_origins] remove origins:extra_setgroupid
tag @e[type=origins:extra_origins,scores={origin_groupid=0..1}] add origins:extra_setgroupid
scoreboard players operation @e[type=origins:extra_origins,tag=origins:extra_setgroupid] origin_groupid > @e[family=origin_group] origin_groupid
scoreboard players add @e[type=origins:extra_origins,tag=origins:extra_setgroupid] origin_groupid 1
scoreboard players operation @a origin_groupid -= @e[type=origins:extra_origins,c=1] origin_groupid
tag @a[scores={origin_groupid=0}] add origins:extra_group_selected
scoreboard players operation @a origin_groupid += @e[type=origins:extra_origins,c=1] origin_groupid
scoreboard players set @a[tag=origins:extra_group_selected,scores={origin_selectid=15..}] origin_selectid 14

#origin reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_bee_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/bee/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_cow_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/cow/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_dire_wolf_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/dire_wolf/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_fox_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/fox/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_frogling_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/frogling/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_goat_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/goat/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_rabbit_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/rabbit/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_raccoonl_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/raccoonl/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_sheep_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/sheep/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_slime_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/slime/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_starborne_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/starborne/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_strider_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/strider/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_tmotd_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/tmotd/reset
execute @a[tag=origins:extra_group_selected,tag=origins:extra_witherin_origin_selected,tag=origins:reset_origin] ~~~ function origins/extra/origin/witherin/reset
execute @e[type=origins:extra_origins,scores={t_bee=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_bee_origin_selected] ~~~ function origins/extra/origin/bee/reset
execute @e[type=origins:extra_origins,scores={t_cow=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_cow_origin_selected] ~~~ function origins/extra/origin/cow/reset
execute @e[type=origins:extra_origins,scores={t_dire_wolf=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_dire_wolf_origin_selected] ~~~ function origins/extra/origin/dire_wolf/reset
execute @e[type=origins:extra_origins,scores={t_fox=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_fox_origin_selected] ~~~ function origins/extra/origin/fox/reset
execute @e[type=origins:extra_origins,scores={t_frogling=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_frogling_origin_selected] ~~~ function origins/extra/origin/frogling/reset
execute @e[type=origins:extra_origins,scores={t_goat=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_goat_origin_selected] ~~~ function origins/extra/origin/goat/reset
execute @e[type=origins:extra_origins,scores={t_rabbit=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_rabbit_origin_selected] ~~~ function origins/extra/origin/rabbit/reset
execute @e[type=origins:extra_origins,scores={t_raccoonl=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_raccoonl_origin_selected] ~~~ function origins/extra/origin/raccoonl/reset
execute @e[type=origins:extra_origins,scores={t_sheep=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_sheep_origin_selected] ~~~ function origins/extra/origin/sheep/reset
execute @e[type=origins:extra_origins,scores={t_slime=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_slime_origin_selected] ~~~ function origins/extra/origin/slime/reset
execute @e[type=origins:extra_origins,scores={t_starborne=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_starborne_origin_selected] ~~~ function origins/extra/origin/starborne/reset
execute @e[type=origins:extra_origins,scores={t_strider=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_strider_origin_selected] ~~~ function origins/extra/origin/strider/reset
execute @e[type=origins:extra_origins,scores={t_tmotd=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_tmotd_origin_selected] ~~~ function origins/extra/origin/tmotd/reset
execute @e[type=origins:extra_origins,scores={t_witherin=2}] ~~~ execute @a[tag=origins:extra_group_selected,tag=origins:extra_witherin_origin_selected] ~~~ function origins/extra/origin/witherin/reset

#origin powers
execute @a[tag=origins:extra_bee_origin_selected] ~~~ function origins/extra/origin/bee/powers
execute @a[tag=origins:extra_cow_origin_selected] ~~~ function origins/extra/origin/cow/powers
execute @a[tag=origins:extra_dire_wolf_origin_selected] ~~~ function origins/extra/origin/dire_wolf/powers
execute @a[tag=origins:extra_fox_origin_selected] ~~~ function origins/extra/origin/fox/powers
execute @a[tag=origins:extra_frogling_origin_selected] ~~~ function origins/extra/origin/frogling/powers
execute @a[tag=origins:extra_goat_origin_selected] ~~~ function origins/extra/origin/goat/powers
execute @a[tag=origins:extra_rabbit_origin_selected] ~~~ function origins/extra/origin/rabbit/powers
execute @a[tag=origins:extra_raccoonl_origin_selected] ~~~ function origins/extra/origin/raccoonl/powers
execute @a[tag=origins:extra_sheep_origin_selected] ~~~ function origins/extra/origin/sheep/powers
execute @a[tag=origins:extra_slime_origin_selected] ~~~ function origins/extra/origin/slime/powers
execute @a[tag=origins:extra_starborne_origin_selected] ~~~ function origins/extra/origin/starborne/powers
execute @a[tag=origins:extra_strider_origin_selected] ~~~ function origins/extra/origin/strider/powers
tag @e remove origins:extra_tmotd_face_entangler
tag @e remove origins:extra_tmotd_facing_entangler
tag @e[type=origins:position,name=tmotd_entangled] remove origins:used
execute @a[tag=origins:extra_tmotd_origin_selected] ~~~ function origins/extra/origin/tmotd/powers
tp @e[type=origins:position,name=tmotd_entangled,tag=!origins:used] ~ -100~
kill @e[type=origins:position,name=tmotd_entangled,tag=!origins:used]
execute @e[type=origins:position,name=tmotd_entangled,tag=origins:used] ~~~ tp @e[tag=origins:extra_tmotd_face_entangler,c=1,r=1] ~~~ facing @p[tag=origins:extra_tmotd_origin_selected,scores={tmotd_ecd=1201..}]
titleraw @a[tag=origins:face_entangler] actionbar {"rawtext":[{"translate":"origins:extra_tmotd.entanglement_msg"}]}
execute @a[tag=origins:extra_witherin_origin_selected] ~~~ function origins/extra/origin/witherin/powers

#origin selected
execute @e[type=origins:extra_origins,scores={t_bee=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=1},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/bee/become
execute @e[type=origins:extra_origins,scores={t_cow=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=2},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/cow/become
execute @e[type=origins:extra_origins,scores={t_dire_wolf=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=3},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/dire_wolf/become
execute @e[type=origins:extra_origins,scores={t_fox=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=4},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/fox/become
execute @e[type=origins:extra_origins,scores={t_frogling=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=5},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/frogling/become
execute @e[type=origins:extra_origins,scores={t_goat=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=6},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/goat/become
execute @e[type=origins:extra_origins,scores={t_rabbit=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=7},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/rabbit/become
execute @e[type=origins:extra_origins,scores={t_raccoonl=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=8},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/raccoonl/become
execute @e[type=origins:extra_origins,scores={t_sheep=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=9},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/sheep/become
execute @e[type=origins:extra_origins,scores={t_slime=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=10},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/slime/become
execute @e[type=origins:extra_origins,scores={t_starborne=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=11},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/starborne/become
execute @e[type=origins:extra_origins,scores={t_strider=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=12},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/strider/become
execute @e[type=origins:extra_origins,scores={t_tmotd=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=13},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/tmotd/become
execute @e[type=origins:extra_origins,scores={t_witherin=0}] ~~~ execute @a[scores={od:hold=100003,od:using=1,od:use_time=1,origin_selectid=14},tag=!origins:origin_selected,tag=origins:origin_group_selected,tag=origins:extra_group_selected] ~~~ function origins/extra/origin/witherin/become
execute @a[tag=origins:become_extra_bee_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/bee/become
execute @a[tag=origins:become_extra_cow_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/cow/become
execute @a[tag=origins:become_extra_dire_wolf_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/dire_wolf/become
execute @a[tag=origins:become_extra_fox_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/fox/become
execute @a[tag=origins:become_extra_frogling_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/frogling/become
execute @a[tag=origins:become_extra_goat_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/goat/become
execute @a[tag=origins:become_extra_rabbit_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/rabbit/become
execute @a[tag=origins:become_extra_raccoonl_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/raccoonl/become
execute @a[tag=origins:become_extra_sheep_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/sheep/become
execute @a[tag=origins:become_extra_slime_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/slime/become
execute @a[tag=origins:become_extra_starborne_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/starborne/become
execute @a[tag=origins:become_extra_strider_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/strider/become
execute @a[tag=origins:become_extra_tmotd_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/tmotd/become
execute @a[tag=origins:become_extra_witherin_origin,tag=!origins:reset_origin] ~~~ function origins/extra/origin/witherin/become

#origin selection items
replaceitem entity @a[tag=origins:extra_group_selected,tag=!origins:origin_selected,tag=!origins:origin_group_selected] slot.hotbar 4 keep origins:extra_origins 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:extra_origins
clear @a[tag=origins:origin_selected] origins:extra_origins
clear @a[tag=origins:origin_group_selected] origins:extra_origins
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] slot.hotbar 4 keep origins:origin_bee 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_bee
clear @a[tag=!origins:origin_group_selected] origins:origin_bee
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..0}] origins:origin_bee
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=2..}] origins:origin_bee
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] slot.hotbar 4 keep origins:origin_cow 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_cow
clear @a[tag=!origins:origin_group_selected] origins:origin_cow
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..1}] origins:origin_cow
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=3..}] origins:origin_cow
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] slot.hotbar 4 keep origins:origin_dire_wolf 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_dire_wolf
clear @a[tag=!origins:origin_group_selected] origins:origin_dire_wolf
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..2}] origins:origin_dire_wolf
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=4..}] origins:origin_dire_wolf
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] slot.hotbar 4 keep origins:origin_fox 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_fox
clear @a[tag=!origins:origin_group_selected] origins:origin_fox
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..3}] origins:origin_fox
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=5..}] origins:origin_fox
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=5}] slot.hotbar 4 keep origins:origin_frogling 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_frogling
clear @a[tag=!origins:origin_group_selected] origins:origin_frogling
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..4}] origins:origin_frogling
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=6..}] origins:origin_frogling
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=6}] slot.hotbar 4 keep origins:origin_goat 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_goat
clear @a[tag=!origins:origin_group_selected] origins:origin_goat
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..5}] origins:origin_goat
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=7..}] origins:origin_goat
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=7}] slot.hotbar 4 keep origins:origin_rabbit 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_rabbit
clear @a[tag=!origins:origin_group_selected] origins:origin_rabbit
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..6}] origins:origin_rabbit
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=8..}] origins:origin_rabbit
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=8}] slot.hotbar 4 keep origins:origin_raccoonl 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_raccoonl
clear @a[tag=!origins:origin_group_selected] origins:origin_raccoonl
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..7}] origins:origin_raccoonl
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=9..}] origins:origin_raccoonl
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=9}] slot.hotbar 4 keep origins:origin_sheep 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_sheep
clear @a[tag=!origins:origin_group_selected] origins:origin_sheep
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..8}] origins:origin_sheep
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=10..}] origins:origin_sheep
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=10}] slot.hotbar 4 keep origins:origin_slime 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_slime
clear @a[tag=!origins:origin_group_selected] origins:origin_slime
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..9}] origins:origin_slime
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=11..}] origins:origin_slime
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=11}] slot.hotbar 4 keep origins:origin_starborne 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_starborne
clear @a[tag=!origins:origin_group_selected] origins:origin_starborne
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..10}] origins:origin_starborne
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=12..}] origins:origin_starborne
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=12}] slot.hotbar 4 keep origins:origin_strider 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_strider
clear @a[tag=!origins:origin_group_selected] origins:origin_strider
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..11}] origins:origin_strider
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=13..}] origins:origin_strider
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=13}] slot.hotbar 4 keep origins:origin_tmotd 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_tmotd
clear @a[tag=!origins:origin_group_selected] origins:origin_tmotd
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..12}] origins:origin_tmotd
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=14..}] origins:origin_tmotd
replaceitem entity @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=14}] slot.hotbar 4 keep origins:origin_witherin 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
clear @a[tag=!origins:extra_group_selected] origins:origin_witherin
clear @a[tag=!origins:origin_group_selected] origins:origin_witherin
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=..13}] origins:origin_witherin
clear @a[tag=origins:origin_group_selected,scores={origin_selectid=15..}] origins:origin_witherin

#origin availability
execute @e[type=origins:extra_origins,scores={t_bee=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Bee\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_bee"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_bee=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Bee\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_bee"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_bee=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=1}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Bee\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_bee"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_cow=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Cow\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_cow"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_cow=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Cow\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_cow"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_cow=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=2}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Cow\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_cow"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_dire_wolf=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Dire Wolf\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_dire_wolf"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_dire_wolf=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Dire Wolf\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_dire_wolf"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_dire_wolf=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=3}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Dire Wolf\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_dire_wolf"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_fox=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Fox\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_fox"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_fox=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Fox\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_fox"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_fox=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=4}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Fox\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_fox"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_frogling=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=5}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Frogling\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_frogling"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_frogling=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=5}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Frogling\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_frogling"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_frogling=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=5}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Frogling\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_frogling"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_goat=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=6}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Goat\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_goat"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_goat=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=6}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Goat\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_goat"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_goat=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=6}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Goat\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_goat"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_rabbit=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=7}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Rabbit\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_rabbit"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_rabbit=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=7}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Rabbit\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_rabbit"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_rabbit=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=7}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Rabbit\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_rabbit"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_raccoonl=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=8}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Raccoon Lord\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_raccoonl"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_raccoonl=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=8}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Raccoon Lord\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_raccoonl"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_raccoonl=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=8}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Raccoon Lord\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_racconl"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_sheep=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=9}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Sheep\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_sheep"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_sheep=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=9}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Sheep\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_sheep"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_sheep=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=9}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Sheep\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_sheep"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_slime=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=10}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Slime\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_slime"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_slime=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=10}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Slime\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_slime"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_slime=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=10}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Slime\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_slime"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_starborne=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=11}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Starborne\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_starborne"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_starborne=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=11}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Starborne\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_starborne"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_starborne=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=11}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Starborne\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_starborne"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_strider=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=12}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Strider\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_strider"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_strider=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=12}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Strider\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_strider"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_strider=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=12}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Strider\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_stridee"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_tmotd=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=13}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"The Monster of the Depths\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_tmotd"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_tmotd=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=13}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"The Monster of the Depths\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_tmotd"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_tmotd=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=13}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"The Monster of the Depths\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_tmotd"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_witherin=0}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=14}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Witherin\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.selectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_witherin"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_witherin=1}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=14}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Witherin\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unselectable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_witherin"}},{"translate":"origins:origin_selection.availability3b"}]}
execute @e[type=origins:extra_origins,scores={t_witherin=2}] ~~~ titleraw @a[tag=origins:extra_group_selected,tag=origins:origin_group_selected,scores={origin_selectid=14}] actionbar {"rawtext":[{"translate":"origins:origin_selection.availability1"},{"text":"Witherin\n"},{"translate":"origins:origin_selection.availability2"},{"translate":"origins:origin_selection.availability.unusable"},{"text":"\n"},{"translate":"origins:origin_selection.availability3a"},{"score":{"name":"@e[type=origins:extra_origins]","objective":"c_witherin"}},{"translate":"origins:origin_selection.availability3b"}]}

#book
execute @a[scores={od:hold=100001,od:use_time=1},tag=origins:extra_group_selected] ~~~ function origins_admin/extra/book
scoreboard players set @a[scores={od:hold=100001,od:use_time=1},tag=origins:extra_group_selected] od:use_time 2
