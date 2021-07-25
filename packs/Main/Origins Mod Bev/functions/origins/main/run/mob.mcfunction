scoreboard players set @s od:hurting 0
scoreboard players operation @s dummy_value = @s odw:health
scoreboard players operation @s dummy_value -= @s od:health
scoreboard players set @s[scores={dummy_value=1..}] od:hurting 1
