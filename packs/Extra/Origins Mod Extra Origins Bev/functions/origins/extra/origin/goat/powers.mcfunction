#high jump
scoreboard players remove @s[scores={goat_hjcd=1..}] goat_hjcd 1
effect @s[scores={od:dj=1,goat_hjcd=0}] levitation 1 14 true
effect @s[scores={goat_hjcd=90}] levitation 0 15 true
scoreboard players set @s[scores={od:dj=1,goat_hjcd=0}] goat_hjcd 100
title @s[scores={goat_hjcd=1}] actionbar §l§a//////
title @s[scores={goat_hjcd=2..17}] actionbar §l§a/////§4/
title @s[scores={goat_hjcd=18..34}] actionbar §l§a////§4//
title @s[scores={goat_hjcd=35..51}] actionbar §l§a///§4///
title @s[scores={goat_hjcd=52..68}] actionbar §l§a//§4////
title @s[scores={goat_hjcd=69..85}] actionbar §l§a/§4/////
title @s[scores={goat_hjcd=86..100}] actionbar §l§4//////
#rammer
effect @s[scores={odw:sprinting=0,od:sprinting=1}] strength 2147483647 0 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] strength 0 1 true
#high jumper
effect @s[scores={odw:sprinting=0,od:sprinting=1}] jump_boost 2147483647 1 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] jump_boost 0 2 true
#elevation
execute @s[scores={od:sleeping=1},y=0,r=93] ~~~ fill ~-3~-3~-3 ~3~3~3 air 0 replace bed
scoreboard players set @s[scores={od:sleeping=1},y=0,r=93] od:sleeping 0
#thick fur
effect @s[scores={odw:temp=..9,od:temp=10..}] slowness 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:temp=10..}] slowness 2147483647 0 true
effect @s[scores={odw:temp=10..,od:temp=..9}] slowness 0 1 true
#vegetarian
function origins/main/presets/vegetarian