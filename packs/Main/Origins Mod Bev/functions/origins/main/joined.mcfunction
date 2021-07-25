gamerule doimmediaterespawn true
gamerule spawnradius 0
gamerule sendcommandfeedback false
gamerule showtags false
function origins/main/make_scoreboards
function origins/main/set_scores
event entity @s origins:dmg_immunity_all
tag @s add origins:col_0.6_1.8
scoreboard players reset @s origins:ver
scoreboard players set @s origin_ver 120
tag @s remove origins:just_joined
tag @s add origins:has_joined