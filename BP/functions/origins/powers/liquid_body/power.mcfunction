effect @s[scores={odw:temp=..9,od:temp=10..}] slowness 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:temp=10..}] slowness 2147483647 0 true
effect @s[scores={odw:temp=10..,od:temp=..9}] slowness 0 1 true
effect @s[scores={odw:temp=3..,od:temp=..2}] slowness 2147483647 0 true
effect @s[scores={odw:moving=0,od:moving=1,od:temp=..2}] slowness 2147483647 0 true
effect @s[scores={odw:temp=..2,od:temp=3..}] slowness 0 1 true
execute @s[tag=!origins:power_liquid_body,scores={od:water=1}] ~~~ function origins/powers/liquid_body/activate_power
execute @s[tag=!origins:power_liquid_body2,scores={od:underwater=1}] ~~~ function origins/powers/liquid_body/activate_power2
execute @s[tag=origins:power_liquid_body,tag=!origins:power_liquid_body2,scores={od:water=0}] ~~~ function origins/powers/liquid_body/deactivate_power
execute @s[tag=origins:power_liquid_body2,scores={od:underwater=0}] ~~~ function origins/powers/liquid_body/deactivate_power