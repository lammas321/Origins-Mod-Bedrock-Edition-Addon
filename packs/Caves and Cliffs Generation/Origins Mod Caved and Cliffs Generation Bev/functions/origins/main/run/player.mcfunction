scoreboard players set @s od:dj 0
scoreboard players set @s[scores={odw:jumping=0,od:jumping=1,odw:on_ground=0,od:on_ground=0}] od:dj 1
scoreboard players set @s od:hurting 0
scoreboard players operation @s dummy_value = @s odw:health
scoreboard players operation @s dummy_value -= @s od:health
scoreboard players set @s[scores={dummy_value=1..}] od:hurting 1
scoreboard players set @s[scores={odw:using=1,od:using=0}] od:use_time 0
scoreboard players add @s[scores={od:using=1}] od:use_time 1
scoreboard players set @s od:dim 2
execute @s ~~~ detect ~ -64~ bedrock 0 scoreboard players set @s od:dim 0
execute @s[scores={od:dim=0}] ~~~ detect ~ 127~ bedrock 0 scoreboard players set @s od:dim 1
scoreboard players set @s od:fire 0
execute @s ~~~ detect ~-0.3~~-0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~~-0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~~0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~~0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~0.9~-0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~0.9~-0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~0.9~0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~0.9~0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~1.8~-0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~1.8~-0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~1.8~0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~1.8~0.3 fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~~-0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~~-0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~~0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~~0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~0.9~-0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~0.9~-0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~0.9~0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~0.9~0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~1.8~-0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~1.8~-0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~-0.3~1.8~0.3 soul_fire -1 scoreboard players set @s od:fire 1
execute @s ~~~ detect ~0.3~1.8~0.3 soul_fire -1 scoreboard players set @s od:fire 1
clear @s[scores={od:hold=100006,od:using=1},tag=origins:origin_selected] origins:orb_of_origin 0 1
tag @s[scores={od:hold=100006,od:using=1},tag=origins:origin_selected] add origins:reset_origin
scoreboard players set @a[scores={od:hold=100006,od:using=1},tag=origins:origin_selected] od:using 0
tag @e[type=origins:custom_magic_beam] remove origins:used
