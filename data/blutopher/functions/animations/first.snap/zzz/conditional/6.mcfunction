#Project generated by Animated Java (https://animated-java.dev/)

tag @s add aj.blutopher.anim.first.snap
execute if score .aj.blutopher.framerate aj.i matches ..-1 run scoreboard players set @s aj.frame 13
execute if score .aj.blutopher.framerate aj.i matches 1.. run scoreboard players set @s aj.frame 0
scoreboard players add .noScripts aj.i 0
execute if score .aj.anim_loop aj.blutopher.animating matches 0 run function blutopher:animation_loop
scoreboard players set #execute aj.i 1