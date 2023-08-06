tag @s[tag=origins:power_night_vision_in_dark,scores={od:light=6..}] add origins:power_night_vision_in_dark_off
tag @s[tag=origins:power_night_vision_in_dark,scores={od:underwater=1}] add origins:power_night_vision_in_dark_off
effect @s[tag=!origins:power_night_vision_in_dark,scores={od:light=..4,od:underwater=0}] night_vision 2147483647 0 true
tag @s[tag=!origins:power_night_vision_in_dark,scores={od:light=..4,od:underwater=0}] add origins:power_night_vision_in_dark
effect @s[tag=origins:power_night_vision_in_dark,scores={odw:moving=0,od:moving=1,od:light=..5,od:underwater=0}] night_vision 2147483647 0 true
effect @s[tag=origins:power_night_vision_in_dark_off] night_vision 0 1 true
tag @s[tag=origins:power_night_vision_in_dark_off] remove origins:power_night_vision_in_dark
tag @s remove origins:power_night_vision_in_dark_off