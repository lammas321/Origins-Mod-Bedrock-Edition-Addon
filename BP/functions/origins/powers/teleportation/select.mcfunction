scoreboard objectives add teleport_cd dummy
scoreboard players add @s teleport_cd 0
give @s[scores={teleport_cd=0}] origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}