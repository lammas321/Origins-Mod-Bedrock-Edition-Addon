scoreboard players operation @s dummy_value = @s origin:selectid
scoreboard players operation @s dummy_value -= @e[type=origins:origin_base_human,c=1] origin:selectid
scoreboard players operation @s[scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_human,c=1] origin:usability
execute @s[scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/base/origin/human/select
dialogue open @e[type=origins:ui,c=1] @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_base_human_locked
tag @s[scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_base_avian,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_avian,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/base/origin/avian/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_base_avian_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_base_arachnid,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_arachnid,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/base/origin/arachnid/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_base_arachnid_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_base_elytrian,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_elytrian,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/base/origin/elytrian/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_base_elytrian_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_base_shulk,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_shulk,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/base/origin/shulk/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_base_shulk_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_base_feline,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_feline,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/base/origin/feline/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_base_feline_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_base_enderian,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_enderian,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/base/origin/enderian/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_base_enderian_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_base_merling,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_merling,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/base/origin/merling/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_base_merling_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_base_blazeborn,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_blazeborn,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/base/origin/blazeborn/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_base_blazeborn_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_base_phantom,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_base_phantom,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/base/origin/phantom/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_base_phantom_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect