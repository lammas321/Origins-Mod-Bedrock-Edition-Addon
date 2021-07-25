#frog legs
effect @s[scores={odw:moving=0,od:moving=1}] speed 2147483647 0 true
effect @s[scores={odw:sprinting=0,od:sprinting=1}] jump_boost 2147483647 1 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] jump_boost 0 2 true
effect @s[scores={odw:sneaking=0,od:sneaking=1}] jump_boost 2147483647 4 true
effect @s[scores={odw:sneaking=1,od:sneaking=0}] jump_boost 0 5 true
#frog stomach
effect @s[scores={odw:using=1,od:using=0}] hunger 0 255 true
effect @s[scores={odw:using=1,od:using=0}] poison 0 255 true
effect @s[scores={odw:moving=0,od:moving=1,od:sprinting=0}] hunger 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] poison 0 255 true
effect @s[scores={odw:moving=1,od:moving=0,od:sprinting=0}] hunger 0 255 true
effect @s[scores={odw:moving=1,od:moving=0}] poison 0 255 true
#frog diet
function origins/main/presets/carnivore
replaceitem entity @s[scores={od:hold=262..269,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=273..276,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=288..290,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=550..551,od:use_time=20..}] slot.weapon.mainhand 0 air
#big belly
effect @s[scores={odw:sprinting=0,od:sprinting=1}] hunger 2147483647 0 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] hunger 0 1 true