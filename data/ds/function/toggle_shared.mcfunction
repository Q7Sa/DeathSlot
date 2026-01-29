# Store current state to avoid race condition during updates
scoreboard players operation #state ds.temp = #global ds.shared

# Case: Currently ON (1) -> Switch to OFF (0)
execute if score #state ds.temp matches 1 run tellraw @a [{"text":"➡ ","color":"gray","bold":true},{"text":"Death","color":"dark_red","bold":true},{"text":"Slot  ","color":"#FF4D00","bold":true},{"selector":"@s","color":"red","bold":true},{"text":" Deactivated shared lock!","color":"#3281d1","bold":false}]
execute if score #state ds.temp matches 1 run function ds:reset
execute if score #state ds.temp matches 1 run scoreboard players set #global ds.shared 0

# Case: Currently OFF (0 or unset) -> Switch to ON (1)
execute unless score #state ds.temp matches 1 run tellraw @a [{"text":"➡ ","color":"gray","bold":true},{"text":"Death","color":"dark_red","bold":true},{"text":"Slot  ","color":"#FF4D00","bold":true},{"selector":"@s","color":"red","bold":true},{"text":" Activated shared lock!","color":"#3281d1","bold":false}]
execute unless score #state ds.temp matches 1 run function ds:reset
execute unless score #state ds.temp matches 1 run scoreboard players set #global ds.shared 1
