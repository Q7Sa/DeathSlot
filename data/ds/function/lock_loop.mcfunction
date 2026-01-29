function ds:enforce_locks
function ds:count_slots

execute if score @s ds.slots_locked matches 41 run tag @s add ds.full

execute if items entity @s player.cursor minecraft:stick[custom_data={lock:true}] run item replace entity @s player.cursor with air

execute if score @s ds.slot37 matches 1 run item replace entity @s armor.chest with minecraft:stick[custom_name={"text":"LOCKED","color":"red","italic":false},max_stack_size=1,custom_data={lock:true},equippable={slot:"chest"},item_model="minecraft:barrier"]
execute if score @s ds.slot38 matches 1 run item replace entity @s armor.legs with minecraft:stick[custom_name={"text":"LOCKED","color":"red","italic":false},max_stack_size=1,custom_data={lock:true},equippable={slot:"legs"},item_model="minecraft:barrier"]
execute if score @s ds.slot39 matches 1 run item replace entity @s armor.feet with minecraft:stick[custom_name={"text":"LOCKED","color":"red","italic":false},max_stack_size=1,custom_data={lock:true},equippable={slot:"feet"},item_model="minecraft:barrier"]

function ds:repeatitive_func/clear