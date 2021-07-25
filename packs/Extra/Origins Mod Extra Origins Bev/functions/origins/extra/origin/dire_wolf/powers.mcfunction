#bloodthirsty
effect @s[scores={od:attacking=1}] strength 2147483647 0 true
#cave dweller
scoreboard players remove @s[scores={dire_wolf_cdt=1..}] dire_wolf_cdt 1
scoreboard players set @s dire_wolf_cdc 0
execute @s ~~~ detect ~~2~ air 0 scoreboard players add @s dire_wolf_cdc 1
execute @s ~~~ detect ~~3~ air 0 scoreboard players add @s dire_wolf_cdc 1
execute @s ~~~ detect ~~4~ air 0 scoreboard players add @s dire_wolf_cdc 1
effect @s[scores={dire_wolf_cdt=0,dire_wolf_cdc=0..2}] regeneration 3 0 true
scoreboard players set @s[scores={dire_wolf_cdt=0,dire_wolf_cdc=0..2}] dire_wolf_cdt 60
#natural hunter
effect @s[scores={odw:day=1,od:day=0}] night_vision 2147483647 0 true
effect @s[scores={odw:day=1,od:day=0}] speed 2147483647 0 true
effect @s[scores={od:day=0,odw:moving=0,od:moving=1}] night_vision 2147483647 0 true
effect @s[scores={od:day=0,odw:moving=0,od:moving=1}] speed 2147483647 0 true
effect @s[scores={odw:day=0,od:day=1}] night_vision 0 1 true
effect @s[scores={odw:day=0,od:day=1}] speed 0 1 true
#carnivorous
function origins/main/presets/carnivore
#active
effect @s[scores={odw:moving=0,od:moving=1}] hunger 2147483647 0 true
effect @s[scores={odw:moving=1,od:moving=0}] hunger 0 1 true
#wolf like head
replaceitem entity @s[scores={od:head=1..}] slot.armor.head 0 air