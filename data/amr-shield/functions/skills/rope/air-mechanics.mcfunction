execute at @s run function amr-shield:particles/airstrike
execute at @s[scores={amr.shield.counter=1..2}] facing entity @a[tag=amr.shield] eyes run tp ~ ~ ~
scoreboard players add @s amr.shield.counter 1
kill @s[scores={amr.shield.counter=300..}]
execute at @s run execute as @e[distance=0..2,tag=!amr.shield.party,tag=!smithed.strict,type=!#amr-shield:amr-exclude] run function amr-shield:skills/rope/pushback
