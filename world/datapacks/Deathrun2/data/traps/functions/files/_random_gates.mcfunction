##
 # _#_random_gates.mcfunction
 # 
 #
 # Created by .
##

execute if score timer01 Timer matches 1 run scoreboard players set random_gate01 Timer 1
execute if score timer01 Timer matches 2 run scoreboard players set random_gate01 Timer 2
execute if score timer01 Timer matches 3.. run scoreboard players set random_gate01 Timer 3


##When standing on the right one, show the wrong ones and play some green particle and happy sound

execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_2] unless entity @e[tag=!recorder,tag=wrong_gate_3] run particle happy_villager ~ ~1 ~ 0.25 0.25 0.25 0 10 normal
execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_2] unless entity @e[tag=!recorder,tag=wrong_gate_3] run playsound entity.villager.celebrate record @a ~ ~ ~ 1 1.3
execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_3] run summon item_display 131.5 -39.2 27.5 {item_display:"gui",Rotation:[170F,0F],Tags:["wrong_gate","wrong_gate_3"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}
execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_2] run summon item_display 133.8 -39.2 26.0 {item_display:"gui",Rotation:[145F,0F],Tags:["wrong_gate","wrong_gate_2"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}

execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_1] unless entity @e[tag=!recorder,tag=wrong_gate_3] run particle happy_villager ~ ~1 ~ 0.25 0.25 0.25 0 10 normal
execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_1] unless entity @e[tag=!recorder,tag=wrong_gate_3] run playsound entity.villager.celebrate record @a ~ ~ ~ 1 1.3
execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_3] run summon item_display 131.5 -39.2 27.5 {item_display:"gui",Rotation:[170F,0F],Tags:["wrong_gate","wrong_gate_3"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}
execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_1] run summon item_display 136.7 -39.2 24.2 {item_display:"gui",Rotation:[135F,0F],Tags:["wrong_gate","wrong_gate_1"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}

execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_1] unless entity @e[tag=!recorder,tag=wrong_gate_2] run particle happy_villager ~ ~1 ~ 0.25 0.25 0.25 0 10 normal
execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_1] unless entity @e[tag=!recorder,tag=wrong_gate_2] run playsound entity.villager.celebrate record @a ~ ~ ~ 1 1.3
execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_1] run summon item_display 136.7 -39.2 24.2 {item_display:"gui",Rotation:[135F,0F],Tags:["wrong_gate","wrong_gate_1"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}
execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_2] run summon item_display 133.8 -39.2 26.0 {item_display:"gui",Rotation:[145F,0F],Tags:["wrong_gate","wrong_gate_2"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}






##If gate 1 kill in gate 2/3
execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta run particle angry_villager ~ ~1 ~ 0.25 0.25 0.25 0 10 normal
execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta run playsound entity.villager.death record @a ~ ~ ~ 1 1.3
execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_3] run summon item_display 131.5 -39.2 27.5 {item_display:"gui",Rotation:[170F,0F],Tags:["wrong_gate","wrong_gate_3"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}
execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta run function traps:files/_player_die

execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta run particle angry_villager ~ ~1 ~ 0.25 0.25 0.25 0 10 normal
execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta run playsound entity.villager.death record @a ~ ~ ~ 1 1.3
execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_2] run summon item_display 133.8 -39.2 26.0 {item_display:"gui",Rotation:[145F,0F],Tags:["wrong_gate","wrong_gate_2"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}
execute if score random_gate01 Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta run function traps:files/_player_die

##If gate 2 kill in gate 1/3




execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta run particle angry_villager ~ ~1 ~ 0.25 0.25 0.25 0 10 normal
execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta run playsound entity.villager.death record @a ~ ~ ~ 1 1.3
execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_1] run summon item_display 136.7 -39.2 24.2 {item_display:"gui",Rotation:[135F,0F],Tags:["wrong_gate","wrong_gate_1"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}
execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta run function traps:files/_player_die

execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta run particle angry_villager ~ ~1 ~ 0.25 0.25 0.25 0 10 normal
execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta run playsound entity.villager.death record @a ~ ~ ~ 1 1.3
execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_3] run summon item_display 131.5 -39.2 27.5 {item_display:"gui",Rotation:[170F,0F],Tags:["wrong_gate","wrong_gate_3"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}
execute if score random_gate01 Timer matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ cyan_glazed_terracotta run function traps:files/_player_die

##If gate 3 kill in gate 1/2




execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta run particle angry_villager ~ ~1 ~ 0.25 0.25 0.25 0 10 normal
execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta run playsound entity.villager.death record @a ~ ~ ~ 1 1.3
execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_1] run summon item_display 136.7 -39.2 24.2 {item_display:"gui",Rotation:[135F,0F],Tags:["wrong_gate","wrong_gate_1"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}
execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ gray_glazed_terracotta run function traps:files/_player_die

execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta run particle angry_villager ~ ~1 ~ 0.25 0.25 0.25 0 10 normal
execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta run playsound entity.villager.death record @a ~ ~ ~ 1 1.3
execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta unless entity @e[tag=!recorder,tag=wrong_gate_2] run summon item_display 133.8 -39.2 26.0 {item_display:"gui",Rotation:[145F,0F],Tags:["wrong_gate","wrong_gate_2"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:barrier",Count:1b}}
execute if score random_gate01 Timer matches 3 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-2 ~ light_gray_glazed_terracotta run function traps:files/_player_die

##Show the killers what is the selected one

execute if score random_gate01 Timer matches 1 run particle dust 0.812 0.137 0.09 1 136.47 -36.0 24.50 0.25 1 0.25 0 30 normal @a[tag=!recorder,tag=killer]
execute if score random_gate01 Timer matches 2 run particle dust 0.067 0.4 0.902 1 133.97 -36.0 26.00 0.25 1 0.25 0 30 normal @a[tag=!recorder,tag=killer]
execute if score random_gate01 Timer matches 3 run particle dust 0.588 0.961 0.098 1 130.96 -36.0 26.15 0.25 1 0.25 0 30 normal @a[tag=!recorder,tag=killer]
