scoreboard players set @s ds.slots_locked 0
function ds:repeatitive_func/count_slots


scoreboard players operation @s ds.slots_available = const ds.slots_available
scoreboard players operation @s ds.slots_available -= @s ds.slots_locked