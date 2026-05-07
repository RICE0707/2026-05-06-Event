##
 # 02_.mcfunction
 # 
 #
 # Created by .
##
##Start Loop
scoreboard players set loop_02 loop_trap 1
scoreboard players add lopty_timer Timer 1

##Play the animation
execute if score lopty_timer Timer matches 1 run clone 75 -64 -33 63 -55 -22 69 -45 13
execute if score lopty_timer Timer matches 1 run playsound minecraft:entity.player.attack.sweep record @a 76.00 -35.14 18.97 1 0.8
execute if score lopty_timer Timer matches 1 run particle sweep_attack 74.51 -42.59 18.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 2 run clone 89 -64 -33 77 -55 -22 69 -45 13
execute if score lopty_timer Timer matches 2 run particle sweep_attack 77.52 -42.52 18.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 3 run clone 103 -64 -33 91 -55 -22 69 -45 13
execute if score lopty_timer Timer matches 3 run particle sweep_attack 79.52 -40.52 18.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 4 run clone 75 -64 -20 63 -55 -9 69 -45 13
execute if score lopty_timer Timer matches 4 run particle sweep_attack 79.54 -38.54 19.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 5 run clone 89 -64 -20 77 -55 -9 69 -45 13
execute if score lopty_timer Timer matches 5 run playsound minecraft:entity.player.attack.sweep record @a 80.50 -37.00 19.36 1 1.4
execute if score lopty_timer Timer matches 5 run particle sweep_attack 79.52 -38.59 19.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 6 run clone 103 -64 -20 91 -55 -9 69 -45 13
execute if score lopty_timer Timer matches 6 run particle sweep_attack 80.53 -37.50 18.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 7 run clone 75 -64 -7 63 -55 4 69 -45 13
execute if score lopty_timer Timer matches 7 run particle sweep_attack 79.69 -37.50 18.54 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 8 run clone 89 -64 -7 77 -55 4 69 -45 13
execute if score lopty_timer Timer matches 8 run particle sweep_attack 76.69 -36.52 18.68 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 8 run playsound minecraft:entity.player.attack.sweep record @a 76.00 -35.14 18.97 1 2
execute if score lopty_timer Timer matches 9 run clone 103 -64 -7 91 -55 4 69 -45 13
execute if score lopty_timer Timer matches 9 run particle sweep_attack 72.54 -36.51 18.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 10 run clone 75 -64 6 63 -55 17 69 -45 13
execute if score lopty_timer Timer matches 10 run particle sweep_attack 71.53 -36.48 18.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 11 run clone 89 -64 6 77 -55 17 69 -45 13
execute if score lopty_timer Timer matches 11 run particle sweep_attack 71.50 -37.51 18.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 12 run clone 103 -64 6 91 -55 17 69 -45 13
execute if score lopty_timer Timer matches 12 run particle sweep_attack 71.53 -37.44 18.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 13 run clone 75 -64 19 63 -55 30 69 -45 13
execute if score lopty_timer Timer matches 13 run playsound minecraft:entity.player.attack.sweep record @a 70.00 -41 19.00 1 1.4
execute if score lopty_timer Timer matches 13 run particle sweep_attack 70.50 -40.61 18.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 14 run clone 89 -64 19 77 -55 30 69 -45 13
execute if score lopty_timer Timer matches 14 run particle sweep_attack 71.50 -41.49 18.69 0.5 0.5 2 1 3
execute if score lopty_timer Timer matches 15 run clone 75 -64 -33 63 -55 -22 69 -45 13
execute if score lopty_timer Timer matches 15 run particle sweep_attack 74.43 -42.47 18.69 0.5 0.5 2 1 3

##Count amount of Loops taken and reset
execute if score lopty_timer Timer matches 15.. run scoreboard players add lopty_timer_count Timer 1
execute if score lopty_timer Timer matches 15.. run scoreboard players set lopty_timer Timer 0

##When looped 10 times break the loop
execute if score lopty_timer_count Timer matches 10.. run clone 75 -64 -33 63 -55 -22 69 -45 13
execute if score lopty_timer_count Timer matches 10.. run scoreboard players set lopty_timer Timer 1
execute if score lopty_timer_count Timer matches 10.. run scoreboard players set loop_02 loop_trap 0
execute if score lopty_timer_count Timer matches 10.. run scoreboard players set lopty_timer_count Timer 0

##Check for collisions
execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~ ~ structure_void run particle electric_spark ~ ~1 ~ 0.3 0.3 0.3 1 30 normal
execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~ ~ structure_void run function traps:files/_player_die
execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~ ~ black_concrete run particle electric_spark ~ ~1 ~ 0.3 0.3 0.3 1 30 normal
execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~ ~ black_concrete run function traps:files/_player_die



  ##Backup in order
##clone 75 -64 -33 63 -55 -22 69 -45 13
##clone 89 -64 -33 77 -55 -22 69 -45 13
##clone 103 -64 -33 91 -55 -22 69 -45 13
##clone 75 -64 -20 63 -55 -9 69 -45 13
##clone 89 -64 -20 77 -55 -9 69 -45 13
##clone 103 -64 -20 91 -55 -9 69 -45 13
##clone 75 -64 -7 63 -55 4 69 -45 13
##clone 89 -64 -7 77 -55 4 69 -45 13
##clone 103 -64 -7 91 -55 4 69 -45 13
##clone 75 -64 6 63 -55 17 69 -45 13
##clone 75 -64 6 63 -55 17 69 -45 13
##clone 103 -64 6 91 -55 17 69 -45 13
##clone 75 -64 19 63 -55 30 69 -45 13
##clone 89 -64 19 77 -55 30 69 -45 13
##clone 75 -64 -33 63 -55 -22 69 -45 13
scoreboard players set trap_02 trap_activated 1