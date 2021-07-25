#raccoon vision
effect @s[scores={odw:day=1,od:day=0}] night_vision 2147483647 0 true
effect @s[scores={od:day=0,odw:moving=0,od:moving=1}] night_vision 2147483647 0 true
effect @s[scores={odw:day=0,od:day=1}] night_vision 0 1 true
#sharp claws
tag @s[tag=!origins:extra_raccoonl_claws,scores={od:hold=296..298}] add origins:extra_raccoonl_clawson
tag @s[tag=!origins:extra_raccoonl_claws,scores={od:hold=307}] add origins:extra_raccoonl_clawson
tag @s[tag=!origins:extra_raccoonl_claws,scores={od:hold=331}] add origins:extra_raccoonl_clawson
tag @s[tag=origins:extra_raccoonl_claws,scores={od:hold=..295}] add origins:extra_raccoonl_clawsoff
tag @s[tag=origins:extra_raccoonl_claws,scores={od:hold=299..306}] add origins:extra_raccoonl_clawsoff
tag @s[tag=origins:extra_raccoonl_claws,scores={od:hold=308..330}] add origins:extra_raccoonl_clawsoff
tag @s[tag=origins:extra_raccoonl_claws,scores={od:hold=332..}] add origins:extra_raccoonl_clawsoff
tag @s[tag=origins:extra_raccoonl_clawson] add origins:extra_raccoonl_claws
tag @s[tag=origins:extra_raccoonl_clawsoff] remove origins:extra_raccoonl_claws
effect @s[tag=origins:extra_raccoonl_clawson] strength 2147483647 0 true
effect @s[tag=origins:extra_raccoonl_clawsoff] strength 0 1 true
tag @s remove origins:extra_raccoonl_clawson
tag @s remove origins:extra_raccoonl_clawsoff
effect @s[tag=origins:extra_raccoonl_claws,scores={odw:moving=0,od:moving=1}] strength 2147483647 0 true
#runner
effect @s[scores={odw:sprinting=0,od:sprinting=1}] speed 2147483647 0 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] speed 0 1 true
#junk eater
effect @s[scores={od:hold=277,od:use_time=31}] regeneration 5 0 true
scoreboard players set @s[scores={od:hold=277,od:use_time=31}] od:use_time 0
effect @s[scores={odw:using=1,od:using=0}] hunger 0 255 true
effect @s[scores={odw:moving=0,od:moving=1}] hunger 0 255 true
effect @s[scores={odw:moving=1,od:moving=0}] hunger 0 255 true
function origins/main/presets/carnivore
replaceitem entity @s[scores={od:hold=262..269,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=273..276,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=278,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=288..290,od:use_time=20..}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:hold=550..551,od:use_time=20..}] slot.weapon.mainhand 0 air