#ray

execute as @a[nbt={SelectedItem:{id:"minecraft:iron_block"}}] at @s anchored eyes positioned ^ ^ ^ run function ar:ray/start_ray.anvil

#anvil

execute as @e[tag=anvil.int] at @s if data entity @s interaction on target if block ~ ~ ~ damaged_anvil[facing=east] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] run setblock ~ ~ ~ chipped_anvil[facing=east]
execute as @e[tag=anvil.int] at @s if data entity @s interaction on target if block ~ ~ ~ damaged_anvil[facing=north] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] run setblock ~ ~ ~ chipped_anvil[facing=north]
execute as @e[tag=anvil.int] at @s if data entity @s interaction on target if block ~ ~ ~ damaged_anvil[facing=south] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] run setblock ~ ~ ~ chipped_anvil[facing=south]
execute as @e[tag=anvil.int] at @s if data entity @s interaction on target if block ~ ~ ~ damaged_anvil[facing=west] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] run setblock ~ ~ ~ chipped_anvil[facing=west]
execute as @e[tag=anvil.inte] at @s if data entity @s interaction on target if block ~ ~ ~ chipped_anvil[facing=east] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] run setblock ~ ~ ~ anvil[facing=east]
execute as @e[tag=anvil.inte] at @s if data entity @s interaction on target if block ~ ~ ~ chipped_anvil[facing=north] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] run setblock ~ ~ ~ anvil[facing=north]
execute as @e[tag=anvil.inte] at @s if data entity @s interaction on target if block ~ ~ ~ chipped_anvil[facing=south] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] run setblock ~ ~ ~ anvil[facing=south]
execute as @e[tag=anvil.inte] at @s if data entity @s interaction on target if block ~ ~ ~ chipped_anvil[facing=west] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] run setblock ~ ~ ~ anvil[facing=west]

execute as @e[tag=anvil.int] at @s if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] at @s run item modify entity @s weapon.mainhand ar:count-1
execute as @e[tag=anvil.int] at @s if data entity @s interaction run kill @s
execute as @e[tag=anvil.inte] at @s if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:iron_block"}}] at @s run item modify entity @s weapon.mainhand ar:count-1
execute as @e[tag=anvil.inte] at @s if data entity @s interaction run kill @s

#debug

execute as @e[tag=anvil.int] at @s unless block ~ ~ ~ damaged_anvil run kill @s
execute as @e[tag=anvil.inte] at @s unless block ~ ~ ~ chipped_anvil run kill @s 
execute as @e[tag=anvil.int] at @s unless entity @a[nbt={SelectedItem:{id:"minecraft:iron_block"}},distance=0..5] run kill @s
execute as @e[tag=anvil.inte] at @s unless entity @a[nbt={SelectedItem:{id:"minecraft:iron_block"}},distance=0..5] run kill @s