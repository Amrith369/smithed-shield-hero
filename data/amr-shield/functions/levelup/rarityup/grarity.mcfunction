tellraw @s[scores={amr.shield.g=..4999}] {"text":"<Rarity> Not Enough G To Guarantee Rarity Increase","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient G","italic":true,"color":"dark_purple"}]}}
scoreboard players set @s[scores={amr.shield.g=..4999}] amr.shield.hud.g.increase.rarity 0
scoreboard players set @a[predicate=amr-shield:shields/portal,scores={amr.shield.portal.rarity=4}] amr.shield.hud.g.increase.rarity 0
scoreboard players set @a[predicate=amr-shield:shields/pipe,scores={amr.shield.pipe.rarity=4}] amr.shield.hud.g.increase.rarity 0
scoreboard players set @a[predicate=amr-shield:shields/dog,scores={amr.shield.dog.rarity=4}] amr.shield.hud.g.increase.rarity 0
scoreboard players set @a[predicate=amr-shield:shields/wooden,scores={amr.shield.wooden.rarity=4}] amr.shield.hud.g.increase.rarity 0
scoreboard players set @a[predicate=amr-shield:shields/viper,scores={amr.shield.viper.rarity=4}] amr.shield.hud.g.increase.rarity 0
scoreboard players set @a[predicate=amr-shield:shields/ltm,scores={amr.shield.ltm.rarity=4}] amr.shield.hud.g.increase.rarity 0
scoreboard players set @a[predicate=amr-shield:shields/pick,scores={amr.shield.pick.rarity=4}] amr.shield.hud.g.increase.rarity 0
scoreboard players set @a[predicate=amr-shield:shields/rope,scores={amr.shield.rope.rarity=4}] amr.shield.hud.g.increase.rarity 0
scoreboard players set @a[predicate=amr-shield:shields/leaf,scores={amr.shield.leaf.rarity=4}] amr.shield.hud.g.increase.rarity 0
scoreboard players set @a[predicate=amr-shield:shields/small,scores={amr.shield.small.rarity=4}] amr.shield.hud.g.increase.rarity 0
tellraw @s[scores={amr.shield.g=5000..}] {"text":"<Rarity> Rarity Increase Rate: 100%","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"-5000G","italic":true,"color":"dark_purple"}]}}
scoreboard players set @s[scores={amr.shield.g=5000..}] amr.shield.hud.increase.rarity 1
scoreboard players remove @s[scores={amr.shield.g=5000..}] amr.shield.g 5000
