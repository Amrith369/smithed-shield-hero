##################################
##########WOODEN SHIELD###########
##################################
tellraw @s[advancements={amr-shield:shields/wooden=false}] {"text":"Weapon Copy: Wooden Shield Unlocked","italic":true,"color":"gold"}
advancement grant @s[predicate=amr-shield:shields/weapon.copy/wooden] only amr-shield:shields/wooden
