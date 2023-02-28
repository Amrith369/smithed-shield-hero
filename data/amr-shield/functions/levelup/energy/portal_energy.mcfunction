scoreboard players set @s[scores={amr.shield.hud.take.energy=1..,amr.shield.portalprof=0}] amr.shield.hud.take.energy 0
scoreboard players set @s[scores={amr.shield.hud.give.energy=1..,amr.shield.portalprof=100}] amr.shield.hud.give.energy 0
#################################### MOVE POINTS ##################################################
execute at @s[scores={amr.shield.hud.take.energy=1..}] run particle dust 0.463 0.659 0.635 2 ~ ~1 ~ 0.5 0 0.5 0.03 5 normal
execute at @s[scores={amr.shield.hud.give.energy=1..}] run particle dust 0.412 0.961 0.094 2 ~ ~1 ~ 0.5 0 0.5 0.03 5 normal
scoreboard players remove @s[scores={amr.shield.hud.take.energy=1..}] amr.shield.portalprof 1
scoreboard players add @s[scores={amr.shield.hud.take.energy=1..}] amr.shield.energy.points 20
scoreboard players add @s[scores={amr.shield.hud.give.energy=1..}] amr.shield.portalprof 1
scoreboard players remove @s[scores={amr.shield.hud.give.energy=1..}] amr.shield.energy.points 20
#################################### DECREASE SCORES ##############################################
scoreboard players remove @s[scores={amr.shield.hud.give.energy=1..}] amr.shield.hud.give.energy 1
scoreboard players remove @s[scores={amr.shield.hud.take.energy=1..}] amr.shield.hud.take.energy 1
