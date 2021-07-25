#wet eyes
effect @s[scores={odw:underwater=0,od:underwater=1}] night_vision 2147483647 0 true
effect @s[scores={odw:underwater=1,od:underwater=0}] night_vision 0 1 true
#aqua affinity
effect @s[scores={odw:underwater=0,od:underwater=1}] haste 2147483647 4 true
effect @s[scores={odw:underwater=1,od:underwater=0}] haste 0 5 true
#gills
effect @s[scores={odw:rain=0,od:rain=1,od:moving=0}] water_breathing 2147483647 0 true
effect @s[scores={od:rain=1,odw:moving=1,od:moving=0}] water_breathing 2147483647 0 true
effect @s[scores={odw:rain=1,od:rain=0}] water_breathing 0 1 true
effect @s[scores={od:rain=1,odw:moving=0,od:moving=1}] water_breathing 0 1 true
effect @s[scores={odw:alive=0,od:alive=1}] water_breathing 10 0 true