#TELEPORT TO POINT A
execute as @s[tag=amr.shield.warp.a] run execute store result entity @s Pos[0] double 1 run scoreboard players get x amr.shield.a.coords
execute as @s[tag=amr.shield.warp.a] run execute store result entity @s Pos[1] double 1 run scoreboard players get y amr.shield.a.coords
execute as @s[tag=amr.shield.warp.a] run execute store result entity @s Pos[2] double 1 run scoreboard players get z amr.shield.a.coords
execute at @s[tag=amr.shield.warp.a] run teleport @a[tag=amr.shield.party] ~ ~1 ~
execute at @s[tag=amr.shield.warp.a] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT B
execute as @s[tag=amr.shield.warp.b] run execute store result entity @s Pos[0] double 1 run scoreboard players get x amr.shield.b.coords
execute as @s[tag=amr.shield.warp.b] run execute store result entity @s Pos[1] double 1 run scoreboard players get y amr.shield.b.coords
execute as @s[tag=amr.shield.warp.b] run execute store result entity @s Pos[2] double 1 run scoreboard players get z amr.shield.b.coords
execute at @s[tag=amr.shield.warp.b] run teleport @a[tag=amr.shield.party] ~ ~1 ~
execute at @s[tag=amr.shield.warp.b] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT C
execute as @s[tag=amr.shield.warp.c] run execute store result entity @s Pos[0] double 1 run scoreboard players get x amr.shield.c.coords
execute as @s[tag=amr.shield.warp.c] run execute store result entity @s Pos[1] double 1 run scoreboard players get y amr.shield.c.coords
execute as @s[tag=amr.shield.warp.c] run execute store result entity @s Pos[2] double 1 run scoreboard players get z amr.shield.c.coords
execute at @s[tag=amr.shield.warp.c] run teleport @a[tag=amr.shield.party] ~ ~1 ~
execute at @s[tag=amr.shield.warp.c] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT D
execute as @s[tag=amr.shield.warp.d] run execute store result entity @s Pos[0] double 1 run scoreboard players get x amr.shield.d.coords
execute as @s[tag=amr.shield.warp.d] run execute store result entity @s Pos[1] double 1 run scoreboard players get y amr.shield.d.coords
execute as @s[tag=amr.shield.warp.d] run execute store result entity @s Pos[2] double 1 run scoreboard players get z amr.shield.d.coords
execute at @s[tag=amr.shield.warp.d] run teleport @a[tag=amr.shield.party] ~ ~1 ~
execute at @s[tag=amr.shield.warp.d] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT E
execute as @s[tag=amr.shield.warp.e] run execute store result entity @s Pos[0] double 1 run scoreboard players get x amr.shield.e.coords
execute as @s[tag=amr.shield.warp.e] run execute store result entity @s Pos[1] double 1 run scoreboard players get y amr.shield.e.coords
execute as @s[tag=amr.shield.warp.e] run execute store result entity @s Pos[2] double 1 run scoreboard players get z amr.shield.e.coords
execute at @s[tag=amr.shield.warp.e] run teleport @a[tag=amr.shield.party] ~ ~1 ~
execute at @s[tag=amr.shield.warp.e] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT F
execute as @s[tag=amr.shield.warp.f] run execute store result entity @s Pos[0] double 1 run scoreboard players get x amr.shield.f.coords
execute as @s[tag=amr.shield.warp.f] run execute store result entity @s Pos[1] double 1 run scoreboard players get y amr.shield.f.coords
execute as @s[tag=amr.shield.warp.f] run execute store result entity @s Pos[2] double 1 run scoreboard players get z amr.shield.f.coords
execute at @s[tag=amr.shield.warp.f] run teleport @a[tag=amr.shield.party] ~ ~1 ~
execute at @s[tag=amr.shield.warp.f] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
tellraw @a {"text":"[NOTICE] Warp Successful","color":"#70FF8A"}
scoreboard players set @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.a=1..}] amr.skill.shield.warp.a 0
scoreboard players set @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.b=1..}] amr.skill.shield.warp.b 0
scoreboard players set @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.c=1..}] amr.skill.shield.warp.c 0
scoreboard players set @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.d=1..}] amr.skill.shield.warp.d 0
scoreboard players set @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.e=1..}] amr.skill.shield.warp.e 0
scoreboard players set @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.f=1..}] amr.skill.shield.warp.f 0
kill @s
