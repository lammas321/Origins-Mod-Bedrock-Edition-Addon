#hoarder
function origins/main/presets/spare_inventory_9
#sturdy skin
effect @s[scores={od:head=0..3,od:chest=0..3,od:legs=0..3,od:feet=0..3,odw:moving=0,od:moving=1}] resistance 2147483647 1 true
effect @s[scores={od:head=0..3,od:chest=7,od:legs=0..3,od:feet=0..3,odw:moving=0,od:moving=1}] resistance 2147483647 1 true
effect @s[scores={odw:head=0..3,od:head=4..7}] resistance 0 2 true
effect @s[scores={odw:chest=0..3,od:chest=4..6}] resistance 0 2 true
effect @s[scores={odw:chest=7,od:chest=4..6}] resistance 0 2 true
effect @s[scores={odw:legs=0..3,od:legs=4..6}] resistance 0 2 true
effect @s[scores={odw:feet=0..3,od:feet=4..6}] resistance 0 2 true
effect @s[scores={od:head=4..7,odw:moving=0,od:moving=1}] resistance 2147483647 0 true
effect @s[scores={od:chest=4..6,odw:moving=0,od:moving=1}] resistance 2147483647 0 true
effect @s[scores={od:legs=4..6,odw:moving=0,od:moving=1}] resistance 2147483647 0 true
effect @s[scores={od:feet=4..6,odw:moving=0,od:moving=1}] resistance 2147483647 0 true
#strong arms
effect @s[scores={od:attacking=1}] haste 2147483647 0 true
#unwieldy
replaceitem entity @s[scores={od:hold=355,od:sneaking=1}] slot.weapon.mainhand 0 air
replaceitem entity @s[scores={od:ohold=355,od:sneaking=1}] slot.weapon.offhand 0 air
#large apetite
effect @s[scores={odw:sprinting=0,od:sprinting=1}] hunger 2147483647 0 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] hunger 0 1 true