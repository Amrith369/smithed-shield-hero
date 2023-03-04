execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] run clear @s shield{smithed:{dict:{item:{shield_hero:1b}}}}
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] amr.shield.ltmprof 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] amr.shield.ltm.smelt 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] amr.shield.ltm.rarity 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] amr.shield.ltm.awakened 0
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] run give @s shield{display:{Name:'{"text":"Light Metal Shield 0/20 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:","italic":true}','{"text":"defense 1"}','{"text":"Special Equip Effect:","italic":true}','{"text":"magic defense 1"}']},Unbreakable:1b,CustomModelData:369006,smithed:{id:ltm_shield,dict:{item:{weapon:1b,shield_hero:1b}}},AttributeModifiers:[{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2.5,Operation:0,UUID:[I;1936026731,-1018017707,-1119998006,1539025934],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;-2074726807,-675590610,-1376706871,-183614902],Slot:"mainhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2.5,Operation:0,UUID:[I;1464597714,2112768700,-1113850491,-1971752862],Slot:"offhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;-1100240284,-875608790,-1225656028,2023846465],Slot:"offhand"}]} 1
#execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..,amr.shield.ltmprof=10..}] run function amr-shield:levelup/basic
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..,amr.shield.ltm.rarity=1..},predicate=amr-shield:shields/ltm] run item modify entity @s weapon.mainhand amr-shield:ltm/ltm_mastery/ltm_rarity
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..,amr.shield.ltmprof=1..},predicate=amr-shield:shields/ltm] run item modify entity @s weapon.mainhand amr-shield:ltm/ltm_mastery/ltm_mastery
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..},level=1..,predicate=amr-shield:shields/ltm] run item modify entity @s weapon.mainhand amr-shield:ltm/ltm_smelt/ltm_level_link
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..,amr.shield.ltm.smelt=1..},predicate=amr-shield:shields/ltm] run item modify entity @s weapon.mainhand amr-shield:ltm/ltm_smelt/ltm_smelt
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..,amr.shield.ltm.smelt=1..},predicate=amr-shield:shields/ltm] run item modify entity @s weapon.mainhand amr-shield:ltm/ltm_smelt/ltm_smelt_name
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..,amr.shield.ltm.awakened=1}] run item modify entity @s weapon.mainhand amr-shield:ltm/ltm_awaken
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..,amr.shield.hud.toggle.stats=1..},predicate=amr-shield:shields/ltm] run item modify entity @s weapon.mainhand amr-shield:hideflags
execute as @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] run item modify entity @s weapon.mainhand amr-shield:small/pack
scoreboard players set @a[tag=amr.shield,scores={amr.change.shield.ltm=1..}] amr.change.shield.ltm 0
