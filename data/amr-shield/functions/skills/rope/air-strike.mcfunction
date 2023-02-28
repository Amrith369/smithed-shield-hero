execute at @s run summon marker ^ ^1.5 ^2 {Tags:["amr.shield.as.1","smithed.strict","smithed.entity"]}
execute at @s run playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 3 1
execute at @s run particle minecraft:cloud ^ ^1.4 ^2 1 1 1 0.03 40
scoreboard players set @s amr.shield.rope.as.cooldown 300
scoreboard players set @s amr.shield.rope.as 0
scoreboard players remove @s amr.shield.sp 15
