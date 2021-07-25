#fire immunity
effect @s[scores={odw:moving=0,od:moving=1}] fire_resistance 2147483647 0 true
#burning wrath
effect @s[scores={od:fire=1}] strength 8 0 true
effect @s[scores={od:lava=1}] strength 8 0 true
#hotblooded
effect @s[scores={odw:using=1,od:using=0}] hunger 0 255 true
effect @s[scores={odw:using=1,od:using=0}] poison 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] hunger 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] poison 0 255 true
effect @s[scores={odw:moving=1,od:moving=0}] hunger 0 255 true
effect @s[scores={odw:moving=1,od:moving=0}] poison 0 255 true
#nether inhabitant
function origins/main/presets/nether_spawn
#hydrophobia
function origins/main/presets/hydrophobia