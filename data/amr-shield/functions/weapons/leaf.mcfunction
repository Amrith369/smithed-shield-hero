execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] run clear @s shield{ctc:{traits:{"shield_hero":1b}}}
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] amr.shield.leafprof 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] amr.shield.leaf.smelt 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] amr.shield.leaf.rarity 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] amr.shield.leaf.awakened 0
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] run give @s shield{display:{Name:'{"text":"Leaf Shield 0/10","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:","italic":true}','{"text":"absorption ability 1"}']},Unbreakable:1b,CustomModelData:369002,ctc:{id:"amr-shield:leaf_shield",traits:{"tool/weapon":1b,"shield_hero":1b}},AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:1,Operation:0,UUID:[I;1298267987,148783896,-1833955148,923592640],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:4,Operation:0,UUID:[I;1429807571,-880522629,-2055383371,771853637],Slot:"mainhand"}]} 1
#execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..,amr.shield.leafprof=10..}] run function amr-shield:levelup/basic
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..,amr.shield.leaf.rarity=1..},predicate=amr-shield:shields/leaf] run item modify entity @s weapon.mainhand amr-shield:leaf/leaf_mastery/leaf_rarity
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..,amr.shield.leafprof=1..},predicate=amr-shield:shields/leaf] run item modify entity @s weapon.mainhand amr-shield:leaf/leaf_mastery/leaf_mastery
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..},level=1..,predicate=amr-shield:shields/leaf] run item modify entity @s weapon.mainhand amr-shield:leaf/leaf_smelt/leaf_level_link
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..,amr.shield.leaf.smelt=1..},predicate=amr-shield:shields/leaf] run item modify entity @s weapon.mainhand amr-shield:leaf/leaf_smelt/leaf_smelt
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..,amr.shield.leaf.smelt=1..},predicate=amr-shield:shields/leaf] run item modify entity @s weapon.mainhand amr-shield:leaf/leaf_smelt/leaf_smelt_name
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..,amr.shield.leaf.awakened=1}] run item modify entity @s weapon.mainhand amr-shield:leaf/leaf_awaken
execute as @a[tag=amr.shield,scores={amr.change.shield.leaf=1..,amr.shield.hud.toggle.stats=1..},predicate=amr-shield:shields/leaf] run item modify entity @s weapon.mainhand amr-shield:hideflags
scoreboard players set @a[tag=amr.shield,scores={amr.change.shield.leaf=1..}] amr.change.shield.leaf 0
