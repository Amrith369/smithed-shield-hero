#execute as @s run teleport ~ ~64 ~3000
#execute at @s run tp Amrith_Erilaz ~ ~ ~
tellraw @s {"text":"[NOTICE] Warping...","color":"#70FF8A"}
tellraw @s[scores={amr.shield.sp=..39}] {"text":"[NOTICE] Not Enough SP To Warp","color":"#70FF8A"}
#TELEPORT TO POINT A
execute at @s[scores={amr.skill.shield.warp.a=1..,amr.shield.sp=40..}] run summon marker ~ ~ ~ {Tags:["amr.shield.warp","amr.shield.warp.a","smithed.entity","smithed.strict"]}
#TELEPORT TO POINT B
execute at @s[scores={amr.skill.shield.warp.b=1..,amr.shield.sp=40..}] run summon marker ~ ~ ~ {Tags:["amr.shield.warp","amr.shield.warp.b","smithed.entity","smithed.strict"]}
#TELEPORT TO POINT C
execute at @s[scores={amr.skill.shield.warp.c=1..,amr.shield.sp=40..}] run summon marker ~ ~ ~ {Tags:["amr.shield.warp","amr.shield.warp.c","smithed.entity","smithed.strict"]}
#TELEPORT TO POINT D
execute at @s[scores={amr.skill.shield.warp.d=1..,amr.shield.sp=40..}] run summon marker ~ ~ ~ {Tags:["amr.shield.warp","amr.shield.warp.d","smithed.entity","smithed.strict"]}
#TELEPORT TO POINT E
execute at @s[scores={amr.skill.shield.warp.e=1..,amr.shield.sp=40..}] run summon marker ~ ~ ~ {Tags:["amr.shield.warp","amr.shield.warp.e","smithed.entity","smithed.strict"]}
#TELEPORT TO POINT F
execute at @s[scores={amr.skill.shield.warp.f=1..,amr.shield.sp=40..}] run summon marker ~ ~ ~ {Tags:["amr.shield.warp","amr.shield.warp.f","smithed.entity","smithed.strict"]}
#EFFECTS
execute as @e[tag=amr.shield.warp] run function amr-shield:skills/portal/jump
execute at @s[scores={amr.shield.sp=40..}] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
scoreboard players remove @s[scores={amr.shield.sp=40..}] amr.shield.sp 40
scoreboard players set @s[scores={amr.shield.sp=..39}] amr.skill.shield.warp.a 0
scoreboard players set @s[scores={amr.shield.sp=..39}] amr.skill.shield.warp.b 0
scoreboard players set @s[scores={amr.shield.sp=..39}] amr.skill.shield.warp.c 0
scoreboard players set @s[scores={amr.shield.sp=..39}] amr.skill.shield.warp.d 0
scoreboard players set @s[scores={amr.shield.sp=..39}] amr.skill.shield.warp.e 0
scoreboard players set @s[scores={amr.shield.sp=..39}] amr.skill.shield.warp.f 0
