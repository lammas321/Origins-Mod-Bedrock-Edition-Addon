tellraw @s[tag=origins:debug] {"rawtext":[{"text":"Origins Debug: origins/main/initalize_player"}]}
tag @s add origins:first_join
tag @s add origins:display_selection_ui
scoreboard players add @s dummy_value 0
scoreboard players set @s origin:main_ver 1003009
scoreboard players operation @s origin:playerid = @e[type=origins:origins] origin:playerid
scoreboard players add @e[type=origins:origins] origin:playerid 1
scoreboard players add @s origin:selectid 0
tag @s add origins:damage_modification_invulnerable
scoreboard players add @s od:alive 0
scoreboard players add @s odw:alive 0
scoreboard players add @s od:attacking 0
scoreboard players add @s odw:attacking 0
scoreboard players add @s od:biome 0
scoreboard players add @s odw:biome 0
scoreboard players add @s od:chest 0
scoreboard players add @s odw:chest 0
scoreboard players add @s od:day 0
scoreboard players add @s odw:day 0
scoreboard players add @s od:dim 0
scoreboard players add @s odw:dim 0
scoreboard players add @s od:feet 0
scoreboard players add @s odw:feet 0
scoreboard players add @s od:fire 0
scoreboard players add @s odw:fire 0
scoreboard players add @s od:gliding 0
scoreboard players add @s odw:gliding 0
scoreboard players add @s od:head 0
scoreboard players add @s odw:head 0
scoreboard players add @s od:health 0
scoreboard players add @s odw:health 0
scoreboard players add @s od:hold 0
scoreboard players add @s odw:hold 0
scoreboard players add @s od:jumping 0
scoreboard players add @s odw:jumping 0
scoreboard players add @s od:lava 0
scoreboard players add @s odw:lava 0
scoreboard players add @s od:legs 0
scoreboard players add @s odw:legs 0
scoreboard players add @s od:light 0
scoreboard players add @s odw:light 0
scoreboard players add @s od:mhealth 0
scoreboard players add @s odw:mhealth 0
scoreboard players add @s od:moon 0
scoreboard players add @s odw:moon 0
scoreboard players add @s od:moving 0
scoreboard players add @s odw:moving 0
scoreboard players add @s od:hold 0
scoreboard players add @s odw:hold 0
scoreboard players add @s od:on_fire 0
scoreboard players add @s odw:on_fire 0
scoreboard players add @s od:on_ground 0
scoreboard players add @s odw:on_ground 0
scoreboard players add @s od:rain 0
scoreboard players add @s odw:rain 0
scoreboard players add @s od:ridden 0
scoreboard players add @s odw:ridden 0
scoreboard players add @s od:riding 0
scoreboard players add @s odw:riding 0
scoreboard players add @s od:sleeping 0
scoreboard players add @s odw:sleeping 0
scoreboard players add @s od:sneaking 0
scoreboard players add @s odw:sneaking 0
scoreboard players add @s od:splashed 0
scoreboard players add @s odw:splashed 0
scoreboard players add @s od:sprinting 0
scoreboard players add @s odw:sprinting 0
scoreboard players add @s od:swimming 0
scoreboard players add @s odw:swimming 0
scoreboard players add @s od:temp 0
scoreboard players add @s odw:temp 0
scoreboard players add @s od:underground 0
scoreboard players add @s odw:underground 0
scoreboard players add @s od:underwater 0
scoreboard players add @s odw:underwater 0
scoreboard players add @s od:using 0
scoreboard players add @s odw:using 0
scoreboard players add @s od:water 0
scoreboard players add @s odw:water 0