##
 # 36_.mcfunction
 # 
 #
 # Created by .
##

##Start the loop
scoreboard players set loop_36 loop_trap 1
scoreboard players set trap_36 trap_activated 1
##Animation timer loop
scoreboard players add wall_blades_loop Timer 1

execute if score wall_blades_loop Timer matches 2.. run scoreboard players add wall_blades_loopt Timer 1
execute if score wall_blades_loop Timer matches 2.. run scoreboard players set wall_blades_loop Timer 0

execute if score wall_blades_loopt Timer matches 34.. run scoreboard players set loop_36 loop_trap 0
execute if score wall_blades_loopt Timer matches 34.. run scoreboard players set wall_blades_loop Timer 0
execute if score wall_blades_loopt Timer matches 34.. run scoreboard players set wall_blades_loopt Timer 0

##Kill the player when touchet the blade
execute as @a[tag=!recorder,tag=runner] at @s if entity @s[x=194,y=-36,z=75,distance=..15,tag=!killed_by_blades] if block ~ ~ ~ structure_void run function traps:files/_player_die
execute as @a[tag=!recorder,tag=runner] at @s if entity @s[x=194,y=-36,z=75,distance=..15,tag=!killed_by_blades] if block ~ ~ ~ structure_void run tag @s add killed_by_blades
execute as @a[tag=!recorder,tag=runner] at @s if entity @s[x=194,y=-36,z=75,distance=..15,tag=!killed_by_blades] if block ~ ~1 ~ structure_void run function traps:files/_player_die
execute as @a[tag=!recorder,tag=runner] at @s if entity @s[x=194,y=-36,z=75,distance=..15,tag=!killed_by_blades] if block ~ ~1 ~ structure_void run tag @s add killed_by_blades
execute as @a[tag=!recorder,tag=runner] at @s if entity @s[x=194,y=-36,z=75,distance=..15,tag=!killed_by_blades] if block ~ ~ ~ iron_trapdoor run function traps:files/_player_die
execute as @a[tag=!recorder,tag=runner] at @s if entity @s[x=194,y=-36,z=75,distance=..15,tag=!killed_by_blades] if block ~ ~ ~ iron_trapdoor run tag @s add killed_by_blades
execute as @a[tag=!recorder,tag=runner] at @s if entity @s[x=194,y=-36,z=75,distance=..15,tag=!killed_by_blades] if block ~ ~1 ~ iron_trapdoor run function traps:files/_player_die
execute as @a[tag=!recorder,tag=runner] at @s if entity @s[x=194,y=-36,z=75,distance=..15,tag=!killed_by_blades] if block ~ ~1 ~ iron_trapdoor run tag @s add killed_by_blades

##Blades animation
execute if score wall_blades_loopt Timer matches 1 run clone 190 -55 74 190 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 2 run clone 192 -55 74 192 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 3 run clone 194 -55 74 194 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 4 run clone 196 -55 74 196 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 5 run clone 198 -55 74 198 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 6 run clone 200 -55 74 200 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 7 run clone 202 -55 74 202 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 8 run clone 200 -55 74 200 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 9 run clone 198 -55 74 198 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 10 run clone 196 -55 74 196 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 11 run clone 194 -55 74 194 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 12 run clone 192 -55 74 192 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 13 run clone 194 -55 74 194 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 14 run clone 196 -55 74 196 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 15 run clone 198 -55 74 198 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 16 run clone 200 -55 74 200 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 17 run clone 202 -55 74 202 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 18 run clone 200 -55 74 200 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 19 run clone 198 -55 74 198 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 20 run clone 196 -55 74 196 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 21 run clone 194 -55 74 194 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 22 run clone 192 -55 74 192 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 23 run clone 194 -55 74 194 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 24 run clone 196 -55 74 196 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 25 run clone 198 -55 74 198 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 26 run clone 200 -55 74 200 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 27 run clone 202 -55 74 202 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 28 run clone 200 -55 74 200 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 29 run clone 198 -55 74 198 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 30 run clone 196 -55 74 196 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 31 run clone 194 -55 74 194 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 32 run clone 192 -55 74 192 -52 79 200 -40 74 
execute if score wall_blades_loopt Timer matches 33 run clone 190 -55 74 190 -52 79 200 -40 74 

execute if score wall_blades_loopt Timer matches 1 run clone 190 -55 74 190 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 2 run clone 192 -55 74 192 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 3 run clone 194 -55 74 194 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 4 run clone 196 -55 74 196 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 5 run clone 198 -55 74 198 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 6 run clone 200 -55 74 200 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 7 run clone 202 -55 74 202 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 8 run clone 200 -55 74 200 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 9 run clone 198 -55 74 198 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 10 run clone 196 -55 74 196 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 11 run clone 194 -55 74 194 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 12 run clone 192 -55 74 192 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 13 run clone 194 -55 74 194 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 14 run clone 196 -55 74 196 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 15 run clone 198 -55 74 198 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 16 run clone 200 -55 74 200 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 17 run clone 202 -55 74 202 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 18 run clone 200 -55 74 200 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 19 run clone 198 -55 74 198 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 20 run clone 196 -55 74 196 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 21 run clone 194 -55 74 194 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 22 run clone 192 -55 74 192 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 23 run clone 194 -55 74 194 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 24 run clone 196 -55 74 196 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 25 run clone 198 -55 74 198 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 26 run clone 200 -55 74 200 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 27 run clone 202 -55 74 202 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 28 run clone 200 -55 74 200 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 29 run clone 198 -55 74 198 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 30 run clone 196 -55 74 196 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 31 run clone 194 -55 74 194 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 32 run clone 192 -55 74 192 -52 79 198 -40 74 
execute if score wall_blades_loopt Timer matches 33 run clone 190 -55 74 190 -52 79 198 -40 74 

execute if score wall_blades_loopt Timer matches 1 run clone 190 -55 74 190 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 2 run clone 192 -55 74 192 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 3 run clone 194 -55 74 194 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 4 run clone 196 -55 74 196 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 5 run clone 198 -55 74 198 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 6 run clone 200 -55 74 200 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 7 run clone 202 -55 74 202 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 8 run clone 200 -55 74 200 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 9 run clone 198 -55 74 198 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 10 run clone 196 -55 74 196 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 11 run clone 194 -55 74 194 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 12 run clone 192 -55 74 192 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 13 run clone 194 -55 74 194 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 14 run clone 196 -55 74 196 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 15 run clone 198 -55 74 198 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 16 run clone 200 -55 74 200 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 17 run clone 202 -55 74 202 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 18 run clone 200 -55 74 200 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 19 run clone 198 -55 74 198 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 20 run clone 196 -55 74 196 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 21 run clone 194 -55 74 194 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 22 run clone 192 -55 74 192 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 23 run clone 194 -55 74 194 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 24 run clone 196 -55 74 196 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 25 run clone 198 -55 74 198 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 26 run clone 200 -55 74 200 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 27 run clone 202 -55 74 202 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 28 run clone 200 -55 74 200 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 29 run clone 198 -55 74 198 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 30 run clone 196 -55 74 196 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 31 run clone 194 -55 74 194 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 32 run clone 192 -55 74 192 -52 79 196 -40 74 
execute if score wall_blades_loopt Timer matches 33 run clone 190 -55 74 190 -52 79 196 -40 74 

execute if score wall_blades_loopt Timer matches 1 run clone 190 -55 74 190 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 2 run clone 192 -55 74 192 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 3 run clone 194 -55 74 194 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 4 run clone 196 -55 74 196 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 5 run clone 198 -55 74 198 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 6 run clone 200 -55 74 200 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 7 run clone 202 -55 74 202 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 8 run clone 200 -55 74 200 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 9 run clone 198 -55 74 198 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 10 run clone 196 -55 74 196 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 11 run clone 194 -55 74 194 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 12 run clone 192 -55 74 192 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 13 run clone 194 -55 74 194 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 14 run clone 196 -55 74 196 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 15 run clone 198 -55 74 198 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 16 run clone 200 -55 74 200 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 17 run clone 202 -55 74 202 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 18 run clone 200 -55 74 200 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 19 run clone 198 -55 74 198 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 20 run clone 196 -55 74 196 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 21 run clone 194 -55 74 194 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 22 run clone 192 -55 74 192 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 23 run clone 194 -55 74 194 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 24 run clone 196 -55 74 196 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 25 run clone 198 -55 74 198 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 26 run clone 200 -55 74 200 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 27 run clone 202 -55 74 202 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 28 run clone 200 -55 74 200 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 29 run clone 198 -55 74 198 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 30 run clone 196 -55 74 196 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 31 run clone 194 -55 74 194 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 32 run clone 192 -55 74 192 -52 79 194 -40 74 
execute if score wall_blades_loopt Timer matches 33 run clone 190 -55 74 190 -52 79 194 -40 74 

execute if score wall_blades_loopt Timer matches 1 run clone 190 -55 74 190 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 2 run clone 192 -55 74 192 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 3 run clone 194 -55 74 194 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 4 run clone 196 -55 74 196 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 5 run clone 198 -55 74 198 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 6 run clone 200 -55 74 200 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 7 run clone 202 -55 74 202 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 8 run clone 200 -55 74 200 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 9 run clone 198 -55 74 198 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 10 run clone 196 -55 74 196 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 11 run clone 194 -55 74 194 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 12 run clone 192 -55 74 192 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 13 run clone 194 -55 74 194 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 14 run clone 196 -55 74 196 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 15 run clone 198 -55 74 198 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 16 run clone 200 -55 74 200 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 17 run clone 202 -55 74 202 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 18 run clone 200 -55 74 200 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 19 run clone 198 -55 74 198 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 20 run clone 196 -55 74 196 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 21 run clone 194 -55 74 194 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 22 run clone 192 -55 74 192 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 23 run clone 194 -55 74 194 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 24 run clone 196 -55 74 196 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 25 run clone 198 -55 74 198 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 26 run clone 200 -55 74 200 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 27 run clone 202 -55 74 202 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 28 run clone 200 -55 74 200 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 29 run clone 198 -55 74 198 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 30 run clone 196 -55 74 196 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 31 run clone 194 -55 74 194 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 32 run clone 192 -55 74 192 -52 79 192 -40 74 
execute if score wall_blades_loopt Timer matches 33 run clone 190 -55 74 190 -52 79 192 -40 74 

execute if score wall_blades_loopt Timer matches 1 run clone 190 -55 74 190 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 2 run clone 192 -55 74 192 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 3 run clone 194 -55 74 194 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 4 run clone 196 -55 74 196 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 5 run clone 198 -55 74 198 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 6 run clone 200 -55 74 200 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 7 run clone 202 -55 74 202 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 8 run clone 200 -55 74 200 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 9 run clone 198 -55 74 198 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 10 run clone 196 -55 74 196 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 11 run clone 194 -55 74 194 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 12 run clone 192 -55 74 192 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 13 run clone 194 -55 74 194 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 14 run clone 196 -55 74 196 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 15 run clone 198 -55 74 198 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 16 run clone 200 -55 74 200 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 17 run clone 202 -55 74 202 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 18 run clone 200 -55 74 200 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 19 run clone 198 -55 74 198 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 20 run clone 196 -55 74 196 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 21 run clone 194 -55 74 194 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 22 run clone 192 -55 74 192 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 23 run clone 194 -55 74 194 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 24 run clone 196 -55 74 196 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 25 run clone 198 -55 74 198 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 26 run clone 200 -55 74 200 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 27 run clone 202 -55 74 202 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 28 run clone 200 -55 74 200 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 29 run clone 198 -55 74 198 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 30 run clone 196 -55 74 196 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 31 run clone 194 -55 74 194 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 32 run clone 192 -55 74 192 -52 79 190 -40 74 
execute if score wall_blades_loopt Timer matches 33 run clone 190 -55 74 190 -52 79 190 -40 74 

execute if score wall_blades_loopt Timer matches 1 run clone 190 -55 74 190 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 2 run clone 192 -55 74 192 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 3 run clone 194 -55 74 194 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 4 run clone 196 -55 74 196 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 5 run clone 198 -55 74 198 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 6 run clone 200 -55 74 200 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 7 run clone 202 -55 74 202 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 8 run clone 200 -55 74 200 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 9 run clone 198 -55 74 198 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 10 run clone 196 -55 74 196 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 11 run clone 194 -55 74 194 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 12 run clone 192 -55 74 192 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 13 run clone 194 -55 74 194 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 14 run clone 196 -55 74 196 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 15 run clone 198 -55 74 198 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 16 run clone 200 -55 74 200 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 17 run clone 202 -55 74 202 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 18 run clone 200 -55 74 200 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 19 run clone 198 -55 74 198 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 20 run clone 196 -55 74 196 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 21 run clone 194 -55 74 194 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 22 run clone 192 -55 74 192 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 23 run clone 194 -55 74 194 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 24 run clone 196 -55 74 196 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 25 run clone 198 -55 74 198 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 26 run clone 200 -55 74 200 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 27 run clone 202 -55 74 202 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 28 run clone 200 -55 74 200 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 29 run clone 198 -55 74 198 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 30 run clone 196 -55 74 196 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 31 run clone 194 -55 74 194 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 32 run clone 192 -55 74 192 -52 79 188 -40 74 
execute if score wall_blades_loopt Timer matches 33 run clone 190 -55 74 190 -52 79 188 -40 74 










