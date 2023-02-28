execute at @s run teleport @s ~ ~ ~ ~10 ~
execute at @s run function amr-shield:particles/prison
scoreboard players add @s amr.shield.counter 1
kill @s[scores={amr.shield.counter=600..}]
execute at @s run execute as @e[distance=2..3.2,tag=!amr.shield.party,tag=!smithed.strict,type=!#amr-shield:amr-exclude] run function amr-shield:skills/rope/pushback
execute at @s run execute as @e[distance=0..1.9,tag=!amr.shield.party,tag=!smithed.strict,type=!#amr-shield:amr-exclude] run tp ~ ~ ~
