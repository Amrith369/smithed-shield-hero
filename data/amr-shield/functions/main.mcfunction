############################################################
################# SP RECHARGE ##############################
############################################################
scoreboard players add @a[tag=amr.shield] amr.shield.sp 0
scoreboard players set @a[tag=amr.shield,level=0..10] amr.shield.sp.max 200
scoreboard players set @a[tag=amr.shield,level=11..20] amr.shield.sp.max 300
scoreboard players set @a[tag=amr.shield,level=21..30] amr.shield.sp.max 400
scoreboard players set @a[tag=amr.shield,level=31..40] amr.shield.sp.max 500
scoreboard players set @a[tag=amr.shield,level=41..50] amr.shield.sp.max 600
scoreboard players set @a[tag=amr.shield,level=51..] amr.shield.sp.max 1000
execute as @a[tag=amr.shield] if score @s amr.shield.sp < @s amr.shield.sp.max run scoreboard players add @a[tag=amr.shield,scores={amr.shield.counter=600}] amr.shield.sp 5
scoreboard players add @a[tag=amr.shield] amr.shield.counter 1
scoreboard players set @a[tag=amr.shield,scores={amr.shield.counter=601}] amr.shield.counter 0
############################################################
################# CRAFTING #################################
############################################################
execute as @a[tag=amr.shield,scores={amr.shield.craft.sp.potion=1..},predicate=amr-shield:blaze_powder] run function amr-shield:crafting/soulsoothing
execute as @a[tag=amr.shield,predicate=amr-shield:ssp] if score @s amr.shield.sp < @s amr.shield.sp.max run scoreboard players add @s amr.shield.sp 50
clear @a[tag=amr.shield,predicate=amr-shield:ssp] glass_bottle 1
execute as @a[tag=amr.shield,scores={amr.shield.craft.hp.potion=1..},predicate=amr-shield:herb] run function amr-shield:crafting/healthsoothing
clear @a[tag=amr.shield,predicate=amr-shield:shp] glass_bottle 1
############################################################
execute as @a[tag=amr.shield,scores={amr.shield.craft.hp.potion=1..},predicate=amr-shield:herb] run function amr-shield:crafting/healthsoothing
clear @a[tag=amr.shield,predicate=amr-shield:hsp] glass_bottle 1
############################################################
################# GUI ######################################
############################################################
execute as @a[tag=amr.shield,x_rotation=45..90,scores={amr.shield.hud.show=1}] run data modify storage smithed.actionbar:input message set value {json: '[{"text":"SP: ","bold":"true"},{"score":{"name":"@s","objective":"amr.shield.sp"},"bold":"true","color":"#a2ff28"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"amr.shield.sp.max"},"color":"#a2ff28"},{"text":" || G: ","color":"white","bold":"true"},{"score":{"name":"@s","objective":"amr.shield.g"},"color":"gold"}]',priority: 'persistent'}
execute as @a[tag=amr.shield,x_rotation=45..90,scores={amr.shield.hud.show=1}] run function #smithed.actionbar:message
execute as @a[tag=amr.shield,scores={amr.shield.hud.status=1..}] run function amr-shield:levelup/status
execute as @a[tag=amr.shield,scores={amr.shield.hud=1..}] run function amr-shield:hud
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s {"text":"HUD","bold":true,"color":"#2beada","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud add 1"}}
############################################################
################# START ####################################
############################################################
execute as @a[tag=amr.shield] run give @s[tag=!amr.starto,tag=!amr.hero] minecraft:shield{display:{Name:'{"text":"Legendary Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Unlocked-","italic":true}','{"text":"Equip Bonus: defense 3"}']},HideFlags:1,smithed:{id:small_shield,dict:{item:{weapon:1b,shield_hero:1b}}},Unbreakable:1b,CustomModelData:369001,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:790722,UUIDMost:572480,Slot:"mainhand"}]} 1
execute as @a[tag=amr.shield] run tellraw @s[tag=!amr.starto,tag=!amr.hero] ["",{"text":"You have become the "},{"text":"Shield Hero","color":"green"}]
attribute @a[limit=1,tag=amr.shield,tag=!amr.starto] minecraft:generic.attack_damage base set -10
attribute @a[limit=1,tag=amr.shield,tag=!amr.starto] minecraft:generic.max_health base set 40
tag @a[tag=amr.shield,tag=!amr.starto] add amr.starto
tag @a[tag=amr.shield] add amr.hero
tag @a[tag=amr.shield] add amr.shield.party
scoreboard players add @a[tag=amr.shield] amr.shield.stat.counter 1
tag @a[tag=amr.shield,scores={amr.shield.stat.counter=6000..}] remove amr.starto
scoreboard players set @a[tag=amr.shield,scores={amr.shield.stat.counter=6001..}] amr.shield.stat.counter 0
############################################################
################# LEVEL LINK TIMER #########################
############################################################
execute as @a[tag=amr.shield,scores={amr.shield.counter=500}] run execute store result score @s amr.shield.level.link run data get entity @s XpLevel
execute at @a[tag=amr.shield,scores={amr.shield.counter=500}] run kill @e[type=item,distance=7..,nbt={Item:{id:"minecraft:shield",Count:1b,tag:{ctc:{traits:{"shield_hero":1b}}}}}]
############################################################
################# UNLOCK SHIELDS ###########################
############################################################
tellraw @a[tag=amr.shield,scores={amr.shield.absorb=1..},advancements={amr-shield:shields/leaf=false},nbt={Inventory:[{id:"minecraft:grass"}]}] {"text":"Leaf Shield: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=amr.shield,scores={amr.shield.absorb=1..},nbt={Inventory:[{id:"minecraft:grass"}]}] only amr-shield:shields/leaf
#-Pickaxe Shield
tellraw @a[tag=amr.shield,scores={amr.shield.absorb=1..},advancements={amr-shield:shields/pick=false},nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] {"text":"Pickax Shield: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=amr.shield,scores={amr.shield.absorb=1..},nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] only amr-shield:shields/pick
#-Rope Shield
tellraw @a[tag=amr.shield,scores={amr.shield.absorb=1..},advancements={amr-shield:shields/rope=false},nbt={Inventory:[{id:"minecraft:string"}]}] {"text":"Rope Shield: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=amr.shield,scores={amr.shield.absorb=1..},nbt={Inventory:[{id:"minecraft:string"}]}] only amr-shield:shields/rope
#-Pipe Shield
tellraw @a[tag=amr.shield,scores={amr.shield.absorb=1..},advancements={amr-shield:shields/pipe=false},nbt={Inventory:[{id:"minecraft:iron_bars"}]}] {"text":"Pipe Shield: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=amr.shield,scores={amr.shield.absorb=1..},nbt={Inventory:[{id:"minecraft:iron_bars"}]}] only amr-shield:shields/pipe
#-LTM Shield
tellraw @a[tag=amr.shield,scores={amr.shield.absorb=1..},advancements={amr-shield:shields/ltm=false},nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{CustomModelData:369001}}]}] {"text":"Light Metal Shield: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=amr.shield,scores={amr.shield.absorb=1..},nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{CustomModelData:369001}}]}] only amr-shield:shields/ltm
#-Black Dog Shield
tellraw @a[tag=amr.shield,scores={amr.shield.absorb=1..},advancements={amr-shield:shields/dog=false},nbt={Inventory:[{id:"minecraft:black_dye"}]}] {"text":"Two Headed Dog Shield: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=amr.shield,scores={amr.shield.absorb=1..},nbt={Inventory:[{id:"minecraft:black_dye"}]}] only amr-shield:shields/dog
#-Chimera Viper Shield
tellraw @a[tag=amr.shield,scores={amr.shield.absorb=1..},advancements={amr-shield:shields/viper=false},nbt={Inventory:[{id:"minecraft:spider_eye"}]}] {"text":"Chimera Viper Shield: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=amr.shield,scores={amr.shield.absorb=1..},nbt={Inventory:[{id:"minecraft:spider_eye"}]}] only amr-shield:shields/viper
#-Wrath Shield
tellraw @a[tag=amr.shield,advancements={amr-shield:shields/wrath=false},scores={shield_wrath=1..}] {"text":"Cursed Series: conditions met","italic":true,"color":"dark_red"}
tag @a[advancements={amr-shield:shields/wrath=true}] add amr.shield.wrath
advancement grant @a[tag=amr.shield,scores={shield_wrath=1..}] only amr-shield:shields/wrath
#-Soul Eater Shield
tellraw @a[tag=amr.shield,scores={amr.shield.absorb=1..},advancements={amr-shield:shields/soul=false},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] {"text":"Soul Eater Shield: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=amr.shield,scores={amr.shield.absorb=1..},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] only amr-shield:shields/soul
#-Siderite Shield
#tellraw @a[tag=amr.shield,scores={amr.shield.absorb=1..},advancements={amr-shield:shields/star=false},nbt={Inventory:[{id:"minecraft:conduit"}]}] {"text":"Siderite Shield: conditions met","italic":true,"color":"gold"}
#advancement grant @a[tag=amr.shield,scores={amr.shield.absorb=1..},nbt={Inventory:[{id:"minecraft:conduit"}]}] only amr-shield:shields/star
#-Portal Shield
tellraw @a[tag=amr.shield,scores={amr.shield.absorb=1..},advancements={amr-shield:shields/portal=false},nbt={Inventory:[{id:"minecraft:redstone"}]}] {"text":"Dragon Hourglass Sand Shield: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=amr.shield,scores={amr.shield.absorb=1..},nbt={Inventory:[{id:"minecraft:redstone"}]}] only amr-shield:shields/portal
#-Whale Shield
tellraw @a[tag=amr.shield,advancements={amr-shield:shields/whale=false},predicate=amr-shield:unlocks/whale] {"text":"Whale Magic Core Shield: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=amr.shield,predicate=amr-shield:unlocks/whale] only amr-shield:shields/whale
############################################################
################# WEAPON COPY ##############################
############################################################
execute as @a[tag=amr.shield,scores={amr.shield.weapon.copy=1..}] run function amr-shield:wc/identify
############################################################
################# CHANGE SHIELD ############################
############################################################
execute at @a[tag=amr.shield,scores={amr.shield.select=1..}] run tp @e[distance=0..5,type=item,nbt={Item:{id:"minecraft:shield",Count:1b}}] ~ ~ ~
execute at @a[tag=amr.shield,scores={amr.shield.select=1..}] run data merge entity @e[type=item,limit=1,distance=0..6,nbt={Item:{id:"minecraft:shield",Count:1b}}] {PickupDelay:1,Item:{id:"minecraft:shield",Count:1b}}
execute as @e[limit=1,type=item,nbt={Item:{id:"minecraft:shield"}}] run tellraw @a[tag=amr.shield,scores={amr.shield.select=1..}] ["",{"text":"===========","bold":true,"color":"white"},{"text":"\n"},{"text":"Change Shield:","italic":true},{"text":"\n"},{"text":"===========","bold":true,"color":"white"},{"text":"\n"},{"text":"Small Shield","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.small add 1"}}]
execute at @a[tag=amr.shield,scores={amr.change.shield.small=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..}] run function amr-shield:weapons/small
############################################################
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s[advancements={amr-shield:shields/leaf=true}] {"text":"Leaf Shield","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.leaf add 1"}}
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
title @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] title {"text":"\uE361"}
execute at @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] run function amr-shield:weapons/leaf
############################################################
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s[advancements={amr-shield:shields/rope=true}] {"text":"Rope Shield","bold":true,"color":"#aacc82","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.rope add 1"}}
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
title @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] title {"text":"\uE370"}
execute at @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] run function amr-shield:weapons/rope
############################################################
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s[advancements={amr-shield:shields/pick=true}] {"text":"Pickax Shield","bold":true,"color":"#acbf92","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.pick add 1"}}
execute as @a[tag=amr.shield,scores={amr.change.shield.pick=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
title @a[tag=amr.shield,scores={amr.change.shield.pick=1..}] title {"text":"\uE368"}
execute at @a[tag=amr.shield,scores={amr.change.shield.pick=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.pick=1..}] run function amr-shield:weapons/pick
############################################################
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s[advancements={amr-shield:shields/ltm=true}] {"text":"Light Metal Shield","bold":true,"color":"#50e4bd","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.ltm add 1"}}
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
title @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] title {"text":"\uE367"}
execute at @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] run function amr-shield:weapons/ltm
############################################################
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s[advancements={amr-shield:shields/viper=true}] {"text":"Chimera Viper Shield","bold":true,"color":"#95ae98","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.viper add 1"}}
execute as @a[tag=amr.shield,scores={amr.change.shield.viper=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
title @a[tag=amr.shield,scores={amr.change.shield.viper=1..}] title {"text":"\uE362"}
execute at @a[tag=amr.shield,scores={amr.change.shield.viper=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.viper=1..}] run function amr-shield:weapons/viper
############################################################
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s[advancements={amr-shield:shields/wooden=true}] {"text":"Wooden Shield","bold":true,"color":"#95af5f","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.wooden add 1"}}
execute as @a[tag=amr.shield,scores={amr.change.shield.wooden=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
#title @a[tag=amr.shield,scores={amr.change.shield.wooden=1..}] title {"text":"\uE362"}
execute at @a[tag=amr.shield,scores={amr.change.shield.wooden=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.wooden=1..}] run function amr-shield:weapons/wooden
############################################################
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s[advancements={amr-shield:shields/dog=true}] {"text":"Two Headed Dog Shield","bold":true,"color":"#172b12","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.dog add 1"}}
execute as @a[tag=amr.shield,scores={amr.change.shield.dog=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
#title @a[tag=amr.shield,scores={amr.change.shield.dog=1..}] title {"text":"\uE365"}
execute at @a[tag=amr.shield,scores={amr.change.shield.dog=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.dog=1..}] run function amr-shield:weapons/dog
############################################################
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s[advancements={amr-shield:shields/pipe=true}] {"text":"Pipe Shield","bold":true,"color":"#9fbc98","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.pipe add 1"}}
execute as @a[tag=amr.shield,scores={amr.change.shield.pipe=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
#title @a[tag=amr.shield,scores={amr.change.shield.pipe=1..}] title {"text":"\uE372"}
execute at @a[tag=amr.shield,scores={amr.change.shield.pipe=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.pipe=1..}] run function amr-shield:weapons/pipe
############################################################
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s[advancements={amr-shield:shields/portal=true}] {"text":"Dragon Hourglass Sand Shield","bold":true,"color":"#45818e","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.portal add 1"}}
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
#title @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] title {"text":"\uE366"}
execute at @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] run function amr-shield:weapons/portal
############################################################
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute as @a[distance=0..4,tag=amr.shield,scores={amr.shield.select=1..}] run tellraw @s[advancements={amr-shield:shields/whale=true}] {"text":"Whale Magic Core Shield","bold":true,"color":"#6ce2e2","clickEvent":{"action":"run_command","value":"/trigger amr.change.shield.whale add 1"}}
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
#title @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] title {"text":"\uE364"}
execute at @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] run particle minecraft:totem_of_undying ^ ^2 ^1 0.1 0.1 0.1 0.01 10
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] run function amr-shield:weapons/whale
############################################################
################# EFFECTS/SKILLS ###########################
############################################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/small] run function amr-shield:levelup/prof/small
execute as @a[tag=amr.shield,predicate=amr-shield:shields/small-offhand] run function amr-shield:levelup/prof/small
################# LEAF #####################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/leaf] run function amr-shield:levelup/prof/leaf
execute as @a[tag=amr.shield,predicate=amr-shield:shields/leaf-offhand] run function amr-shield:levelup/prof/leaf
execute as @a[tag=amr.shield,scores={amr.shield.grassbreak=1..}] run function amr-shield:skills/herbharvest
execute as @a[predicate=amr-shield:shields/leaf,tag=amr.shield,scores={amr.shield.carrotbreak=1..}] run function amr-shield:skills/leaf/carrotharvest
execute as @a[predicate=amr-shield:shields/leaf,tag=amr.shield,scores={amr.shield.beetbreak=1..}] run function amr-shield:skills/leaf/beetharvest
execute as @a[predicate=amr-shield:shields/leaf,tag=amr.shield,scores={amr.shield.wheatbreak=1..}] run function amr-shield:skills/leaf/wheatharvest
execute as @a[predicate=amr-shield:shields/leaf,tag=amr.shield,scores={amr.shield.potatobreak=1..}] run function amr-shield:skills/leaf/potatoharvest
################# ROPE #####################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/rope] run function amr-shield:levelup/prof/rope
execute as @a[tag=amr.shield,predicate=amr-shield:shields/rope-offhand] run function amr-shield:skills/rope/lead
execute as @a[tag=amr.shield,predicate=amr-shield:shields/ropel-offhand] run function amr-shield:skills/rope/lead
execute as @a[tag=amr.shield,predicate=amr-shield:shields/ropel-offhand] run function amr-shield:levelup/prof/rope
tag @a[tag=amr.shield,tag=amr.lead.pending,scores={amr.change.shield.rope=1..}] remove amr.lead.pending
execute as @e[predicate=amr-shield:entities/lead] run function amr-shield:skills/rope/leadreturn
execute as @e[type=leash_knot] run function amr-shield:skills/rope/leadreturn
execute as @a[tag=amr.shield,predicate=amr-shield:shields/rope,predicate=amr-shield:sneaking,scores={amr.shield.rope.as.cooldown=0,amr.shield.sp=15..}] run function amr-shield:skills/rope/air-strike
execute as @e[type=marker,tag=amr.shield.as.1] run function amr-shield:skills/rope/air-mechanics
################# PICKAX #####################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/pick] run function amr-shield:levelup/prof/pick
execute as @a[tag=amr.shield,predicate=amr-shield:shields/pick-offhand] run function amr-shield:levelup/prof/pick
execute as @a[tag=amr.shield,predicate=amr-shield:shields/pick] run function amr-shield:skills/pick/bonus
execute as @a[tag=amr.shield,predicate=amr-shield:shields/pick-offhand] run function amr-shield:skills/pick/bonus
################# LTM #####################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/ltm] run function amr-shield:levelup/prof/ltm
execute as @a[tag=amr.shield,predicate=amr-shield:shields/ltm-offhand] run function amr-shield:levelup/prof/ltm
execute as @a[tag=amr.shield,predicate=amr-shield:shields/ltm,predicate=amr-shield:sneaking] run function amr-shield:skills/ltm/barrier
execute as @a[tag=amr.shield,predicate=amr-shield:shields/ltm-offhand,predicate=amr-shield:sneaking] run function amr-shield:skills/ltm/barrier
################# VIPER #####################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/viper] run function amr-shield:levelup/prof/viper
execute as @a[tag=amr.shield,predicate=amr-shield:shields/viper-offhand] run function amr-shield:levelup/prof/viper
execute as @a[tag=amr.shield,predicate=amr-shield:shields/viper] run function amr-shield:skills/viper/passive
execute as @a[tag=amr.shield,predicate=amr-shield:shields/viper,scores={amr.shield.block=1..}] run function amr-shield:skills/viper/snakebite
execute as @a[tag=amr.shield,predicate=amr-shield:shields/viper-offhand] run function amr-shield:skills/viper/passive
################# WOODEN #####################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/wooden] run function amr-shield:levelup/prof/wooden
execute as @a[tag=amr.shield,predicate=amr-shield:shields/wooden-offhand] run function amr-shield:levelup/prof/wooden
execute as @a[tag=amr.shield,predicate=amr-shield:shields/wooden,scores={amr.skill.shield.hate.reaction=1..}] run function amr-shield:skills/wooden/aggro
execute as @a[tag=amr.shield,predicate=amr-shield:shields/wooden,predicate=amr-shield:sneaking,scores={amr.shield.wooden.hr.cooldown=0}] run function amr-shield:skills/wooden/aggro
scoreboard players remove @a[tag=amr.shield,scores={amr.shield.wooden.hr.cooldown=1..}] amr.shield.wooden.hr.cooldown 1
################# DOG ######################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/dog] run function amr-shield:levelup/prof/dog
execute as @a[tag=amr.shield,predicate=amr-shield:shields/dog-offhand] run function amr-shield:levelup/prof/dog
execute as @a[tag=amr.shield,predicate=amr-shield:shields/dog,scores={amr.shield.block=1..}] run function amr-shield:skills/dog/bite
execute as @a[tag=amr.shield,predicate=amr-shield:shields/dog,predicate=amr-shield:sneaking] run function amr-shield:skills/dog/radar
################# PIPE ######################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/pipe] run function amr-shield:levelup/prof/pipe
execute as @a[tag=amr.shield,predicate=amr-shield:shields/pipe-offhand] run function amr-shield:levelup/prof/pipe
execute as @a[tag=amr.shield,predicate=amr-shield:shields/pipe,predicate=amr-shield:sneaking,scores={amr.shield.pipe.sp.cooldown=0}] run function amr-shield:skills/pipe/prison
execute as @e[tag=amr.shield.prison] run function amr-shield:skills/pipe/mechanics
################# PORTAL ######################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal] run function amr-shield:levelup/prof/portal
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal-offhand] run function amr-shield:levelup/prof/portal
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.shield.portal.ps.cooldown=0,amr.shield.hud.warp=1..}] run function amr-shield:skills/portal/warp
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.set.warp.a=1..}] run function amr-shield:skills/portal/save
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.set.warp.b=1..}] run function amr-shield:skills/portal/save
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.set.warp.c=1..}] run function amr-shield:skills/portal/save
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.set.warp.d=1..}] run function amr-shield:skills/portal/save
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.set.warp.e=1..}] run function amr-shield:skills/portal/save
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.set.warp.f=1..}] run function amr-shield:skills/portal/save
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.a=1..}] run function amr-shield:skills/portal/warptotest
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.b=1..}] run function amr-shield:skills/portal/warptotest
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.c=1..}] run function amr-shield:skills/portal/warptotest
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.d=1..}] run function amr-shield:skills/portal/warptotest
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.e=1..}] run function amr-shield:skills/portal/warptotest
execute as @a[tag=amr.shield,predicate=amr-shield:shields/portal,scores={amr.skill.shield.warp.f=1..}] run function amr-shield:skills/portal/warptotest
################# WHALE #####################################
execute as @a[tag=amr.shield,predicate=amr-shield:shields/whale] run function amr-shield:levelup/prof/whale
execute as @a[tag=amr.shield,predicate=amr-shield:shields/whale-offhand] run function amr-shield:levelup/prof/whale
execute as @a[tag=amr.shield,predicate=amr-shield:shields/whale,scores={amr.shield.block=1..,amr.shield.whale.awakened=1..}] run function amr-shield:skills/whale/heat-beam
execute as @a[tag=amr.shield,predicate=amr-shield:shields/whale] run function amr-shield:skills/whale/bubble
############################################################
################# GOLD TRANSFER ############################
############################################################
execute as @a[tag=amr.shield,scores={amr.shield.hud.g.exchange=1..},predicate=amr-shield:coppertogold] run function amr-shield:levelup/projectile/copperconvert
execute as @a[tag=amr.shield,scores={amr.shield.hud.g.exchange=1..},predicate=amr-shield:irontogold] run function amr-shield:levelup/projectile/ironconvert
execute as @a[tag=amr.shield,scores={amr.shield.hud.g.exchange=1..},predicate=amr-shield:goldtogold] run function amr-shield:levelup/projectile/goldconvert
############################################################
################# ENERGY TRANSFER ##########################
############################################################
execute as @a[tag=amr.shield,scores={amr.shield.hud.give.energy=1..}] run function amr-shield:levelup/energy/energy_reset
execute as @a[tag=amr.shield,scores={amr.shield.hud.take.energy=1..}] run function amr-shield:levelup/energy/energy_reset
execute as @a[tag=amr.shield,scores={amr.shield.hud.check.energy=1..}] run function amr-shield:levelup/energy/check_energy
############################################################
################# SMELTING #################################
############################################################
execute as @a[tag=amr.shield,scores={amr.shield.g.smelt=1..},predicate=amr-shield:shield-smelts/small-smelt] run function amr-shield:levelup/smelt/gsmelt
execute as @a[tag=amr.shield,scores={amr.shield.g.smelt=1..},predicate=amr-shield:shield-smelts/leaf-smelt] run function amr-shield:levelup/smelt/gsmelt
execute as @a[tag=amr.shield,scores={amr.shield.g.smelt=1..},predicate=amr-shield:shield-smelts/rope-smelt] run function amr-shield:levelup/smelt/gsmelt
execute as @a[tag=amr.shield,scores={amr.shield.g.smelt=1..},predicate=amr-shield:shield-smelts/ltm-smelt] run function amr-shield:levelup/smelt/gsmelt
execute as @a[tag=amr.shield,scores={amr.shield.g.smelt=1..},predicate=amr-shield:shield-smelts/pipe-smelt] run function amr-shield:levelup/smelt/gsmelt
execute as @a[tag=amr.shield,scores={amr.shield.g.smelt=1..},predicate=amr-shield:shield-smelts/viper-smelt] run function amr-shield:levelup/smelt/gsmelt
execute as @a[tag=amr.shield,scores={amr.shield.g.smelt=1..},predicate=amr-shield:shield-smelts/wooden-smelt] run function amr-shield:levelup/smelt/gsmelt
execute as @a[tag=amr.shield,scores={amr.shield.g.smelt=1..},predicate=amr-shield:shield-smelts/dog-smelt] run function amr-shield:levelup/smelt/gsmelt
execute as @a[tag=amr.shield,scores={amr.shield.g.smelt=1..},predicate=amr-shield:shield-smelts/portal-smelt] run function amr-shield:levelup/smelt/gsmelt
execute as @a[tag=amr.shield,scores={amr.shield.g.smelt=1..},predicate=amr-shield:shield-smelts/whale-smelt] run function amr-shield:levelup/smelt/gsmelt
execute as @a[tag=amr.shield,scores={amr.shield.small.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/small-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.small.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/small-smelt] run function amr-shield:levelup/smelt/small-smelt
execute as @a[tag=amr.shield,scores={amr.shield.leaf.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/leaf-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.leaf.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/leaf-smelt] run function amr-shield:levelup/smelt/leaf-smelt
execute as @a[tag=amr.shield,scores={amr.shield.rope.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/rope-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.rope.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/rope-smelt] run function amr-shield:levelup/smelt/rope-smelt
execute as @a[tag=amr.shield,scores={amr.shield.pick.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/pick-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.pick.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/pick-smelt] run function amr-shield:levelup/smelt/pick-smelt
execute as @a[tag=amr.shield,scores={amr.shield.ltm.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/ltm-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.ltm.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/ltm-smelt] run function amr-shield:levelup/smelt/ltm-smelt
execute as @a[tag=amr.shield,scores={amr.shield.viper.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/viper-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.viper.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/viper-smelt] run function amr-shield:levelup/smelt/viper-smelt
execute as @a[tag=amr.shield,scores={amr.shield.wooden.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/wooden-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.wooden.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/wooden-smelt] run function amr-shield:levelup/smelt/wooden-smelt
execute as @a[tag=amr.shield,scores={amr.shield.dog.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/dog-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.dog.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/dog-smelt] run function amr-shield:levelup/smelt/dog-smelt
execute as @a[tag=amr.shield,scores={amr.shield.pipe.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/pipe-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.pipe.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/pipe-smelt] run function amr-shield:levelup/smelt/pipe-smelt
execute as @a[tag=amr.shield,scores={amr.shield.portal.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/portal-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.portal.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/portal-smelt] run function amr-shield:levelup/smelt/portal-smelt
execute as @a[tag=amr.shield,scores={amr.shield.whale.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/whale-smelt] run execute store success score amr.shield.smeltnumber amr.shield.smeltsuccess if predicate amr-shield:smeltrate
execute as @a[tag=amr.shield,scores={amr.shield.whale.smelt=..999,amr.shield.smelt=1..},predicate=amr-shield:shield-smelts/whale-smelt] run function amr-shield:levelup/smelt/whale-smelt
############################################################
################# RARITY UP ################################
############################################################
execute as @a[tag=amr.shield,scores={amr.shield.hud.g.increase.rarity=1..,amr.shield.energy.points=4000..}] run function amr-shield:levelup/rarityup/grarity
execute as @a[scores={amr.shield.small.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/small] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.small.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/small] run function amr-shield:levelup/rarityup/small
############################################################
execute as @a[scores={amr.shield.leaf.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/leaf] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.leaf.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/leaf] run function amr-shield:levelup/rarityup/leaf
############################################################
execute as @a[scores={amr.shield.rope.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/rope] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.rope.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/rope] run function amr-shield:levelup/rarityup/rope
############################################################
execute as @a[scores={amr.shield.pick.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/pick] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.pick.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/pick] run function amr-shield:levelup/rarityup/pick
############################################################
execute as @a[scores={amr.shield.ltm.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/ltm] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.ltm.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/ltm] run function amr-shield:levelup/rarityup/ltm
############################################################
execute as @a[scores={amr.shield.viper.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/viper] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.viper.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/viper] run function amr-shield:levelup/rarityup/viper
############################################################
execute as @a[scores={amr.shield.wooden.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/wooden] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.wooden.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/wooden] run function amr-shield:levelup/rarityup/wooden
############################################################
execute as @a[scores={amr.shield.dog.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/dog] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.dog.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/dog] run function amr-shield:levelup/rarityup/dog
############################################################
execute as @a[scores={amr.shield.pipe.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/pipe] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.pipe.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/pipe] run function amr-shield:levelup/rarityup/pipe
############################################################
execute as @a[scores={amr.shield.portal.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/portal] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.portal.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/portal] run function amr-shield:levelup/rarityup/portal
############################################################
execute as @a[scores={amr.shield.whale.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/whale] run execute store success score amr.shield.rarenumber amr.shield.raritysuccess if predicate amr-shield:rarityrate
execute as @a[scores={amr.shield.whale.rarity=..3,amr.shield.hud.increase.rarity=1..,amr.shield.energy.points=4000..},predicate=amr-shield:shields/whale] run function amr-shield:levelup/rarityup/whale
############################################################
################# AWAKENING ################################
############################################################
execute as @a[tag=amr.shield,scores={amr.shield.hud.awaken=1..,amr.shield.energy.points=4000..}] run function amr-shield:levelup/awaken/awaken
############################################################
################# ENABLE SCORES ############################
############################################################
scoreboard players add @a[tag=amr.shield] amr.shield.rope.as.cooldown 0
scoreboard players enable @a[tag=amr.shield] amr.change.shield.small
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/leaf=true}] amr.change.shield.leaf
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/rope=true}] amr.change.shield.rope
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/pick=true}] amr.change.shield.pick
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/ltm=true}] amr.change.shield.ltm
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/viper=true}] amr.change.shield.viper
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/wooden=true}] amr.change.shield.wooden
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/dog=true}] amr.change.shield.dog
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/pipe=true}] amr.change.shield.pipe
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/portal=true}] amr.change.shield.portal
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/whale=true}] amr.change.shield.whale
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/portal=true}] amr.skill.shield.set.warp.a
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/portal=true}] amr.skill.shield.set.warp.b
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/portal=true}] amr.skill.shield.set.warp.c
scoreboard players enable @a[tag=amr.shield,scores={amr.shield.portal.awakened=1..},advancements={amr-shield:shields/portal=true}] amr.skill.shield.set.warp.d
scoreboard players enable @a[tag=amr.shield,scores={amr.shield.portal.rarity=1..},advancements={amr-shield:shields/portal=true}] amr.skill.shield.set.warp.e
scoreboard players enable @a[tag=amr.shield,scores={amr.shield.portalprof=100},advancements={amr-shield:shields/portal=true}] amr.skill.shield.set.warp.f
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/portal=true}] amr.skill.shield.warp.a
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/portal=true}] amr.skill.shield.warp.b
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/portal=true}] amr.skill.shield.warp.c
scoreboard players enable @a[tag=amr.shield,scores={amr.shield.portal.awakened=1..},advancements={amr-shield:shields/portal=true}] amr.skill.shield.warp.d
scoreboard players enable @a[tag=amr.shield,scores={amr.shield.portal.rarity=1..},advancements={amr-shield:shields/portal=true}] amr.skill.shield.warp.e
scoreboard players enable @a[tag=amr.shield,scores={amr.shield.portalprof=100},advancements={amr-shield:shields/portal=true}] amr.skill.shield.warp.f
scoreboard players enable @a[tag=amr.shield,advancements={amr-shield:shields/portal=true}] amr.shield.hud.warp
scoreboard players enable @a[tag=amr.shield] amr.shield.smelt
scoreboard players enable @a[tag=amr.shield] amr.skill.shield.hate.reaction
scoreboard players enable @a[tag=amr.shield] amr.shield.hud.show
scoreboard players enable @a[tag=amr.shield] amr.shield.hud.increase.rarity
scoreboard players enable @a[tag=amr.shield] amr.shield.hud.check.energy
scoreboard players enable @a[tag=amr.shield] amr.shield.hud.take.energy
scoreboard players enable @a[tag=amr.shield] amr.shield.hud.give.energy
scoreboard players enable @a[tag=amr.shield] amr.shield.absorb
scoreboard players enable @a[tag=amr.shield] amr.shield.weapon.copy
scoreboard players enable @a[tag=amr.shield] amr.shield.hud.status
scoreboard players enable @a[tag=amr.shield] amr.shield.hud.awaken
scoreboard players enable @a[tag=amr.shield] amr.shield.hud.g.exchange
scoreboard players enable @a[tag=amr.shield] amr.shield.g.smelt
scoreboard players enable @a[tag=amr.shield] amr.shield.hud.g.increase.rarity
scoreboard players enable @a[tag=amr.shield] amr.shield.craft.sp.potion
scoreboard players enable @a[tag=amr.shield] amr.shield.craft.hp.potion
scoreboard players enable @a[tag=amr.shield] amr.shield.hud.toggle.stats
scoreboard players enable @a[tag=amr.shield] amr.shield.hud
scoreboard players add @a[tag=amr.shield] amr.shield.grassbreak 0
############################################################
################# RESET SCORES #############################
############################################################
scoreboard players set @a[tag=amr.shield,scores={amr.shield.hud.give.energy=1..,amr.shield.energy.points=..19}] amr.shield.hud.give.energy 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.energy.points=..-1}] amr.shield.energy.points 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.select=1..}] amr.shield.select 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.hud.show=2..}] amr.shield.hud.show 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.hud.toggle.stats=2..}] amr.shield.hud.toggle.stats 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.absorb=1..}] amr.shield.absorb 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.hud.status=1..}] amr.shield.hud.status 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.hud.awaken=1..}] amr.shield.hud.awaken 0
scoreboard players set @a[tag=amr.shield,scores={amr.shield.hud=1..}] amr.shield.hud 0
scoreboard players remove @a[tag=amr.shield,scores={amr.shield.rope.as.cooldown=1..}] amr.shield.rope.as.cooldown 1
scoreboard players remove @a[tag=amr.shield,scores={amr.shield.pipe.sp.cooldown=1..}] amr.shield.pipe.sp.cooldown 1
