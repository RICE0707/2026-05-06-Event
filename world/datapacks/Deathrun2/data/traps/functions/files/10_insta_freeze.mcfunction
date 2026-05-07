##
 # 10_.mcfunction
 # 
 #
 # Created by .
##
##Make the trap keep looping
scoreboard players set loop_10 loop_trap 1
scoreboard players set trap_10 trap_activated 1
##start the loop timer & if finished, stop animation and break the loop
scoreboard players add insta_freeze_timer Timer 1
execute if score insta_freeze_timer Timer matches 20.. run scoreboard players set loop_10 loop_trap 0
execute if score insta_freeze_timer Timer matches 20.. run scoreboard players set insta_freeze_timer Timer 0

##An animation based on the insta_freeze_timer score Timer, + additional effects, like splash and water sounds
execute if score insta_freeze_timer Timer matches 1 run clone 99 -64 67 90 -55 80 90 -44 67

execute if score insta_freeze_timer Timer matches 3 run fill 93 -38 70 98 -38 70 air destroy
execute if score insta_freeze_timer Timer matches 3 run setblock 94 -40 70 air destroy
execute if score insta_freeze_timer Timer matches 3 run setblock 98 -38 71 air destroy
execute if score insta_freeze_timer Timer matches 3 run clone 110 -64 67 101 -55 80 90 -44 67
execute if score insta_freeze_timer Timer matches 3 run particle splash 95.50 -37.31 71.51 1.2 0 0.3 1 1
execute if score insta_freeze_timer Timer matches 3 run playsound item.bucket.empty record @a 95.50 -37.31 71.52 2 0.8

execute if score insta_freeze_timer Timer matches 5 run fill 92 -39 70 98 -39 70 air destroy
execute if score insta_freeze_timer Timer matches 5 run clone 121 -64 67 112 -55 80 90 -44 67
execute if score insta_freeze_timer Timer matches 5 run particle splash 95.51 -37.49 72.31 1.2 0 0.3 1 1
execute if score insta_freeze_timer Timer matches 5 run playsound item.bucket.empty record @a 95.51 -37.49 72.32 2 0.9

execute if score insta_freeze_timer Timer matches 7 run fill 98 -40 70 92 -38 70 air destroy
execute if score insta_freeze_timer Timer matches 7 run clone 132 -64 67 123 -55 80 90 -44 67
execute if score insta_freeze_timer Timer matches 7 run particle splash 95.31 -37.50 74.49 1.2 0 0.3 1 1
execute if score insta_freeze_timer Timer matches 7 run playsound item.bucket.empty record @a 95.31 -37.50 74.42 2 1.2

execute if score insta_freeze_timer Timer matches 9 run clone 143 -64 67 134 -55 80 90 -44 67
execute if score insta_freeze_timer Timer matches 9 run particle splash 94.5 -37.5 75.5 1.2 0 0.3 1 1
execute if score insta_freeze_timer Timer matches 9 run playsound item.bucket.empty record @a 94.5 -37.5 75.5 2 1.3

execute if score insta_freeze_timer Timer matches 11 run clone 143 -64 52 134 -55 65 90 -44 67
execute if score insta_freeze_timer Timer matches 11 run particle splash 94.49 -37.14 78.31 1.2 0 0.3 1 1
execute if score insta_freeze_timer Timer matches 11 run playsound item.bucket.empty record @a 94.49 -37.14 78.32 2 1.4

execute if score insta_freeze_timer Timer matches 13 run clone 132 -64 52 123 -55 65 90 -44 67
execute if score insta_freeze_timer Timer matches 13 run particle splash 94.49 -37.14 78.31 1.2 0 0.3 1 1
execute if score insta_freeze_timer Timer matches 13 run playsound item.bucket.empty record @a 94.49 -37.14 78.32 2 1.5

execute if score insta_freeze_timer Timer matches 15 run clone 121 -64 52 112 -55 65 90 -44 67
execute if score insta_freeze_timer Timer matches 15 run particle splash 94.49 -38.50 77.69 1.2 0 0.3 1 1
execute if score insta_freeze_timer Timer matches 15 run playsound item.bucket.empty record @a 94.49 -38.50 77.62 2 1.6

execute if score insta_freeze_timer Timer matches 17 run clone 110 -64 52 101 -55 65 90 -44 67
execute if score insta_freeze_timer Timer matches 17 run particle splash 96.37 -39.69 78.54 1.2 0 0.3 1 1
execute if score insta_freeze_timer Timer matches 17 run playsound item.bucket.empty record @a 96.37 -39.69 78.52 2 1.4

execute if score insta_freeze_timer Timer matches 19 run clone 99 -64 52 90 -55 65 90 -44 67
execute if score insta_freeze_timer Timer matches 19 run particle splash 95.98 -40.70 78.97 1.2 0 0.3 1 1
execute if score insta_freeze_timer Timer matches 19 run playsound item.bucket.empty record @a 95.98 -40.70 78.92 2 1.1


