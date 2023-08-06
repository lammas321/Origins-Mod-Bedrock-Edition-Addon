scoreboard players operation @s dummy_value = @s od:health
scoreboard players operation @s dummy_value -= @s odw:health
scoreboard players random @s[scores={dummy_value=2..}] nonviolent_t 1 20
effect @s[scores={dummy_value=2..,nonviolent_t=1}] slowness 8 255 true
effect @s[scores={dummy_value=2..,nonviolent_t=1}] blindness 8 0 true