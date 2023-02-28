#execute as @s run teleport ~ ~64 ~3000
#execute at @s run tp Amrith_Erilaz ~ ~ ~
#TELEPORT TO POINT A
execute at @s[scores={amr.skill.shield.warp.a=1..}] run summon marker ~ ~ ~ {Tags:["amr.shield.warp","amr.shield.warp.a","smithed.entity","smithed.strict"]}
#TELEPORT TO POINT B
execute at @s[scores={amr.skill.shield.warp.b=1..}] run summon marker ~ ~ ~ {Tags:["amr.shield.warp","amr.shield.warp.b","smithed.entity","smithed.strict"]}
#TELEPORT TO POINT C
execute at @s[scores={amr.skill.shield.warp.c=1..}] run summon marker ~ ~ ~ {Tags:["amr.shield.warp","amr.shield.warp.c","smithed.entity","smithed.strict"]}
#EFFECTS
tellraw @s {"text":"[NOTICE] Warping...","color":"#70FF8A"}
execute as @e[tag=amr.shield.warp] run function amr-shield:skills/portal/jump
execute at @s run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
