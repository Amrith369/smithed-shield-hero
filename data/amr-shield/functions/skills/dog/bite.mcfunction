execute at @s positioned ^ ^1 ^1 run function amr-shield:particles/shuck
#execute at @s run summon evoker_fangs ^ ^0.7 ^1.2 {Invulnerable:1b,Warmup:-1}
#execute at @s run summon evoker_fangs ^ ^0.7 ^2 {Invulnerable:1b,Warmup:-1}
execute at @s run playsound minecraft:entity.evoker_fangs.attack player @s ~ ~ ~ 3 1
#execute store result score @e[distance=0..2,tag=!amr.shield.party,tag=!smithed.strict] smithed.damage run scoreboard players operation @s amr.shield.dog.awakened *= @s amr.shield.dog.rarity
execute at @s run execute as @e[distance=0..3,tag=!amr.shield.party,tag=!smithed.strict] run scoreboard players set @s smithed.damage 3
execute at @s[scores={amr.shield.dog.awakened=1..}] run execute as @e[distance=0..3,tag=!amr.shield.party,tag=!smithed.strict] run scoreboard players set @s smithed.damage 4
execute at @s run execute as @e[distance=0..2,tag=!amr.shield.party,tag=!smithed.strict] run function #smithed.damage:entity/apply
scoreboard players set @s amr.shield.block 0
