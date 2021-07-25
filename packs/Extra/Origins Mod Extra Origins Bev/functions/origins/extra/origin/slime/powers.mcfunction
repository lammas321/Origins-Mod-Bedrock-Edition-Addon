#elastic body
effect @s[tag=!origins:extra_slime_small,scores={odw:moving=0,od:moving=1,odw:alive=1,od:alive=1}] jump_boost 2147483647 2 true
scoreboard players add @s[scores={od:sneaking=1,od:on_ground=1,slime_ebp=..119}] slime_ebp 1
effect @s[scores={odw:sneaking=1,od:sneaking=0,slime_ebp=1..}] jump_boost 0 9 true
effect @s[scores={odw:on_ground=1,od:on_ground=0,slime_ebp=1..}] jump_boost 0 9 true
effect @s[tag=!origins:extra_slime_small,scores={odw:sneaking=1,od:sneaking=0,slime_ebp=1..}] jump_boost 2147483647 2 true
effect @s[tag=!origins:extra_slime_small,scores={odw:on_ground=1,od:on_ground=0,slime_ebp=1..}] jump_boost 2147483647 2 true
title @s[scores={odw:sneaking=1,od:sneaking=0,slime_ebp=1..}] actionbar §r
title @s[scores={odw:on_ground=1,od:on_ground=0,slime_ebp=1..}] actionbar §r
scoreboard players set @s[scores={odw:sneaking=1,od:sneaking=0}] slime_ebp 0
scoreboard players set @s[scores={odw:on_ground=1,od:on_ground=0}] slime_ebp 0
effect @s[tag=!origins:extra_slime_small,scores={slime_ebp=10..19}] jump_boost 1 3 true
effect @s[tag=origins:extra_slime_small,scores={slime_ebp=10..19}] jump_boost 1 0 true
title @s[scores={slime_ebp=10..19}] actionbar §l§a/§4/////
effect @s[tag=!origins:extra_slime_small,scores={slime_ebp=20..39}] jump_boost 1 4 true
effect @s[tag=origins:extra_slime_small,scores={slime_ebp=20..39}] jump_boost 1 1 true
title @s[scores={slime_ebp=20..39}] actionbar §l§a//§4////
effect @s[tag=!origins:extra_slime_small,scores={slime_ebp=40..59}] jump_boost 1 5 true
effect @s[tag=origins:extra_slime_small,scores={slime_ebp=40..59}] jump_boost 1 1 true
title @s[scores={slime_ebp=40..59}] actionbar §l§a///§4///
effect @s[tag=!origins:extra_slime_small,scores={slime_ebp=60..89}] jump_boost 1 6 true
effect @s[tag=origins:extra_slime_small,scores={slime_ebp=60..89}] jump_boost 1 2 true
title @s[scores={slime_ebp=60..89}] actionbar §l§a////§4//
effect @s[tag=!origins:extra_slime_small,scores={slime_ebp=90..119}] jump_boost 1 7 true
effect @s[tag=origins:extra_slime_small,scores={slime_ebp=90..119}] jump_boost 1 2 true
title @s[scores={slime_ebp=90..119}] actionbar §l§a/////§4/
effect @s[tag=!origins:extra_slime_small,scores={slime_ebp=120..}] jump_boost 1 8 true
effect @s[tag=origins:extra_slime_small,scores={slime_ebp=120..}] jump_boost 1 3 true
title @s[scores={slime_ebp=120}] actionbar §l§a//////
#split-up
execute @s[tag=!origins:extra_slime_small,scores={odw:alive=1,od:alive=0}] ~~~ summon origins:position slime_split
execute @e[type=origins:position,name=slime_split] ~~~ tp @p[tag=origins:extra_slime_origin_selected,tag=!origins:extra_slime_small,scores={odw:alive=0,od:alive=1}] ~~~
execute @e[type=origins:position,name=slime_split] ~~~ event entity @p[tag=origins:extra_slime_origin_selected,tag=!origins:extra_slime_small,scores={odw:alive=0,od:alive=1}] origins:scale_0.5
execute @e[type=origins:position,name=slime_split] ~~~ event entity @p[tag=origins:extra_slime_origin_selected,tag=!origins:extra_slime_small,scores={odw:alive=0,od:alive=1}] origins:hp_10
execute @e[type=origins:position,name=slime_split] ~~~ tag @p[tag=origins:extra_slime_origin_selected,tag=!origins:extra_slime_small,scores={odw:alive=0,od:alive=1}] add origins:extra_slime_shrink
execute @s[tag=!origins:extra_slime_small,scores={odw:alive=0,od:alive=1}] ~~~ tp @e[type=origins:position,name=slime_split,c=1] ~ -100~
execute @s[tag=!origins:extra_slime_small,scores={odw:alive=0,od:alive=1}] ~ -100~ kill @e[type=origins:position,name=slime_split,c=1]
event entity @s[tag=origins:extra_slime_small,scores={odw:alive=0,od:alive=1}] origins:scale_1
event entity @s[tag=origins:extra_slime_small,scores={odw:alive=0,od:alive=1}] origins:hp_20
tag @s[tag=origins:extra_slime_small,scores={odw:alive=0,od:alive=1}] remove origins:extra_slime_small
tag @s[tag=!origins:extra_slime_small,tag=origins:extra_slime_shrink,scores={odw:alive=0,od:alive=1}] add origins:extra_slime_small
tag @s remove origins:extra_slime_shrink
#liquid body
function origins/main/presets/hydrophobia
effect @s[scores={odw:temp=..9,od:temp=10..}] slowness 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:temp=10..}] slowness 2147483647 0 true
effect @s[scores={odw:temp=10..,od:temp=..9}] slowness 0 1 true
effect @s[scores={odw:temp=3..,od:temp=..2}] slowness 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:temp=..2}] slowness 2147483647 0 true
effect @s[scores={odw:temp=..2,od:temp=3..}] slowness 0 1 true
#sticky feet
effect @s[scores={odw:sprinting=0,od:sprinting=1}] slowness 2147483647 0 true
effect @s[scores={odw:sprinting=0,od:sprinting=1}] hunger 2147483647 0 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] slowness 0 1 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] hunger 0 1 true