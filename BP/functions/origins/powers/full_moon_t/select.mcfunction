give @s origins:power1 1 0 {"item_lock":{"mode":"lock_in_inventory"},"keep_on_death":{}}
scoreboard objectives add bch_cd dummy
scoreboard players set @s bch_cd 0
scoreboard objectives add bloodt_cd dummy
scoreboard players set @s bloodt_cd 0
scoreboard objectives add unusual_sound dummy
scoreboard players add @e[type=origins:origin_extra_wolfwalkt] unusual_sound 0