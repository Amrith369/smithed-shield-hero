effect give @s haste 1 1 true
execute as @s[scores={amr.shield.ironbreak=1..}] run function amr-shield:skills/pick/iron_ore
execute as @s[scores={amr.shield.ironbreakii=1..}] run function amr-shield:skills/pick/iron_ore
execute as @s[scores={amr.shield.goldbreak=1..}] run function amr-shield:skills/pick/gold_ore
execute as @s[scores={amr.shield.goldbreakii=1..}] run function amr-shield:skills/pick/gold_ore
execute as @s[scores={amr.shield.diamondbreak=1..}] run function amr-shield:skills/pick/diamond_ore
execute as @s[scores={amr.shield.diamondbreakii=1..}] run function amr-shield:skills/pick/diamond_ore
execute as @s[scores={amr.shield.netherbreak=1..}] run function amr-shield:skills/pick/nether
scoreboard players set @a[tag=amr.shield,scores={amr.shield.ironbreak=1..}] amr.shield.ironbreak 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.ironbreakii=1..}] amr.shield.ironbreakii 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.goldbreak=1..}] amr.shield.goldbreak 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.goldbreakii=1..}] amr.shield.goldbreakii 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.diamondbreak=1..}] amr.shield.diamondbreak 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.diamondbreakii=1..}] amr.shield.diamondbreakii 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.netherbreak=1..}] amr.shield.netherbreak 0
