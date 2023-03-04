execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..}] run clear @s shield{smithed:{dict:{item:{shield_hero:1b}}}}
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.small=1..}] amr.shield.smallprof 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.small=1..}] amr.shield.small.smelt 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.small=1..}] amr.shield.small.rarity 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.small=1..}] amr.shield.small.awakened 0
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..}] run give @s minecraft:shield{display:{Name:'{"text":"Small Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Unlocked-","italic":true}','{"text":"Equip Bonus: defense 3"}']},HideFlags:1,smithed:{id:small_shield,dict:{item:{weapon:1b,shield_hero:1b}}},Unbreakable:1b,CustomModelData:369001,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;1121958733,1890078422,-1418796001,407305685],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;739942784,-583381529,-1693691069,-1474323066],Slot:"mainhand"}]} 1
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..,amr.shield.smallprof=1..}] run item modify entity @s weapon.mainhand amr-shield:small/small_mastery/small_mastery
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..,amr.shield.small.rarity=1..}] run item modify entity @s weapon.mainhand amr-shield:small/small_mastery/small_rarity
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..},level=1..,predicate=amr-shield:shields/small] run item modify entity @s weapon.mainhand amr-shield:small/small_smelt/small_level_link
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..,amr.shield.small.smelt=1..},predicate=amr-shield:shields/small] run item modify entity @s weapon.mainhand amr-shield:small/small_smelt/small_smelt
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..,amr.shield.small.smelt=1..},predicate=amr-shield:shields/small] run item modify entity @s weapon.mainhand amr-shield:small/small_smelt/small_smelt_name
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..,amr.shield.small.awakened=1}] run item modify entity @s weapon.mainhand amr-shield:small/small_awaken
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..,amr.shield.hud.toggle.stats=1..},predicate=amr-shield:shields/small] run item modify entity @s weapon.mainhand amr-shield:hideflags
execute as @a[tag=amr.shield,scores={amr.change.shield.small=1..}] run item modify entity @s weapon.mainhand amr-shield:small/pack
scoreboard players set @a[tag=amr.shield,scores={amr.change.shield.small=1..}] amr.change.shield.small 0
