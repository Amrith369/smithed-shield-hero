clear @s blaze_powder 1
execute as @a[tag=amr.shield,scores={amr.shield.craft.sp.potion=1..}] run give @s minecraft:potion{display:{Name:'{"text":"Soul Soothing Potion","color":"#FFCF33","italic":true}',Lore:['{"text":"quality: good"}','{"text":"restores 50 sp"}']},CustomModelData:369041,smithed:{dict:{item:{shield_hero:1b}}},CustomPotionEffects:[{Id:22b,Amplifier:4b,Duration:1b,ShowParticles:0b}],Potion:"minecraft:mundane",CustomPotionColor:2555831} 1
scoreboard players remove @a[tag=amr.shield,scores={amr.shield.craft.sp.potion=1..}] amr.shield.craft.sp.potion 1
tellraw @s {"text":"[NOTICE] Potion Successfully Crafted!","italic":true,"color":"#32CD1D"}
