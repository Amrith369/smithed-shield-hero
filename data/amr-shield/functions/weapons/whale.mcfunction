execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] run clear @s shield{smithed:{dict:{item:{shield_hero:1b}}}}
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] amr.shield.whaleprof 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] amr.shield.whale.smelt 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] amr.shield.whale.rarity 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] amr.shield.whale.awakened 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] amr.shield.whale.ps.cooldown 0
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] run give @s shield{display:{Name:'{"text":"Whale Magic Core Shield 0/45 C","color":"#19FFC9","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:"}','{"text":"naval combat 2"}','{"text":"skill: Bubble Shield"}']},Unbreakable:1b,CustomModelData:369013,smithed:{id:whale_core_shield,dict:{item:{weapon:1b,shield_hero:1b}}},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:7,Operation:0,UUID:[I;1706740451,1216693166,-1729998884,71532403],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:7,Operation:0,UUID:[I;-916300507,1026313975,-1364948244,-441098853],Slot:"offhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:5,Operation:0,UUID:[I;498214111,-1006417578,-1879318529,-116772540],Slot:"mainhand"}]} 1
#execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..,amr.shield.whaleprof=10..}] run function amr-shield:levelup/basic
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..,amr.shield.whale.rarity=1..},predicate=amr-shield:shields/whale] run item modify entity @s weapon.mainhand amr-shield:whale/whale_mastery/rarity
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..,amr.shield.whaleprof=1..},predicate=amr-shield:shields/whale] run item modify entity @s weapon.mainhand amr-shield:whale/whale_mastery/mastery
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..},level=1..,predicate=amr-shield:shields/whale] run item modify entity @s weapon.mainhand amr-shield:whale/whale_smelt/level_link
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..,amr.shield.whale.smelt=1..},predicate=amr-shield:shields/whale] run item modify entity @s weapon.mainhand amr-shield:whale/whale_smelt/smelt
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..,amr.shield.whale.smelt=1..},predicate=amr-shield:shields/whale] run item modify entity @s weapon.mainhand amr-shield:whale/whale_smelt/smelt_name
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..,amr.shield.whale.awakened=1}] run item modify entity @s weapon.mainhand amr-shield:whale/whale_awaken
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..,amr.shield.hud.toggle.stats=1..},predicate=amr-shield:shields/whale] run item modify entity @s weapon.mainhand amr-shield:hideflags
execute as @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] run item modify entity @s weapon.mainhand amr-shield:small/pack
scoreboard players set @a[tag=amr.shield,scores={amr.change.shield.whale=1..}] amr.change.shield.whale 0
