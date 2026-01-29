# Reset internal scores
execute as @a run function ds:reset_locks

# Clear locked items
# Uses the exact component data to ensure we don't clear legitimate bedrock (if any)
clear @a minecraft:stick[custom_data={lock:true}]

# Feedback
title @a actionbar {"text":"Slots Reset!","color":"green"}
playsound minecraft:block.note_block.pling player @a ~ ~ ~ 1 2

effect give @a minecraft:instant_health 1 100 true

tag @a remove ds.full