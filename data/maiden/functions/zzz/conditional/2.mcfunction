#Project generated by Animated Java (https://animated-java.dev/)

tag @s remove aj.maiden.anim.iron.maiden.animation
scoreboard players set @s aj.frame4 0
scoreboard players operation .this aj.id4 = @s aj.id4
execute as @e[type=minecraft:area_effect_cloud,tag=aj.maiden.bone,distance=..9.691] if score @s aj.id4 = .this aj.id4 run function maiden:zzz/execute/5
execute as @e[type=minecraft:armor_stand,tag=aj.maiden.bone,distance=..9.691] if score @s aj.id4 = .this aj.id4 run function maiden:zzz/execute/6
scoreboard players set #execute aj.i4 1