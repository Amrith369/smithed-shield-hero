#SET WARP A
tellraw @a[predicate=amr-shield:shields/portal,tag=amr.shield,scores={amr.skill.shield.set.warp.a=1..}] {"text":"[NOTICE] Warp Point A Set","color":"#9DE1A9"}
execute at @a[tag=amr.shield,scores={amr.skill.shield.set.warp.a=1..}] run execute store result score z amr.shield.a.coords run data get entity @p[tag=amr.shield] Pos[2]
execute at @a[tag=amr.shield,scores={amr.skill.shield.set.warp.a=1..}] run execute store result score y amr.shield.a.coords run data get entity @p[tag=amr.shield] Pos[1]
execute at @a[tag=amr.shield,scores={amr.skill.shield.set.warp.a=1..}] run execute store result score x amr.shield.a.coords run data get entity @p[tag=amr.shield] Pos[0]
#execute at @a[tag=amr.shield,scores={amr.skill.shield.set.warp.a=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["point_a"]}
#SET WARP B
tellraw @a[predicate=amr-shield:shields/portal,tag=amr.shield,scores={amr.skill.shield.set.warp.b=1..}] {"text":"[NOTICE] Warp Point B Set","color":"#9DE1A9"}
execute at @a[tag=amr.shield,scores={amr.skill.shield.set.warp.b=1..}] run execute store result score z amr.shield.b.coords run data get entity @p[tag=amr.shield] Pos[2]
execute at @a[tag=amr.shield,scores={amr.skill.shield.set.warp.b=1..}] run execute store result score y amr.shield.b.coords run data get entity @p[tag=amr.shield] Pos[1]
execute at @a[tag=amr.shield,scores={amr.skill.shield.set.warp.b=1..}] run execute store result score x amr.shield.b.coords run data get entity @p[tag=amr.shield] Pos[0]
#SET WARP C
tellraw @a[predicate=amr-shield:shields/portal,tag=amr.shield,scores={amr.skill.shield.set.warp.c=1..}] {"text":"[NOTICE] Warp Point C Set","color":"#9DE1A9"}
execute at @a[tag=amr.shield,scores={amr.skill.shield.set.warp.c=1..}] run execute store result score z amr.shield.c.coords run data get entity @p[tag=amr.shield] Pos[2]
execute at @a[tag=amr.shield,scores={amr.skill.shield.set.warp.c=1..}] run execute store result score y amr.shield.c.coords run data get entity @p[tag=amr.shield] Pos[1]
execute at @a[tag=amr.shield,scores={amr.skill.shield.set.warp.c=1..}] run execute store result score x amr.shield.c.coords run data get entity @p[tag=amr.shield] Pos[0]
scoreboard players set @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.set.warp.a=1..}] amr.skill.shield.set.warp.a 0
scoreboard players set @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.set.warp.b=1..}] amr.skill.shield.set.warp.b 0
scoreboard players set @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.set.warp.c=1..}] amr.skill.shield.set.warp.c 0
