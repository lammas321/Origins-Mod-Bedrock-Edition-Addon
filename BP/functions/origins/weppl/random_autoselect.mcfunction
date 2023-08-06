scoreboard players operation @s dummy_value = @s origin:selectid
scoreboard players operation @s dummy_value -= @e[type=origins:origin_weppl_llama,c=1] origin:selectid
scoreboard players operation @s[scores={dummy_value=0}] origin:usability = @e[type=origins:origin_weppl_llama,c=1] origin:usability
execute @s[scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/weppl/origin/llama/select
dialogue open @e[type=origins:ui,c=1] @s[tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_weppl_llama_locked
tag @s[scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_weppl_duck,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_weppl_duck,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/weppl/origin/duck/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_weppl_duck_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_weppl_the_cute_one,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_weppl_the_cute_one,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/weppl/origin/the_cute_one/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_weppl_the_cute_one_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value = @s[tag=origins:random_autoselect] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect] dummy_value -= @e[type=origins:origin_weppl_troll,c=1] origin:selectid
scoreboard players operation @s[tag=origins:random_autoselect,scores={dummy_value=0}] origin:usability = @e[type=origins:origin_weppl_troll,c=1] origin:usability
execute @s[tag=origins:random_autoselect,scores={dummy_value=0,origin:usability=-1}] ~~~ tp @e[type=origins:ui,c=1] ~ -63~
execute @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=0..}] ~~~ function origins/weppl/origin/troll/select
dialogue open @e[type=origins:ui,c=1] @s[tag=origins:random_autoselect,tag=!origins:selected_origin,scores={dummy_value=0,origin:usability=-1}] origins_weppl_troll_locked
tag @s[tag=origins:random_autoselect,scores={dummy_value=0}] remove origins:random_autoselect