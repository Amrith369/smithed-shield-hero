clear @s fern{smithed:{dict:{item:{shield_hero:1b}}}} 1
execute as @a[tag=amr.shield,scores={amr.shield.craft.hp.potion=1..}] run give @s minecraft:potion{display:{Name:'{"text":"Health Soothing Potion","color":"#FFCF33","italic":true}',Lore:['{"text":"quality: good"}','{"text":"restores hp"}']},CustomModelData:369042,smithed:{dict:{item:{shield_hero:1b}}},CustomPotionEffects:[{Id:6,Amplifier:2b,Duration:1b,ShowParticles:0b},{Id:26,Amplifier:1b,Duration:2b,ShowParticles:0b}],Potion:"minecraft:mundane",CustomPotionColor:16720242} 1
scoreboard players remove @a[tag=amr.shield,scores={amr.shield.craft.hp.potion=1..}] amr.shield.craft.hp.potion 1
tellraw @s {"text":"[NOTICE] Potion Successfully Crafted!","italic":true,"color":"#32CD1D"}
