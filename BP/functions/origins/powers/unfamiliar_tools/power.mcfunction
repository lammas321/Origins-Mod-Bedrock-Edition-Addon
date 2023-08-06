tag @s[scores={od:hold=308}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=309}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=310}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=311}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=322}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=323}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=324}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=325}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=307}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=296}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=297}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=298}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=316}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=317}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=318}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=319}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=329}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=333}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=331}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=332}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=603}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=604}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=605}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=606}] add origins:power_unfamiliar_tools_holding
tag @s[scores={od:hold=607}] add origins:power_unfamiliar_tools_holding
effect @s[tag=!origins:power_unfamiliar_tools_was_holding,tag=origins:power_unfamiliar_tools_holding] weakness 2147483647 0 true
effect @s[tag=!origins:power_unfamiliar_tools_was_holding,tag=origins:power_unfamiliar_tools_holding] mining_fatigue 2147483647 0 true
effect @s[tag=origins:power_unfamiliar_tools_holding,scores={odw:attacking=0,od:attacking=1}] weakness 2147483647 0 true
effect @s[tag=origins:power_unfamiliar_tools_holding,scores={odw:attacking=0,od:attacking=1}] mining_fatigue 2147483647 0 true
effect @s[tag=origins:power_unfamiliar_tools_was_holding,tag=!origins:power_unfamiliar_tools_holding,scores={od:dim=1..}] weakness 0 1 true
effect @s[tag=origins:power_unfamiliar_tools_was_holding,tag=!origins:power_unfamiliar_tools_holding] mining_fatigue 0 1 true
tag @s[tag=origins:power_unfamiliar_tools_holding] add origins:power_unfamiliar_tools_was_holding
tag @s[tag=!origins:power_unfamiliar_tools_holding] remove origins:power_unfamiliar_tools_was_holding
tag @s remove origins:power_unfamiliar_tools_holding