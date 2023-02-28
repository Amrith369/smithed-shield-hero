execute at @s run execute at @e[distance=1..30,type=#shield_hero:undead,tag=!amr.shield.party,tag=!smithed.strict] run summon area_effect_cloud ~ ~ ~ {Tags:["amr.shield.aggro","smithed.entity","smithed.strict"],Age:-1,WaitTime:-1,Radius:1.0f,Duration:2,DurationOnUse:-2,Effects:[{Id:6b,Amplifier:30,Duration:1,ShowParticles:0b}]}
execute at @s run execute at @e[distance=1..30,type=!#shield_hero_undead,tag=!amr.shield.party,tag=!smithed.strict] run summon area_effect_cloud ~ ~ ~ {Tags:["amr.shield.aggro","smithed.entity","smithed.strict"],Age:-1,WaitTime:-1,Radius:1.0f,Duration:2,DurationOnUse:-2,Effects:[{Id:7b,Amplifier:30,Duration:1,ShowParticles:0b}]}
execute as @e[tag=amr.shield.aggro] run data modify entity @s Owner set from entity @a[tag=amr.shield,limit=1,sort=nearest] UUID
execute at @e[tag=amr.shield.aggro] run particle minecraft:angry_villager ~ ~1 ~ 0 0 0 0.03 1 force
execute at @e[tag=amr.shield.aggro] run effect clear @e[tag=!smithed.strict,distance=0..3] invisibility
scoreboard players set @s amr.skill.shield.hate.reaction 0
scoreboard players set @s amr.shield.wooden.hr.cooldown 200
