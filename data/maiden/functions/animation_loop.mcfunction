#Project generated by Animated Java (https://animated-java.dev/)

schedule function maiden:animation_loop 1t
scoreboard players set .aj.anim_loop aj.maiden.animating 1
scoreboard players set .aj.animation aj.maiden.animating 0
execute as @e[type=minecraft:armor_stand,tag=aj.maiden.root] run function maiden:zzz/execute/11
execute if score .aj.animation aj.maiden.animating matches 0 run function maiden:zzz/execute/12