execute at @s if predicate amr-shield:herbrate run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Carrot","color":"#dd7327","bold":true}',Item:{id:"minecraft:carrot",Count:1b}}
execute at @s[scores={amr.shield.leafprof=100}] if predicate amr-shield:herbrate-leaf run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Carrot","color":"#dd7327","bold":true}',Item:{id:"minecraft:carrot",Count:1b}}
execute at @s[scores={amr.shield.leaf.smelt=1..}] if predicate amr-shield:herbrate-leaf run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Carrot","color":"#dd7327","bold":true}',Item:{id:"minecraft:carrot",Count:1b}}
execute at @s[scores={amr.shield.leaf.awakened=1}] if predicate amr-shield:herbrate-leaf run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Carrot","color":"#dd7327","bold":true}',Item:{id:"minecraft:carrot",Count:1b}}
scoreboard players set @s amr.shield.carrotbreak 0
