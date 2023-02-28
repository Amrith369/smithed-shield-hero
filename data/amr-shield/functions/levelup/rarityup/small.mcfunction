scoreboard players add @s amr.shield.small.rarity 0
execute as @a[scores={amr.shield.small.rarity=4..,amr.shield.rarity.up=1..}] run tellraw @s {"text":"<Rarity Up> Maximum Item Rarity Achieved.","bold":true,"color":"#37D7D7","hoverEvent":{"action":"show_text","contents":[{"text":"Chance Too Low For Success","italic":true,"color":"dark_purple"}]}}
execute as @s[scores={amr.shield.hud.g.increase.rarity=1..}] run scoreboard players set amr.shield.rarenumber amr.shield.raritysuccess 1
############################# SMELT PROCESS ####################################
execute as @s if score amr.shield.rarenumber amr.shield.raritysuccess matches 1 run tellraw @s {"text":"<Rarity Up> Successfully Increased Item Rarity!","bold":true,"color":"#26FF43","hoverEvent":{"action":"show_text","contents":[{"text":"Rarity Has Increased","italic":true,"color":"dark_purple"}]}}
execute as @s if score amr.shield.rarenumber amr.shield.raritysuccess matches 1 run scoreboard players add @s amr.shield.small.rarity 1
execute as @s if score amr.shield.rarenumber amr.shield.raritysuccess matches 0 run scoreboard players add @s amr.change.shield.small 1
execute as @s if score amr.shield.rarenumber amr.shield.raritysuccess matches 0 run tellraw @s {"text":"<Rarity Up> Item Rarity Reset!","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Rarity Level Has Been Reset","italic":true,"color":"dark_purple"}]}}
execute as @s if score amr.shield.rarenumber amr.shield.raritysuccess matches 0 run scoreboard players set @s amr.shield.small.rarity 0
#================================================================================================================
scoreboard players remove @s amr.shield.energy.points 4000
#================================================================================================================
#RESETSCORE
scoreboard players set @s amr.shield.hud.increase.rarity 0
scoreboard players set @s[scores={amr.shield.hud.g.increase.rarity=1..}] amr.shield.hud.g.increase.rarity 0
