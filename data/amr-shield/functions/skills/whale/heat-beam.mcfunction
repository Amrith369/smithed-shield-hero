execute at @s anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["smithed.entity","amr.shield.heat.beam"]}
execute at @s anchored eyes positioned ^ ^ ^3 run summon marker ~ ~ ~ {Tags:["smithed.entity","amr.shield.heat.beam"]}
execute at @s anchored eyes positioned ^ ^ ^5 run summon marker ~ ~ ~ {Tags:["smithed.entity","amr.shield.heat.beam"]}
execute at @s anchored eyes positioned ^ ^ ^7 run summon marker ~ ~ ~ {Tags:["smithed.entity","amr.shield.heat.beam"]}
execute at @s anchored eyes positioned ^ ^ ^9 run summon marker ~ ~ ~ {Tags:["smithed.entity","amr.shield.heat.beam"]}
execute at @s anchored eyes positioned ^ ^ ^11 run summon marker ~ ~ ~ {Tags:["smithed.entity","amr.shield.heat.beam"]}
#execute as @e[tag=amr.shield.heat.beam] at @s run function amr-shield:particles/beam
execute as @e[tag=amr.shield.heat.beam] at @s run particle dust 1.000 0.847 0.420 3 ~ ~ ~ 0 0 0 0.001 20 normal
execute as @e[tag=amr.shield.heat.beam] at @s run function amr-shield:particles/halo
execute at @e[tag=amr.shield.heat.beam] as @e[distance=0..2,tag=!amr.shield.party,tag=!smithed.strict] run data merge entity @s {Fire:40}
execute at @e[tag=amr.shield.heat.beam] as @e[distance=0..2,tag=!amr.shield.party,tag=!smithed.strict] run scoreboard players set @s smithed.damage 4
execute at @e[tag=amr.shield.heat.beam] as @e[distance=0..2,tag=!amr.shield.party,tag=!smithed.strict] run function #smithed.damage:entity/apply
kill @e[tag=amr.shield.heat.beam]
scoreboard players set @s amr.shield.block 0
