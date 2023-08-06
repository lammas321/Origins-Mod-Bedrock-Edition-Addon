tag @s add origins:power_phasing_can
scoreboard players set @s dummy_value 0
execute @s ~~~ detect ~-0.35~-0.05~-0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=1}] ~~~ detect ~0.35~-0.05~-0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=2}] ~~~ detect ~-0.35~-0.05~0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=3}] ~~~ detect ~0.35~-0.05~0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=4}] ~~~ detect ~-0.35~0.9~-0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=5}] ~~~ detect ~0.35~0.9~-0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=6}] ~~~ detect ~-0.35~0.9~0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=7}] ~~~ detect ~0.35~0.9~0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=8}] ~~~ detect ~-0.35~1.85~-0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=9}] ~~~ detect ~0.35~1.85~-0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=10}] ~~~ detect ~-0.35~1.85~0.35 air 0 scoreboard players add @s dummy_value 1
execute @s[scores={dummy_value=11}] ~~~ detect ~0.35~1.85~0.35 air 0 scoreboard players add @s dummy_value 1
tag @s[scores={dummy_value=12}] remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~~-0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~~-0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~~0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~~0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~0.9~-0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~0.9~-0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~0.9~0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~0.9~0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~1.8~-0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~1.8~-0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~1.8~0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~1.8~0.3 barrier 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~~-0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~~-0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~~0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~~0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~0.9~-0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~0.9~-0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~0.9~0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~0.9~0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~1.8~-0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~1.8~-0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~1.8~0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~1.8~0.3 bedrock 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~~-0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~~-0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~~0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~~0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~0.9~-0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~0.9~-0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~0.9~0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~0.9~0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~1.8~-0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~1.8~-0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~1.8~0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~1.8~0.3 crying_obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~~-0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~~-0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~~0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~~0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~0.9~-0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~0.9~-0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~0.9~0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~0.9~0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~1.8~-0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~1.8~-0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~-0.3~1.8~0.3 obsidian 0 tag @s remove origins:power_phasing_can
execute @s[tag=origins:power_phasing_can] ^^^1.5 detect ~0.3~1.8~0.3 obsidian 0 tag @s remove origins:power_phasing_can
tp @s[tag=origins:power_phasing_can] ^^^1.5
tag @s[tag=origins:power_phasing_can] remove origins:power_phasing_can