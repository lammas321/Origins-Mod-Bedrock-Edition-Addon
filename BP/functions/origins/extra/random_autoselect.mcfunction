scoreboard players operation @s dummy_value = @s origin:selectid
scoreboard players operation @s dummy_value -= @e[type=origins:origin_extra_fox,c=1] origin:selectid
scoreboard players operation @s[scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_fox,c=1] origin:usability
execute @s[scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/extra/origin/fox/select
dialogue open @e[type=origins:ui,c=1] @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_extra_fox_locked
tag @s[scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_extra_rabbit,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_rabbit,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/extra/origin/rabbit/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_extra_rabbit_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_extra_slime,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_slime,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/extra/origin/slime/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_extra_slime_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_extra_bee,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_bee,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/extra/origin/bee/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_extra_bee_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_extra_starborne,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_starborne,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/extra/origin/starborne/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_extra_starborne_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_extra_tmotd,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_tmotd,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/extra/origin/tmotd/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_extra_tmotd_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_extra_witherin,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_witherin,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/extra/origin/witherin/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_extra_witherin_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_extra_wolfwalkt,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_wolfwalkt,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/extra/origin/wolfwalkt/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_extra_wolfwalkt_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_extra_wolfwalkf,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_extra_wolfwalkf,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/extra/origin/wolfwalkf/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_extra_wolfwalkf_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect