# Check if damage was taken
execute as @s if score @s ds.damage_taken matches 1.. run function ds:process_damage