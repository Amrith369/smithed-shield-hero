execute at @s[x_rotation=-59..45] run summon minecraft:marker ^ ^0.2 ^5 {Tags:["amr.shield.prison","smithed.entity"]}
execute at @s[x_rotation=-59..45] run particle minecraft:explosion_emitter ^ ^1 ^5 0 0 0 0.03 1
execute at @s[x_rotation=-90..-60] run summon minecraft:marker ^ ^ ^ {Tags:["amr.shield.prison","smithed.entity"]}
execute at @s[x_rotation=-59..45] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0.03 1
scoreboard players set @s amr.shield.pipe.sp.cooldown 600
scoreboard players remove @s amr.shield.sp 20
