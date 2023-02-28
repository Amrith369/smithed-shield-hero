tellraw @s ["",{"selector":"@s","color":"gold","hoverEvent":{"action":"show_text","contents":["Shield Hero"]}},{"text":"\n[SP]","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"@s","objective":"amr.shield.sp"},"color":"gold"}]}},{"text":"\n[Total Energy]","color":"green","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"@s","objective":"amr.shield.energy.points"},"color":"gold"}]}},{"text":"\n[Shields]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.status"},"hoverEvent":{"action":"show_text","contents":[{"text":"Show Unlocked Shields And Their Stats","color":"dark_purple"}]}},{"text":"\n[Smelt]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.smelt"},"hoverEvent":{"action":"show_text","contents":[{"text":"Smelt current Shield","color":"dark_purple"}]}},{"text":"\n[Smelt*]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.g.smelt"},"hoverEvent":{"action":"show_text","contents":[{"text":"Smelt current Shield using G","color":"dark_purple"}]}},{"text":"\n[Rarity Up]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.increase.rarity"},"hoverEvent":{"action":"show_text","contents":[{"text":"Boost Rarity of current Shield","color":"dark_purple"}]}},{"text":"\n[Rarity Up*]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.g.increase.rarity"},"hoverEvent":{"action":"show_text","contents":[{"text":"Increase Rarity of current Shield using G","color":"dark_purple"}]}},{"text":"\n[Mastery Add]","bold":true,"color":"#5AD058","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.give.energy"},"hoverEvent":{"action":"show_text","contents":["Give Current Shield 1 Mastery Point (If Energy Available)"]}},{"text":"\n[Mastery Remove]","color":"#48E70D","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.take.energy"},"hoverEvent":{"action":"show_text","contents":["Remove Mastery and Convert it to Energy"]}},{"text":"\n[Awaken]","bold":true,"color":"#48F4AA","clickEvent":{"action":"run_command","value":"/trigger amr.shield.hud.awaken"},"hoverEvent":{"action":"show_text","contents":[{"text":"Awaken Current Shield","color":"dark_purple"}]}}]