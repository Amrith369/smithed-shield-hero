execute at @e[type=item,nbt={Item:{id:"minecraft:lead"}}] run scoreboard players add @a[distance=0..5,tag=amr.lead.pending] amr.change.shield.rope 1
execute at @e[type=leash_knot,tag=!amr.shield.found] run scoreboard players add @a[distance=0..5,tag=amr.lead.pending] amr.change.shield.rope 1
execute at @a[tag=amr.shield] run tag @e[type=leash_knot,distance=0..5,tag=!amr.shield.found] add amr.shield.found
execute at @a[tag=amr.lead.pending] run kill @e[type=item,nbt={Item:{id:"minecraft:lead"}},distance=0..10]
