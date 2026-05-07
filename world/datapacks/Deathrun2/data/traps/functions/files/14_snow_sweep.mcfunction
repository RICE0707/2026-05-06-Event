##
 # 14_snow_sweep.mcfunction
 # 
 #
 # Created by Lifeely.
##
##Start Loop
scoreboard players set loop_14 loop_trap 1
scoreboard players add snow_sweep_timer Timer 1

##Make some particle and sounds when trap active
execute if score snow_sweep_timer Timer matches 1.. run execute as @e[tag=!recorder,tag=snow_shovel_l] at @s run particle snowflake ~ ~-0.5 ~2 1.25 0 1.25 0 10 normal
execute if score snow_sweep_timer Timer matches 1.. run execute as @e[tag=!recorder,tag=snow_shovel_r] at @s run particle snowflake ~ ~-0.5 ~-2 1.25 0 1.25 0 10 normal
execute if score snow_sweep_timer Timer matches 1..8 run execute as @e[tag=!recorder,tag=snow_shovel] at @s run playsound block.snow.break record @a ~ ~ ~ 1.5 0.7
execute if score snow_sweep_timer Timer matches 10..17 run execute as @e[tag=!recorder,tag=snow_shovel] at @s run playsound block.snow.break record @a ~ ~ ~ 1.5 1.2

##When player inside the trap are give him tag and teleport towards middle
execute if score snow_sweep_timer Timer matches 1..8 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-3 ~ white_glazed_terracotta run tag @s add snow_sweeped
execute if score snow_sweep_timer Timer matches 1..8 run execute as @a[tag=!recorder,tag=snow_sweeped,tag=runner] at @s run teleport @s ^ ^ ^0.5 facing 76.00 -40.25 125.50
##Shovel animation in
execute if score snow_sweep_timer Timer matches 1..8 run execute as @e[tag=!recorder,tag=snow_shovel_l] at @s run teleport @s ~ ~ ~0.50
execute if score snow_sweep_timer Timer matches 1..8 run execute as @e[tag=!recorder,tag=snow_shovel_r] at @s run teleport @s ~ ~ ~-0.50
##Shovel animation out
execute if score snow_sweep_timer Timer matches 10..17 run execute as @e[tag=!recorder,tag=snow_shovel_l] at @s run teleport @s ~ ~ ~-0.50
execute if score snow_sweep_timer Timer matches 10..17 run execute as @e[tag=!recorder,tag=snow_shovel_r] at @s run teleport @s ~ ~ ~0.50

##When player in middle and the snow_pile is big, then kill players that have this tag
execute if score snow_sweep_timer Timer matches 8.. run execute as @a[tag=!recorder,tag=snow_sweeped,tag=runner] at @s run function traps:files/_player_freeze
execute if score snow_sweep_timer Timer matches 8.. run execute as @a[tag=!recorder,tag=snow_sweeped,tag=runner] at @s run tag @s remove snow_sweeped

##The terrain animation
execute if score snow_sweep_timer Timer matches 3 run clone 78 -58 120 83 -53 130 73 -43 120
execute if score snow_sweep_timer Timer matches 5 run clone 78 -53 132 83 -58 142 73 -43 120
execute if score snow_sweep_timer Timer matches 7 run clone 71 -53 132 76 -58 142 73 -43 120

scoreboard players set trap_14 trap_activated 1

execute if score snow_sweep_timer Timer matches 17.. run scoreboard players set loop_14 loop_trap 0
execute if score snow_sweep_timer Timer matches 17.. run scoreboard players set snow_sweep_timer Timer 0