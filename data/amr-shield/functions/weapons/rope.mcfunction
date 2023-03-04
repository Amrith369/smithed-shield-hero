execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] run clear @s shield{smithed:{dict:{item:{shield_hero:1b}}}}
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] amr.shield.ropeprof 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] amr.shield.rope.smelt 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] amr.shield.rope.rarity 0
scoreboard players add @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] amr.shield.rope.awakened 0
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] run give @s minecraft:shield{display:{Name:'{"text":"Rope Shield 0/10 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:","italic":true}','{"text":"Skill: Air Strike Shield"}']},Unbreakable:1b,CustomModelData:369004,smithed:{id:rope_shield,dict:{item:{weapon:1b,shield_hero:1b}}},AttributeModifiers:[{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;1292209216,625492818,-1149681624,283251881],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;-119679978,825509608,-1809598732,-1606085347],Slot:"mainhand"}]} 1
#execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..,amr.shield.ropeprof=10..}] run function amr-shield:levelup/basic
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..,amr.shield.rope.rarity=1..},predicate=amr-shield:shields/rope] run item modify entity @s weapon.mainhand amr-shield:rope/rope_mastery/rope_rarity
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..,amr.shield.ropeprof=1..},predicate=amr-shield:shields/rope] run item modify entity @s weapon.mainhand amr-shield:rope/rope_mastery/rope_mastery
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..},level=1..,predicate=amr-shield:shields/rope] run item modify entity @s weapon.mainhand amr-shield:rope/rope_smelt/rope_level_link
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..,amr.shield.rope.smelt=1..},predicate=amr-shield:shields/rope] run item modify entity @s weapon.mainhand amr-shield:rope/rope_smelt/rope_smelt
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..,amr.shield.rope.smelt=1..},predicate=amr-shield:shields/rope] run item modify entity @s weapon.mainhand amr-shield:rope/rope_smelt/rope_smelt_name
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..,amr.shield.rope.awakened=1}] run item modify entity @s weapon.mainhand amr-shield:rope/rope_awaken
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..,amr.shield.hud.toggle.stats=1..},predicate=amr-shield:shields/rope] run item modify entity @s weapon.mainhand amr-shield:hideflags
execute as @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] run item modify entity @s weapon.mainhand amr-shield:small/pack
scoreboard players set @a[tag=amr.shield,scores={amr.change.shield.rope=1..}] amr.change.shield.rope 0
