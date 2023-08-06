scoreboard players set @s dummy_value 120
scoreboard players set @s starborne_rb1 72
scoreboard players operation @s starborne_rb1 *= @s shootstar_cd
scoreboard players operation @s starborne_rb1 /= @s dummy_value
scoreboard players set @s dummy_value 1200
scoreboard players set @s starborne_rb2 72
scoreboard players operation @s starborne_rb2 *= @s supernova_cd
scoreboard players operation @s starborne_rb2 /= @s dummy_value
titleraw @s[scores={speedystar_cd=0,starborne_rb1=0,starborne_rb2=1..}] actionbar {"rawtext":[{"text":"show_supernova"},{"score":{"name":"@s","objective":"starborne_rb2"}},{"text":"_resource_bar"}]}
titleraw @s[scores={speedystar_cd=0,starborne_rb1=1..}] actionbar {"rawtext":[{"text":"show_shooting_star"},{"score":{"name":"@s","objective":"starborne_rb1"}},{"text":"_resource_bar"}]}
title @s[scores={speedystar_cd=120}] actionbar show_speedy_star_resource_bar