effect @s jump_boost 2147483647 2 true
tag @s add origins:damage_modification_invulnerable_falling
scoreboard objectives add elastic_cd dummy
scoreboard players set @s elastic_cd 0
give @s origins:power1