#Project generated by Animated Java (https://animated-java.dev/)

tag @s remove aj.blutopher.anim.first.snap
scoreboard players set @s aj.frame 0
scoreboard players operation .this aj.id = @s aj.id
execute as @e[type=minecraft:area_effect_cloud,tag=aj.blutopher.bone,distance=..7.887] if score @s aj.id = .this aj.id run function blutopher:zzz/execute/5
execute as @e[type=minecraft:armor_stand,tag=aj.blutopher.bone,distance=..7.887] if score @s aj.id = .this aj.id run function blutopher:zzz/execute/6
scoreboard players set #execute aj.i 1