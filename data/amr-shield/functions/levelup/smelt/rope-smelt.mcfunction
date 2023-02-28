scoreboard players add @s amr.shield.rope.smelt 0
execute as @a[scores={amr.shield.rope.smelt=999..,amr.shield.smelt=1..}] run tellraw @s {"text":"<Smelt> Maximum Item Smelt Achieved.","bold":true,"color":"#37D7D7","hoverEvent":{"action":"show_text","contents":[{"text":"Chance Too Low For Success","italic":true,"color":"dark_purple"}]}}
execute as @s[scores={amr.shield.g.smelt=1..}] run scoreboard players set amr.shield.smeltnumber amr.shield.smeltsuccess 1
############################# SMELT PROCESS ####################################
execute as @s if score amr.shield.smeltnumber amr.shield.smeltsuccess matches 1 run tellraw @s {"text":"<Smelt> Successfully Smelted Item!","bold":true,"color":"#26FF43","hoverEvent":{"action":"show_text","contents":[{"text":"+1 smelt level","italic":true,"color":"dark_purple"}]}}
execute as @s if score amr.shield.smeltnumber amr.shield.smeltsuccess matches 1 run scoreboard players add @s amr.shield.rope.smelt 1
execute as @s if score amr.shield.smeltnumber amr.shield.smeltsuccess matches 0 run scoreboard players add @s amr.change.shield.rope 1
execute as @s if score amr.shield.smeltnumber amr.shield.smeltsuccess matches 0 run tellraw @s {"text":"<Smelt> Item Smelt Failed!","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"+0 enchantment level","italic":true,"color":"dark_purple"}]}}
execute as @s if score amr.shield.smeltnumber amr.shield.smeltsuccess matches 0 run scoreboard players set @s amr.shield.rope.smelt 0
#================================================================================================================
clear @s minecraft:iron_ingot 1
#================================================================================================================
#RESETSCORE
scoreboard players set @s amr.shield.smelt 0
scoreboard players set @s[scores={amr.shield.g.smelt=1..}] amr.shield.g.smelt 0
