#Project generated by Animated Java (https://animated-java.dev/)

schedule function blutopher:animation_loop 1t
scoreboard players set .aj.anim_loop aj.blutopher.animating 1
scoreboard players set .aj.animation aj.blutopher.animating 0
execute as @e[type=minecraft:armor_stand,tag=aj.blutopher.root] run function blutopher:zzz/execute/11
execute if score .aj.animation aj.blutopher.animating matches 0 run function blutopher:zzz/execute/12