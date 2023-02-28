execute store result score @s amr.shield.starx1 run data get entity @a[tag=amr.shield.as.1,distance=0..3,limit=1] Pos[0] 1000
execute store result score @s amr.shield.stary1 run data get entity @a[tag=amr.shield.as.1,distance=0..3,limit=1] Pos[1] 1000
execute store result score @s amr.shield.starz1 run data get entity @a[tag=amr.shield.as.1,distance=0..3,limit=1] Pos[2] 1000
execute store result score @s amr.shield.starx2 run data get entity @s Pos[0] 1000
execute store result score @s amr.shield.stary2 run data get entity @s Pos[1] 1000
execute store result score @s amr.shield.starz2 run data get entity @s Pos[2] 1000
execute store result entity @s Motion[0] double 1.2 run scoreboard players operation @s amr.shield.starx2 -= @s amr.shield.starx1
execute store result entity @s Motion[1] double 1.2 run scoreboard players operation @s amr.shield.stary2 -= @s amr.shield.stary1
execute store result entity @s Motion[2] double 1.2 run scoreboard players operation @s amr.shield.starz2 -= @s amr.shield.starz1
scoreboard players reset @s
execute at @s[type=player] if block ^ ^1 ^-1 air run tp @s[type=player] ^ ^ ^-1
execute at @s[type=phantom] if block ^ ^1 ^-1 air run tp @s[type=phantom] ^ ^ ^-1
