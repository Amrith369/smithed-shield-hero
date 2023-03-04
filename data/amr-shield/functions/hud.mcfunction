#tellraw @s ["",{"selector":"@s","color":"gold","hoverEvent":{"action":"show_text","contents":["Shield Hero"]}},{"text":"\n[SP]","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"@s","objective":"amr.shield.sp"},"color":"gold"}]}},{"text":"\n[Total Energy]","color":"green","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"@s","objective":"amr.shield.energy.points"},"color":"gold"}]}},{"text":"\n[Shields]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.status"},"hoverEvent":{"action":"show_text","contents":[{"text":"Show Unlocked Shields And Their Stats","color":"dark_purple"}]}},{"text":"\n[Smelt]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.smelt"},"hoverEvent":{"action":"show_text","contents":[{"text":"Smelt current Shield","color":"dark_purple"}]}},{"text":"\n[Smelt*]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.g.smelt"},"hoverEvent":{"action":"show_text","contents":[{"text":"Smelt current Shield using G","color":"dark_purple"}]}},{"text":"\n[Rarity Up]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.increase.rarity"},"hoverEvent":{"action":"show_text","contents":[{"text":"Boost Rarity of current Shield","color":"dark_purple"}]}},{"text":"\n[Rarity Up*]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.g.increase.rarity"},"hoverEvent":{"action":"show_text","contents":[{"text":"Increase Rarity of current Shield using G","color":"dark_purple"}]}},{"text":"\n[Mastery Add]","bold":true,"color":"#5AD058","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.give.energy"},"hoverEvent":{"action":"show_text","contents":["Give Current Shield 1 Mastery Point (If Energy Available)"]}},{"text":"\n[Mastery Remove]","color":"#48E70D","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.take.energy"},"hoverEvent":{"action":"show_text","contents":["Remove Mastery and Convert it to Energy"]}},{"text":"\n[Awaken]","bold":true,"color":"#48F4AA","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.awaken"},"hoverEvent":{"action":"show_text","contents":[{"text":"Awaken Current Shield","color":"dark_purple"}]}}]
tellraw @s[scores={amr.shield.hud=1}] ["",{"selector":"@s","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Shield Hero","bold":true,"color":"dark_aqua"}]}},{"text":"\n【Stats】","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud set 369001"},"hoverEvent":{"action":"show_text","contents":[{"text":"View SP, Energy, G, and Player Stats","color":"gold"}]}},{"text":"\n【Shields】","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.status"},"hoverEvent":{"action":"show_text","contents":[{"text":"Show Unlocked Shields And Their Stats","color":"gold"}]}},{"text":"\n【Upgrade】","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud set 369002"},"hoverEvent":{"action":"show_text","contents":[{"text":"Upgrade Current Weapon","color":"gold"}]}},{"text":"\n【Settings】","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud set 369003"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set Preferences","color":"gold"}]}}]
execute as @s[scores={amr.shield.hud=369001}] store result score amr.shield.atk amr.shield.stat.atk run attribute @s minecraft:generic.attack_damage get
execute as @s[scores={amr.shield.hud=369001}] store result score amr.shield.hp amr.shield.stat.hp run data get entity @s Health 1
execute as @s[scores={amr.shield.hud=369001}] store result score amr.shield.armor amr.shield.stat.armor run attribute @s minecraft:generic.armor get
execute as @s[scores={amr.shield.hud=369001}] store result score amr.shield.armor.toughness amr.shield.stat.armor.toughness run attribute @s minecraft:generic.armor_toughness get
tellraw @s[scores={amr.shield.hud=369001}] ["",{"text":"\n【SP】","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"@s","objective":"amr.shield.sp"},"color":"gold"}]}},{"score":{"name":"@s","objective":"amr.shield.sp"},"color":"gold"},{"text":"\n【Total Energy】","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"@s","objective":"amr.shield.energy.points"},"color":"gold"}]}},{"score":{"name":"@s","objective":"amr.shield.energy.points"},"color":"gold"},{"text":"\n【Total G】","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"@s","objective":"amr.shield.g"},"color":"gold"}]}},{"score":{"name":"@s","objective":"amr.shield.g"},"color":"gold"},{"text":"\n ___________________________","bold":true,"color":"white"},{"text":"\n\n【HP】","bold":true,"color":"green"},{"score":{"name":"amr.shield.hp","objective":"amr.shield.stat.hp"},"color":"gold"},{"text":"\n【ATK】","bold":true,"color":"green"},{"score":{"name":"amr.shield.atk","objective":"amr.shield.stat.atk"},"color":"gold"},{"text":"\n【Armor】","bold":true,"color":"green"},{"score":{"name":"amr.shield.armor","objective":"amr.shield.stat.armor"},"color":"gold"},{"text":"\n【Defense】","bold":true,"color":"green"},{"score":{"name":"amr.shield.armor.toughness","objective":"amr.shield.stat.armor.toughness"},"color":"gold"}]
tellraw @s[scores={amr.shield.hud=369002}] ["",{"text":"\n[Smelt]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.smelt"},"hoverEvent":{"action":"show_text","contents":[{"text":"Smelt current Shield","color":"dark_purple"}]}},{"text":"\n[Smelt*]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.g.smelt"},"hoverEvent":{"action":"show_text","contents":[{"text":"Smelt current Shield using G","color":"dark_purple"}]}},{"text":"\n[Rarity Up]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.increase.rarity"},"hoverEvent":{"action":"show_text","contents":[{"text":"Boost Rarity of current Shield","color":"dark_purple"}]}},{"text":"\n[Rarity Up*]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.g.increase.rarity"},"hoverEvent":{"action":"show_text","contents":[{"text":"Increase Rarity of current Shield using G","color":"dark_purple"}]}},{"text":"\n[Mastery Add]","bold":true,"color":"#5AD058","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.give.energy"},"hoverEvent":{"action":"show_text","contents":["Give Current Shield 1 Mastery Point (If Energy Available)"]}},{"text":"\n[Mastery Remove]","color":"#48E70D","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.take.energy"},"hoverEvent":{"action":"show_text","contents":["Remove Mastery and Convert it to Energy"]}},{"text":"\n[Awaken]","bold":true,"color":"#48F4AA","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.awaken"},"hoverEvent":{"action":"show_text","contents":[{"text":"Awaken Current Shield","color":"dark_purple"}]}}]
tellraw @s[scores={amr.shield.hud=369003}] ["",{"text":"\n【Toggle Actionbar】","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Actionbar Shows SP & G","color":"gold"}]}},{"text":"ON /","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.show set 1"}},{"text":"OFF","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.show set 0"}},{"text":"\n【Toggle Weapon Modifer Text】","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Shows Stat Increases In Weapon Lore","color":"gold"}]}},{"text":"ON /","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.toggle.stats set 0"}},{"text":"OFF","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.toggle.stats set 1"}}]
