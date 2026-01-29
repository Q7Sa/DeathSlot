execute as @a at @s run function ds:damage_detection

execute as @a at @s run function ds:lock_loop

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{lock:true}}}}]

scoreboard players enable @a share_locks
scoreboard players enable @a reset
scoreboard players enable @a friendly_fire



# share locks toggle
execute as @a at @s if score @s share_locks matches 1.. run function ds:toggle_shared
execute as @a at @s if score @s share_locks matches 1.. run scoreboard players set @s share_locks 0

# reset and annouce resetter
execute as @a at @s if score @s reset matches 1.. run tellraw @a [{"text":"➡ ","color":"gray","bold":true},{"text":"Death","color":"dark_red","bold":true},{"text":"Slot  ","color":"#FF4D00","bold":true},{"selector":"@s","color":"red","bold":true},{"text":" Reset all locks!","color":"#3281d1","bold":false}]
execute as @a at @s if score @s reset matches 1.. run function ds:reset
execute as @a at @s if score @s reset matches 1.. run scoreboard players set @s reset 0

# friendly fire toggle
execute as @a at @s if score @s friendly_fire matches 1.. run function ds:toggle_friendly_fire
execute as @a at @s if score @s friendly_fire matches 1.. run scoreboard players set @s friendly_fire 0

execute if score #global ds.friendly_fire matches 0 run team join ds.nopvp @a
execute unless score #global ds.friendly_fire matches 0 run team empty ds.nopvp