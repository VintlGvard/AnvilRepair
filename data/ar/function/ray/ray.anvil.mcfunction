execute as @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] if block ~ ~ ~ damaged_anvil unless entity @e[limit=1,sort=nearest,tag=anvil.int,distance=..1] run function ar:ray/anvil.int
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] if block ~ ~ ~ chipped_anvil unless entity @e[limit=1,sort=nearest,tag=anvil.inte,distance=..1] run function ar:ray/anvil.inte

scoreboard players remove @s ray_steps 1
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^1 run function ar:ray/ray.anvil
