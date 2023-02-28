execute at @s positioned ^ ^ ^1.5 run function amr-shield:particles/circle
execute at @s run execute at @e[distance=0..3,type=#amr-shield:amr-magic,tag=!amr.shield.party,tag=!smithed.strict] run particle minecraft:electric_spark ~ ~0.1 ~ 0.2 0.2 0.2 0.03 5
execute at @s run kill @e[distance=0..3,type=#amr-shield:amr-magic,tag=!amr.shield.party,tag=!smithed.strict]
