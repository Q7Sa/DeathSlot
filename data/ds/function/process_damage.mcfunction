# Pick a random slot (0-35: inventory, 36: offhand, 37-40: armor)
# tellraw @a [{"text":"Process Damage Triggered. Slot: "},{"score":{"name":"@s","objective":"ds.random_slot"}}]

function ds:randomize_slot

# Visual feedback
execute unless entity @s[tag=ds.full] run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 0.3 1.9
execute unless entity @s[tag=ds.full] run title @s actionbar {"text":"Locked A Slot!","color":"red","bold":true}

# tell everyone that the player took damage, and how much slots they have left, Prefix [(dark red)Death(yellow)Slot] with cool format
tellraw @a [{"text":"➡ ","color":"gray","bold":true},{"text":"Death","color":"dark_red","bold":true},{"text":"Slot  ","color":"#FF4D00","bold":true},{"selector":"@s","color":"red","bold":true},{"text":" took damage! ","color":"#3281d1","bold":false},{"score":{"name":"@s","objective":"ds.slots_available"},"color":"#3281d1","bold":true},{"text":" slots left!","color":"#3281d1","bold":false}]

execute if entity @s[tag=ds.full] run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 1.2
execute if entity @s[tag=ds.full] run title @s actionbar {"text":"You have no empty slots left!","color":"red","bold":true}

execute if entity @s[tag=ds.full] run summon tnt
# Reset damage taken
scoreboard players set @s ds.damage_taken 0

