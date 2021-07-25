#joined/update
scoreboard objectives add origin_ver dummy
scoreboard players add @a origin_ver 0
scoreboard players operation @p[tag=origins:just_joined] origin_playerid = @e[type=origins:origins,r=3,c=1] origin_playerid
execute @p[tag=origins:just_joined] ~~~ scoreboard players add @e[type=origins:origins] origin_playerid 1
execute @p[tag=origins:just_joined] ~~~ function origins/main/joined
execute @p[tag=origins:update] ~~~ function origins/main/update
tag @p[scores={origins:ver=1..119}] remove origins:has_joined
#tag @p[scores={origin_ver=120..120}] remove origins:has_joined
#tag @p[scores={origin_ver=120..120}] add origins:update
tag @p[tag=!origins:has_joined,tag=!origins:update] add origins:just_joined

#initialize
tickingarea add ~-16~~-16 ~15~~15 world_center
scoreboard players set @e[type=origins:origins] origin_ecount 1
tag @e[type=origins:origins] remove origins:origins_counter
tag @e[type=origins:origins,r=3,c=1] add origins:origins_counter
scoreboard players operation @e[type=origins:origins,tag=origins:origins_counter] origin_ecount += @e[type=origins:origins,tag=!origins:origins_counter] origin_ecount
execute @e[type=origins:origins,tag=origins:origins_counter,scores={origin_ecount=2..}] ~~~ kill @e[type=origins:origins,tag=!origins:origins_counter]
tag @a remove origins:origins_summmon
tag @p[r=999999999] add origins:origins_summon
execute @e[type=origins:origins] ~~~ tag @a remove origins:origins_summon
execute @p[tag=origins:origins_summon] ~~~ summon origins:origins 0 1 0
execute @p[tag=origins:origins_summon] ~~~ function origins/main/make_scoreboards
scoreboard players add @e[family=uses_dummy_value] dummy_value 0
scoreboard players add @a origin_groupid 0
scoreboard players set @a[scores={origin_groupid=..0}] origin_groupid 1
scoreboard players add @a origin_groups 0
scoreboard players add @a origin_selectid 0
scoreboard players set @a[scores={origin_selectid=..0}] origin_selectid 1
scoreboard players add @a origin_playerid 0
scoreboard players add @e[type=origins:origins] origin_playerid 0
scoreboard players set @e[type=origins:origins,scores={origin_playerid=0}] origin_playerid 1
kill @e[type=origins:spare_inventory,scores={origin_playerid=0}]
scoreboard players add @e[type=origins:spare_inventory] origin_playerid 0
fill ~~~ ~~1~ bedrock
tp @e[type=origins:origins,r=3,c=1] ~~1~
tp @e[family=origin_group] ~~1~

#origin groups and above highest origin group check
scoreboard players set @e[type=origins:origins,r=3,c=1] origin_groups 0
scoreboard players set @e[family=origin_group,r=3] dummy_value 1
scoreboard players operation @e[type=origins:origins,r=3,c=1] origin_groups += @e[family=origin_group,r=3] dummy_value
scoreboard players operation @a dummy_value = @e[type=origins:origins,r=3,c=1] origin_groups
execute @a ~~~ scoreboard players operation @s dummy_value -= @s origin_groupid
scoreboard players operation @a[scores={dummy_value=..-1}] origin_groupid = @e[type=origins:origins] origin_groups

#origin reset
tag @a[tag=origins:reset_origin] remove origins:origin_selected
scoreboard players set @a[tag=origins:reset_origin] origin_groupid 1
scoreboard players set @a[tag=origins:reset_origin] origin_selectid 1

#origin selection freeze
tag @a remove origins:no_origin_freeze
tag @e[type=origins:position,name=no_origin_freeze] remove origins:used
execute @a[tag=!origins:origin_selected] ~~~ tag @e[type=origins:position,name=no_origin_freeze,r=1,c=1] add origins:used
execute @e[type=origins:position,name=no_origin_freeze,tag=!origins:used] ~~~ tp ~ -100~
kill @e[type=origins:position,name=no_origin_freeze,tag=!origins:used]
execute @e[type=origins:position,name=no_origin_freeze,tag=origins:used] ~~~ tag @p[tag=!origins:origin_selected,r=1] add origins:no_origin_freeze
execute @e[type=origins:position,name=no_origin_freeze,tag=origins:used] ~~~ tp @p[tag=!origins:origin_selected,r=1] ~~~
execute @a[tag=!origins:origin_selected,tag=!origins:no_origin_freeze] ~~~ summon origins:position no_origin_freeze

#used origin selection items
tag @a[scores={od:hold=100002,od:use_time=1}] remove origins:origin_group_selected
scoreboard players set @a[scores={od:hold=100002,od:use_time=1}] origin_selectid 1
tag @a[scores={od:hold=100003,od:use_time=1},tag=!origins:origin_group_selected] add origins:origin_group_selected
tellraw @a[scores={od:hold=100003,od:use_time=1},tag=origins:origin_selected] {"rawtext":[{"translate":"origins:promotion_msg"}]}
scoreboard players remove @a[scores={od:hold=100004,od:use_time=1},tag=origins:origin_group_selected] origin_selectid 1
scoreboard players remove @a[scores={od:hold=100004,od:use_time=1},tag=!origins:origin_group_selected] origin_groupid 1
scoreboard players add @a[scores={od:hold=100005,od:use_time=1},tag=origins:origin_group_selected] origin_selectid 1
scoreboard players add @a[scores={od:hold=100005,od:use_time=1},tag=!origins:origin_group_selected] origin_groupid 1
scoreboard players set @a[scores={od:hold=100002..100005,od:use_time=1}] od:use_time 2

#origin selection items
clear @a[tag=!origins:origin_group_selected] origins:select_cancel
clear @a[tag=origins:origin_selected] origins:select_back
clear @a[tag=origins:origin_selected] origins:select_next
clear @a[tag=origins:origin_selected] origins:book_of_origins
clear @a[tag=origins:origin_selected] origins:select_select
replaceitem entity @a[tag=origins:origin_group_selected] slot.hotbar 1 keep origins:select_cancel 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @a[tag=!origins:origin_selected] slot.hotbar 2 keep origins:select_back 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @a[tag=!origins:origin_selected] slot.hotbar 3 keep origins:select_next 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @a[tag=!origins:origin_selected] slot.hotbar 5 keep origins:book_of_origins 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
replaceitem entity @a[tag=!origins:origin_selected] slot.hotbar 6 keep origins:select_select 1 0 {"item_lock":{"mode":"lock_in_slot"},"keep_on_death":{}}
kill @e[type=item,name="§r"]
kill @e[type=item,name="§ePrimary Power"]
kill @e[type=item,name="§eSecondary Power"]
kill @e[type=item,name="§eTertiary Power"]

#swimming
event entity @s[tag=origins:col_0.48_1.8,scores={odw:swimming=1,od:swimming=0}] origins:col_0.48_1.8
event entity @s[tag=origins:col_0.48_1.8,scores={odw:swimming=0,od:swimming=1}] origins:col_0.48_0.9
event entity @s[tag=origins:col_0.6_1.8,scores={odw:swimming=1,od:swimming=0}] origins:col_0.6_1.8
event entity @s[tag=origins:col_0.6_1.8,scores={odw:swimming=0,od:swimming=1}] origins:col_0.6_0.9

#other
execute @a[scores={od:underground=1,odw:alive=1,od:alive=0}] ~~~ kill @e[type=item,name=Chest,r=7,c=1]
execute @e[type=origins:lava_walker,scores={od:ridden=0}] ~~~ tp ~ -100~
kill @e[type=origins:lava_walker,scores={od:ridden=0}]
tp @e[type=origins:spare_inventory,tag=!origins:used] ~~1~
clear @a origins:placeholder
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 0 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 1 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 2 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 3 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 5 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 6 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 7 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 8 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 9 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 10 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 11 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 15 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 16 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 17 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 18 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 19 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 20 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 21 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 23 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 24 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 25 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_5] slot.inventory 26 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 0 origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 1 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 2 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 6 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 7 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 8 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 9 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 10 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 11 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 15 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 16 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 17 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 18 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 19 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 20 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 24 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 25 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @e[type=origins:spare_inventory,family=slots_9] slot.inventory 26 keep origins:placeholder 1 0 {"item_lock":{"mode":"lock_in_slot"}}
execute @a ~~~ tag @e[type=origins:custom_magic_beam,r=32] add origins:used
kill @e[type=origins:custom_magic_beam,tag=!origins:used]
execute @e[type=origins:custom_llama_spit] ~~~ particle minecraft:llama_spit_smoke ~~0.25~
execute @e[type=origins:custom_magic_beam] ~~~ particle minecraft:dragon_breath_trail ~-0.3~~
execute @e[type=origins:custom_magic_beam] ~~~ particle minecraft:dragon_breath_trail ~0.3~~
execute @e[type=origins:custom_magic_beam] ~~~ particle minecraft:dragon_breath_trail ~~-0.3~
execute @e[type=origins:custom_magic_beam] ~~~ particle minecraft:dragon_breath_trail ~~0.3~
execute @e[type=origins:custom_magic_beam] ~~~ particle minecraft:dragon_breath_trail ~~~-0.3
execute @e[type=origins:custom_magic_beam] ~~~ particle minecraft:dragon_breath_trail ~~~0.3

#remove tags
tag @a[tag=origins:origin_selected] remove origins:origin_group_selected
event entity @a[tag=origins:reset_origin] "origins:detect_()()"
tag @a remove origins:reset_origin
tag @e[type=origins:spare_inventory] remove origins:used

#detect scores
execute @e[family=track_health] ~~~ scoreboard players operation @s odw:health = @s od:health
execute @a ~~~ scoreboard players operation @s odw:mhealth = @s od:mhealth
execute @a ~~~ scoreboard players operation @s odw:hold = @s od:hold
execute @a ~~~ scoreboard players operation @s odw:ohold = @s od:ohold
execute @a ~~~ scoreboard players operation @s odw:using = @s od:using
execute @a ~~~ scoreboard players operation @s odw:use_time = @s od:use_time
execute @a ~~~ scoreboard players operation @s odw:jumping = @s od:jumping
execute @a ~~~ scoreboard players operation @s odw:dj = @s od:dj
execute @a ~~~ scoreboard players operation @s odw:sneaking = @s od:sneaking
execute @a ~~~ scoreboard players operation @s odw:on_ground = @s od:on_ground
execute @a ~~~ scoreboard players operation @s odw:moving = @s od:moving
execute @a ~~~ scoreboard players operation @s odw:sprinting = @s od:sprinting
execute @a ~~~ scoreboard players operation @s odw:swimming = @s od:swimming
execute @a ~~~ scoreboard players operation @s odw:gliding = @s od:gliding
execute @a ~~~ scoreboard players operation @s odw:sleeping = @s od:sleeping
execute @a ~~~ scoreboard players operation @s odw:attacking = @s od:attacking
scoreboard players set @a od:attacking 0
execute @e[family=track_health] ~~~ scoreboard players operation @s odw:hurting = @s od:hurting
execute @a ~~~ scoreboard players operation @s odw:water = @s od:water
execute @a ~~~ scoreboard players operation @s odw:rain = @s od:rain
execute @a ~~~ scoreboard players operation @s odw:splashed = @s od:splashed
execute @a ~~~ scoreboard players operation @s odw:alive = @s od:alive
execute @a ~~~ scoreboard players operation @s odw:day = @s od:day
execute @a ~~~ scoreboard players operation @s odw:on_fire = @s od:on_fire
execute @a ~~~ scoreboard players operation @s odw:ridden = @s od:ridden
execute @a ~~~ scoreboard players operation @s odw:riding = @s od:riding
execute @a ~~~ scoreboard players operation @s odw:head = @s od:head
execute @a ~~~ scoreboard players operation @s odw:chest = @s od:chest
execute @a ~~~ scoreboard players operation @s odw:legs = @s od:legs
execute @a ~~~ scoreboard players operation @s odw:feet = @s od:feet
execute @a ~~~ scoreboard players operation @s odw:dim = @s od:dim
execute @a ~~~ scoreboard players operation @s odw:lava = @s od:lava
execute @a ~~~ scoreboard players operation @s odw:temp = @s od:temp
execute @a ~~~ scoreboard players operation @s odw:underground = @s od:underground
execute @a ~~~ scoreboard players operation @s odw:underwater = @s od:underwater