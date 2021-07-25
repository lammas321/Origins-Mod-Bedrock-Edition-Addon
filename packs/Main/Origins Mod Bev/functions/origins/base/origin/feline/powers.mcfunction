#strong ankles
effect @s[scores={odw:sprinting=0,od:sprinting=1}] jump_boost 2147483647 1 true
effect @s[scores={odw:sprinting=1,od:sprinting=0}] jump_boost 0 2 true
#nocturnal
effect @s[scores={od:attacking=1,od:day=1}] mining_fatigue 2147483647 0 true
effect @s[scores={odw:day=1,od:day=0}] mining_fatigue 0 1 true
effect @s[scores={odw:moving=0,od:moving=1,od:day=0}] speed 2147483647 0 true
effect @s[scores={odw:day=0,od:day=1}] speed 0 1 true
tag @s[tag=origins:base_feline_nv,scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] add origins:base_feline_nv_off
effect @s[scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] night_vision 2147483647 0 true
tag @s[scores={odw:jumping=0,od:jumping=1,od:sneaking=1}] add origins:base_feline_nv
effect @s[tag=origins:base_feline_nv_off] night_vision 0 1 true
tag @s[tag=origins:base_feline_nv_off] remove origins:base_feline_nv
tag @s remove origins:base_feline_nv_off