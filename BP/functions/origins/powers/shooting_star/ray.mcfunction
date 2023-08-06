execute @s ~~~ detect ~~~ air -1 tag @s add origins:power_shooting_star_not_hit_block
execute @s[tag=!origins:power_shooting_star_not_hit_block] ~~~ function origins/powers/shooting_star/hit_block
tag @s[tag=origins:power_shooting_star_not_hit_block] remove origins:power_shooting_star_not_hit_block
execute @s[scores={shootstar_h=0}] ~~~ execute @e[tag=!origins:power_shooting_star_shooter,family=!origins,family=!ignore,type=!area_effect_cloud,type=!armor_stand,type=!arrow,type=!boat,type=!chest_minecart,type=!command_block_minecart,type=!dragon_fireball,type=!egg,type=!ender_crystal,type=!ender_pearl,type=!evocation_fang,type=!eye_of_ender_signal,type=!falling_block,type=!fireball,type=!fireworks_rocket,type=!fishing_hook,type=!hopper_minecart,type=!item,type=!leash_knot,type=!lightning_bolt,type=!lingering_potion,type=!llama_spit,type=!minecart,type=!painting,type=!shulker,type=!shulker_bullet,type=!small_fireball,type=!snowball,type=!splash_potion,type=!thrown_trident,type=!tnt,type=!tnt_minecart,type=!wither_skull,type=!wither_skull_dangerous,type=!xp_bottle,type=!xp_orb,r=2,c=1] ~~~ function origins/powers/shooting_star/hit_entity
scoreboard players add @s shootstar_d 1
particle origins:dust_0.6_0_1 ~~~
particle origins:dust_0.7_0_0.8 ~~~
particle origins:dust_0.4_0.3_1 ~~~
particle origins:dust_0.4_0_0.8 ~~~
particle origins:dust_0.3_0_0.8 ~~~
particle origins:dust_0.6_0_1 ~~~
particle origins:dust_0.7_0_0.8 ~~~
particle origins:dust_0.4_0.3_1 ~~~
particle origins:dust_0.4_0_0.8 ~~~
particle origins:dust_0.3_0_0.8 ~~~
particle origins:wax_off ~~~
tp @s ^^^0.2
execute @s[scores={shootstar_h=0,shootstar_d=..200}] ~~~ function origins/powers/shooting_star/ray