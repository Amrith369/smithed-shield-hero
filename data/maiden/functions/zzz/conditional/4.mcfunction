#Project generated by Animated Java (https://animated-java.dev/)

tp @s ~ ~ ~ ~ ~
scoreboard players operation .this aj.id4 = @s aj.id4
scoreboard players operation .this aj.frame4 = @s aj.frame4
scoreboard players set # aj.i4 0
execute if entity @s[tag=aj.maiden.anim.iron.maiden.animation] run function maiden:zzz/execute/7
execute if score # aj.i4 matches 0 run function maiden:zzz/execute/10
scoreboard players set #execute aj.i4 1