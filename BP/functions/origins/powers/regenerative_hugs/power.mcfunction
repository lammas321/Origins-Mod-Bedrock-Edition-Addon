scoreboard players add @s[scores={od:sneaking=1}] regen_hugs 1
scoreboard players set @s[scores={odw:sneaking=1,od:sneaking=0}] regen_hugs 0
execute @s[scores={regen_hugs=80}] ~~~ function origins/powers/regenerative_hugs/activate_power