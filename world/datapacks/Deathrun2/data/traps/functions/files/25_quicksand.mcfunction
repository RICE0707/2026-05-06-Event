##
 # 25_.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set loop_25 loop_trap 1
scoreboard players add quicksand Timer 1


execute as @a[tag=!recorder,tag=runner,tag=!quicksand] at @s run execute if block ~ ~-2 ~ suspicious_sand run teleport @s ~ -41.0 ~ ~ ~
execute as @a[tag=!recorder,tag=runner,tag=!quicksand] at @s run execute if block ~ ~-1 ~ suspicious_sand run tag @s add quicksand

execute as @e[tag=!recorder,tag=quicksand_particles] at @s run particle block suspicious_sand ~ ~-0.1 ~ 2 0 2 0 10 normal

scoreboard players set trap_25 trap_activated 1

execute if score quicksand Timer matches 100.. run scoreboard players set loop_25 loop_trap 0
execute if score quicksand Timer matches 100.. run scoreboard players set quicksand Timer 0