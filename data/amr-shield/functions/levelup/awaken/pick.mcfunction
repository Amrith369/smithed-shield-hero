scoreboard players set @s amr.shield.pick.awakened 1
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 100 normal
tellraw @s {"text":"<System> Weapon Has Been Awakened!","bold":true,"color":"#77ff1b","hoverEvent":{"action":"show_text","contents":[{"text":"Item Awakened","italic":true,"color":"dark_purple"}]}}
