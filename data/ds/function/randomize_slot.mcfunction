execute if entity @s[tag=ds.full] run return run title @s actionbar {"text":"You have no empty slots left!","color":"red","bold":true}
execute if score #global ds.shared matches 1 store result score @a ds.random_slot run random value 0..40
execute unless score #global ds.shared matches 1 store result score @a ds.random_slot run random value 0..40



execute store result storage ds:random random_num int 1 run scoreboard players get @s ds.random_slot
function ds:check_if_repeated with storage ds:random

execute if score #global ds.shared matches 1 run function ds:repeatitive_func/randomize_slot_shared
execute unless score #global ds.shared matches 1 run function ds:repeatitive_func/randomize_slot
