##
 # 21_.mcfunction
 # 
 #
 # Created by .
##
##Start Loop
scoreboard players set loop_21 loop_trap 1
scoreboard players add swamp_toilet_timer Timer 1
scoreboard players set trap_21 trap_activated 1

execute if score swamp_toilet_timer Timer matches 1..10 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-3 ~ yellow_concrete run tag @s add swamp_toilet
execute if score swamp_toilet_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=swamp_toilet] at @s run execute unless entity @e[tag=!recorder,type=marker,tag=swamp_toilet_marker,distance=..1] run teleport @s ^0.2 ^0.1 ^0.4 facing entity @e[tag=!recorder,type=marker,tag=swamp_toilet_marker,limit=1]


execute if score swamp_toilet_timer Timer matches 20 run playsound minecraft:custom.fart01 record @a 164.67 -40.75 71.49 1 1.3
execute if score swamp_toilet_timer Timer matches 40 run playsound minecraft:custom.fart01 record @a 164.67 -40.75 71.49 1 0.9
execute if score swamp_toilet_timer Timer matches 40.. run particle dust 0.055 0.259 0.082 3 164.00 -38.69 72.00 0.5 1 0.5 0 3
execute if score swamp_toilet_timer Timer matches 58 run playsound minecraft:custom.fart01 record @a 164.67 -40.75 71.49 1 0.8
execute if score swamp_toilet_timer Timer matches 70 run playsound minecraft:custom.fart01 record @a 164.67 -40.75 71.49 1 1.1
execute if score swamp_toilet_timer Timer matches 75 run playsound minecraft:custom.fart01 record @a 164.67 -40.75 71.49 1 1.5
execute if score swamp_toilet_timer Timer matches 73 run playsound minecraft:custom.fart01 record @a 164.67 -40.75 71.49 1 1.2


execute if score swamp_toilet_timer Timer matches 100 run playsound minecraft:custom.fart01 record @a 164.67 -40.75 71.49 1 0.3
execute if score swamp_toilet_timer Timer matches 110 run particle explosion_emitter 164.00 -38.69 72.00 0 0 0 0 1
execute if score swamp_toilet_timer Timer matches 110 run playsound entity.generic.explode record @a 164.67 -40.75 71.49 3
execute if score swamp_toilet_timer Timer matches 110 run execute as @a[tag=!recorder,tag=swamp_toilet] at @s run function traps:files/_player_explode

execute if score swamp_toilet_timer Timer matches 110 run scoreboard players set loop_21 loop_trap 0
execute if score swamp_toilet_timer Timer matches 110 run scoreboard players set swamp_toilet_timer Timer 0

