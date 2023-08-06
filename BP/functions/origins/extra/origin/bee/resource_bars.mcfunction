scoreboard players set @s dummy_value 600
scoreboard players set @s bee_rb1 72
scoreboard players operation @s bee_rb1 *= @s honeyprod_cd
scoreboard players operation @s bee_rb1 /= @s dummy_value
scoreboard players set @s bee_rb2 72
scoreboard players operation @s bee_rb2 *= @s pollen_power_cd
scoreboard players operation @s bee_rb2 /= @s dummy_value
scoreboard players set @s dummy_value 300
scoreboard players set @s bee_rb3 72
scoreboard players operation @s bee_rb3 *= @s tbol_cd
scoreboard players operation @s bee_rb3 /= @s dummy_value
scoreboard players set @s dummy_value 1200
scoreboard players set @s bee_rb4 72
scoreboard players operation @s bee_rb4 *= @s kamikaze_cd
scoreboard players operation @s bee_rb4 /= @s dummy_value
titleraw @s[scores={bee_wings_cd=0,bee_rb1=0,bee_rb2=0,bee_rb3=0,bee_rb4=1..}] actionbar {"rawtext":[{"text":"show_kamikaze"},{"score":{"name":"@s","objective":"bee_rb4"}},{"text":"_resource_bar"}]}
titleraw @s[scores={bee_wings_cd=0,bee_rb1=0,bee_rb2=0,bee_rb3=1..}] actionbar {"rawtext":[{"text":"show_the_bee_of_life"},{"score":{"name":"@s","objective":"bee_rb3"}},{"text":"_resource_bar"}]}
titleraw @s[scores={bee_wings_cd=0,bee_rb1=0,bee_rb2=1..}] actionbar {"rawtext":[{"text":"show_pollen_power"},{"score":{"name":"@s","objective":"bee_rb2"}},{"text":"_resource_bar"}]}
titleraw @s[scores={bee_wings_cd=0,bee_rb1=1..}] actionbar {"rawtext":[{"text":"show_honey_producer"},{"score":{"name":"@s","objective":"bee_rb1"}},{"text":"_resource_bar"}]}
title @s[scores={bee_wings_cd=1200}] actionbar show_bee_wings_reverse_resource_bar
title @s[scores={bee_wings_cd=600}] actionbar show_bee_wings_resource_bar