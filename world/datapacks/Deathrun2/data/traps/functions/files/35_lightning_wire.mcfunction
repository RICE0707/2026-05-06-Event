##
 # 35_.mcfunction
 # 
 #
 # Created by .
##

##Start loop
scoreboard players set loop_35 loop_trap 1
scoreboard players add wire_timer Timer 1
scoreboard players set trap_35 trap_activated 1
##Summon lighting bolt at the beginning of the animation
execute if score wire_timer_count Timer matches 0 if score wire_timer Timer matches 1 run summon minecraft:lightning_bolt 215.52 -25.00 71.50

##Based on score of wire_timer make animation
execute if score wire_timer Timer matches 1 run clone 211 -56 73 209 -56 80 203 -37 73
execute if score wire_timer Timer matches 2 run clone 211 -56 73 210 -56 80 203 -37 73
execute if score wire_timer Timer matches 3 run clone 210 -56 73 210 -56 80 202 -38 73
execute if score wire_timer Timer matches 3 run clone 210 -55 73 210 -55 80 203 -37 73
execute if score wire_timer Timer matches 4 run clone 210 -56 73 210 -56 80 203 -39 73
execute if score wire_timer Timer matches 4 run clone 211 -55 73 211 -55 80 202 -38 73
execute if score wire_timer Timer matches 5 run clone 211 -56 73 209 -56 80 203 -39 73
execute if score wire_timer Timer matches 6 run clone 211 -56 73 209 -56 80 204 -39 73
execute if score wire_timer Timer matches 7 run clone 211 -56 73 209 -56 80 205 -39 73
execute if score wire_timer Timer matches 8 run clone 211 -56 73 209 -56 80 206 -39 73
execute if score wire_timer Timer matches 9 run clone 211 -56 73 209 -56 80 207 -39 73
execute if score wire_timer Timer matches 10 run clone 211 -56 73 209 -56 80 208 -39 73
execute if score wire_timer Timer matches 11 run clone 211 -56 73 209 -56 80 209 -39 73
execute if score wire_timer Timer matches 12 run clone 211 -56 73 209 -56 80 210 -39 73
execute if score wire_timer Timer matches 13 run clone 211 -56 73 209 -56 80 211 -39 73
execute if score wire_timer Timer matches 14 run clone 210 -56 73 209 -56 80 212 -39 73
execute if score wire_timer Timer matches 15 run clone 210 -55 73 210 -55 80 213 -39 73
execute if score wire_timer Timer matches 15 run clone 210 -56 73 210 -56 80 214 -38 73
execute if score wire_timer Timer matches 16 run clone 211 -55 73 211 -55 80 214 -38 73
execute if score wire_timer Timer matches 16 run clone 210 -56 73 210 -56 80 213 -37 73
execute if score wire_timer Timer matches 17 run clone 211 -56 73 209 -56 80 211 -37 73
execute if score wire_timer Timer matches 18 run clone 211 -56 73 209 -56 80 210 -37 73
execute if score wire_timer Timer matches 19 run clone 211 -56 73 209 -56 80 209 -37 73
execute if score wire_timer Timer matches 20 run clone 211 -56 73 209 -56 80 208 -37 73
execute if score wire_timer Timer matches 21 run clone 211 -56 73 209 -56 80 207 -37 73
execute if score wire_timer Timer matches 22 run clone 211 -56 73 209 -56 80 206 -37 73
execute if score wire_timer Timer matches 23 run clone 211 -56 73 209 -56 80 205 -37 73
execute if score wire_timer Timer matches 24 run clone 211 -56 73 209 -56 80 204 -37 73


##Electric particles
execute if score wire_timer Timer matches 1 run particle minecraft:electric_spark 204.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 2 run particle minecraft:electric_spark 203.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 3 run particle minecraft:electric_spark 202.50 -37.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 4 run particle minecraft:electric_spark 203.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 5 run particle minecraft:electric_spark 204.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 6 run particle minecraft:electric_spark 205.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 7 run particle minecraft:electric_spark 206.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 8 run particle minecraft:electric_spark 207.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 9 run particle minecraft:electric_spark 208.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 10 run particle minecraft:electric_spark 209.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 11 run particle minecraft:electric_spark 210.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 12 run particle minecraft:electric_spark 211.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 13 run particle minecraft:electric_spark 212.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 14 run particle minecraft:electric_spark 213.50 -38.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 15 run particle minecraft:electric_spark 214.50 -37.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 16 run particle minecraft:electric_spark 213.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 17 run particle minecraft:electric_spark 212.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 18 run particle minecraft:electric_spark 211.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 19 run particle minecraft:electric_spark 210.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 20 run particle minecraft:electric_spark 209.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 21 run particle minecraft:electric_spark 208.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 22 run particle minecraft:electric_spark 207.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 23 run particle minecraft:electric_spark 206.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal
execute if score wire_timer Timer matches 24 run particle minecraft:electric_spark 205.50 -36.50 77.00 0.05 0.001 1.25 0 40 normal

##GrindStone particles
particle block grindstone 202.64 -36.52 73.90 0.1 0.1 0.01 2 2
particle block grindstone 214.37 -36.52 73.90 0.1 0.1 0.01 2 2
particle block grindstone 202.64 -38.52 73.90 0.1 0.1 0.01 2 2
particle block grindstone 214.37 -38.52 73.90 0.1 0.1 0.01 2 2

particle block grindstone 202.64 -36.52 80.1 0.1 0.1 0.01 2 2
particle block grindstone 214.37 -36.52 80.1 0.1 0.1 0.01 2 2
particle block grindstone 202.64 -38.52 80.1 0.1 0.1 0.01 2 2
particle block grindstone 214.37 -38.52 80.1 0.1 0.1 0.01 2 2

##Grindstone Sounds
playsound block.grindstone.use record @a 214 -37 73 0.6 2
playsound block.grindstone.use record @a 214 -39 73 0.6 2
playsound block.grindstone.use record @a 214 -37 79 0.6 2
playsound block.grindstone.use record @a 214 -39 79 0.6 2
playsound block.grindstone.use record @a 202 -37 73 0.6 2
playsound block.grindstone.use record @a 202 -39 73 0.6 2
playsound block.grindstone.use record @a 202 -37 79 0.6 2
playsound block.grindstone.use record @a 202 -39 79 0.6 2

execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[tag=!recorder,x=208,y=-40,z=76,distance=..20,tag=!lighting_died] if block ~ ~ ~ structure_void run function traps:files/_player_die
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[tag=!recorder,x=208,y=-40,z=76,distance=..20,tag=!lighting_died] if block ~ ~ ~ structure_void run tag @s add lighting_died
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[tag=!recorder,x=208,y=-40,z=76,distance=..20,tag=!lighting_died] if block ~ ~1 ~ structure_void run function traps:files/_player_die
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[tag=!recorder,x=208,y=-40,z=76,distance=..20,tag=!lighting_died] if block ~ ~1 ~ structure_void run tag @s add lighting_died
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[tag=!recorder,x=208,y=-40,z=76,distance=..20,tag=!lighting_died] if block ~ ~ ~ lightning_rod run function traps:files/_player_die
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[tag=!recorder,x=208,y=-40,z=76,distance=..20,tag=!lighting_died] if block ~ ~ ~ lightning_rod run tag @s add lighting_died
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[tag=!recorder,x=208,y=-40,z=76,distance=..20,tag=!lighting_died] if block ~ ~1 ~ lightning_rod run function traps:files/_player_die
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[tag=!recorder,x=208,y=-40,z=76,distance=..20,tag=!lighting_died] if block ~ ~1 ~ lightning_rod run tag @s add lighting_died

##Count amount of Loops taken and reset
execute if score wire_timer Timer matches 24.. run scoreboard players add wire_timer_count Timer 1
execute if score wire_timer Timer matches 24.. run scoreboard players set wire_timer Timer 0

##Break loop after trap finsihed
execute if score wire_timer_count Timer matches 5.. run scoreboard players set loop_35 loop_trap 0
execute if score wire_timer_count Timer matches 5.. run scoreboard players set wire_timer Timer 0
execute if score wire_timer_count Timer matches 5.. run scoreboard players set wire_timer_count Timer 0






##Default
## clone 211 -56 73 209 -56 80 204 -37 73




