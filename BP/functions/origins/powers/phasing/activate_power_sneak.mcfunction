tag @s add origins:power_phasing_crouch_can_start
execute @s ~~~ detect ~~1.5~ air 0 tag @s remove origins:power_phasing_crouch_can_start
tag @s[tag=origins:power_phasing_crouch_can_start] add origins:power_phasing_crouch_start
tag @s[tag=origins:power_phasing_crouch_can_start] add origins:power_phasing_crouch_started
tag @s[tag=origins:power_phasing_crouch_can_start] remove origins:power_phasing_crouch_can_start