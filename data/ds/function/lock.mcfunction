# $execute if items entity @s $(type).$(id)$(slot) stick run return run function ds:randomize_slot
$item replace entity @s $(type).$(id)$(slot) with minecraft:stick[custom_name={"text":"LOCKED","color":"red","italic":false},max_stack_size=1,custom_data={lock:true},item_model="minecraft:barrier"]
