execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] run clear @s shield{smithed:{dict:{item:{shield_hero:1b}}}}
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] amr.shield.portalprof 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] amr.shield.portal.smelt 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] amr.shield.portal.rarity 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] amr.shield.portal.awakened 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] amr.shield.portal.ps.cooldown 0
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] run give @s shield{display:{Name:'{"text":"Dragon Hourglass Sand Shield 0/40 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:"}','{"text":"skill: Portal Shield"}']},Unbreakable:1b,CustomModelData:369012,smithed:{id:portal_shield,dict:{item:{weapon:1b,shield_hero:1b}}},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;400071231,-1069264900,-1516283906,-2111122901],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;1705370599,-562937672,-1267855582,-1955925529],Slot:"offhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1.3,Operation:0,UUID:[I;773993161,-676706112,-2096666783,-529657099],Slot:"mainhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1.3,Operation:0,UUID:[I;-1602373349,289752339,-1412393999,-1385097152],Slot:"offhand"}]} 1
#execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..,amr.shield.portalprof=10..}] run function amr-shield:levelup/basic
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..,amr.shield.portal.rarity=1..},predicate=amr-shield:shields/portal] run item modify entity @s weapon.mainhand amr-shield:portal/portal_mastery/portal_rarity
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..,amr.shield.portalprof=1..},predicate=amr-shield:shields/portal] run item modify entity @s weapon.mainhand amr-shield:portal/portal_mastery/portal_mastery
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..},level=1..,predicate=amr-shield:shields/portal] run item modify entity @s weapon.mainhand amr-shield:portal/portal_smelt/portal_level_link
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..,amr.shield.portal.smelt=1..},predicate=amr-shield:shields/portal] run item modify entity @s weapon.mainhand amr-shield:portal/portal_smelt/portal_smelt
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..,amr.shield.portal.smelt=1..},predicate=amr-shield:shields/portal] run item modify entity @s weapon.mainhand amr-shield:portal/portal_smelt/portal_smelt_name
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..,amr.shield.portal.awakened=1}] run item modify entity @s weapon.mainhand amr-shield:portal/portal_awaken
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..,amr.shield.hud.toggle.stats=1..},predicate=amr-shield:shields/portal] run item modify entity @s weapon.mainhand amr-shield:hideflags
execute as @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] run item modify entity @s weapon.mainhand amr-shield:small/pack
scoreboard players set @a[tag=amr.shield,scores={amr.change.shield.portal=1..}] amr.change.shield.portal 0
