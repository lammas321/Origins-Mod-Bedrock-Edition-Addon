enchant @s[scores={od:hold=546,od:using=1}] loyalty 3
execute @s[tag=origins:power_tentacle_throw] ~~~ tag @e[type=thrown_trident,c=1,r=15] add origins:power_tentacle
tag @s remove origins:power_tentacle_throw
tag @s[scores={odw:hold=546,odw:using=1,od:using=0}] add origins:power_tentacle_throw
execute @e[type=thrown_trident,tag=origins:power_tentacle] ~~~ tp @e[family=!origins,family=!ignore,tag=!origins:selected_extra_tmotd_origin,type=!area_effect_cloud,type=!arrow,type=!dragon_fireball,type=!egg,type=!ender_crystal,type=!ender_pearl,type=!evocation_fang,type=!eye_of_ender_signal,type=!falling_block,type=!fireball,type=!fireworks_rocket,type=!fishing_hook,type=!leash_knot,type=!lightning_bolt,type=!lingering_potion,type=!llama_spit,type=!painting,type=!shulker,type=!shulker_bullet,type=!small_fireball,type=!snowball,type=!splash_potion,type=!thrown_trident,type=!wither_skull,type=!wither_skull_dangerous,type=!xp_bottle,type=!xp_orb,c=1,r=4] ~~-1~
execute @s ~~0.75~ kill @e[type=thrown_trident,tag=origins:power_tentacle,r=0.5]
clear @s[scores={odw:sneaking=0,od:sneaking=1}] trident
give @s[scores={odw:sneaking=0,od:sneaking=1}] origins:power6 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
tag @s[scores={odw:sneaking=0,od:sneaking=1},hasitem={item=origins:power6}] add origins:power_tentacle_give
clear @s[scores={odw:sneaking=0,od:sneaking=1}] origins:power6
give @s[tag=origins:power_tentacle_give] trident 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
tag @s[scores={odw:sneaking=0,od:sneaking=1}] remove origins:power_tentacle_give