tellraw @s[scores={amr.shield.g=..4999}] {"text":"<Smelt> Not Enough G To Guarantee Smelt","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient G","italic":true,"color":"dark_purple"}]}}
scoreboard players set @s[scores={amr.shield.g=..4999}] amr.shield.g.smelt 0
scoreboard players set @a[predicate=amr-shield:shields/rope,scores={amr.shield.rope.smelt=999..}] amr.shield.g.smelt 0
scoreboard players set @a[predicate=amr-shield:shields/leaf,scores={amr.shield.leaf.smelt=999..}] amr.shield.g.smelt 0
scoreboard players set @a[predicate=amr-shield:shields/small,scores={amr.shield.small.smelt=999..}] amr.shield.g.smelt 0
scoreboard players set @a[predicate=amr-shield:shields/pick,scores={amr.shield.pick.smelt=999..}] amr.shield.g.smelt 0
scoreboard players set @a[predicate=amr-shield:shields/ltm,scores={amr.shield.ltm.smelt=999..}] amr.shield.g.smelt 0
scoreboard players set @a[predicate=amr-shield:shields/viper,scores={amr.shield.viper.smelt=999..}] amr.shield.g.smelt 0
scoreboard players set @a[predicate=amr-shield:shields/wooden,scores={amr.shield.wooden.smelt=999..}] amr.shield.g.smelt 0
scoreboard players set @a[predicate=amr-shield:shields/dog,scores={amr.shield.dog.smelt=999..}] amr.shield.g.smelt 0
scoreboard players set @a[predicate=amr-shield:shields/pipe,scores={amr.shield.pipe.smelt=999..}] amr.shield.g.smelt 0
scoreboard players set @a[predicate=amr-shield:shields/portal,scores={amr.shield.portal.smelt=999..}] amr.shield.g.smelt 0
tellraw @s[scores={amr.shield.g=5000..}] {"text":"<Smelt> Smelt Rate: 100%","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"-5000G","italic":true,"color":"dark_purple"}]}}
scoreboard players set @s[scores={amr.shield.g=5000..}] amr.shield.smelt 1
scoreboard players remove @s[scores={amr.shield.g=5000..}] amr.shield.g 5000
