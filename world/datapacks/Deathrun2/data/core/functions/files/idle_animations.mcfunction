##
 # idle_animations.mcfunction
 # 
 #
 # Created by .
##

######FALLING LOGS AT THE TRAP 28

##Start the loop with an slowdown scoreboard
scoreboard players add logs_idlet Timer 1
scoreboard players add plank_idle Timer 1
scoreboard players add starbar_idle Timer 1
execute if score starbar_idle Timer matches 84.. run scoreboard players set starbar_idle Timer 1
execute if score plank_idle Timer matches 141.. run scoreboard players set plank_idle Timer 1
execute if score logs_idlet Timer matches 4.. run scoreboard players add logs_idle Timer 1
execute if score logs_idlet Timer matches 4.. run scoreboard players set logs_idlet Timer 0
execute if score logs_idle Timer matches 36.. run scoreboard players set logs_idle Timer 0

##Star bar parkour to the star 1
#Forward
execute if score starbar_idle Timer matches 1 run clone 79 -60 153 84 -59 154 87 -43 140
execute if score starbar_idle Timer matches 4 run clone 80 -59 153 85 -60 154 87 -43 140
execute if score starbar_idle Timer matches 7 run clone 80 -59 153 85 -60 154 86 -43 140
execute if score starbar_idle Timer matches 10 run clone 80 -59 153 85 -60 154 85 -43 140
execute if score starbar_idle Timer matches 13 run clone 80 -59 153 85 -60 154 84 -43 140
execute if score starbar_idle Timer matches 16 run clone 80 -59 153 85 -60 154 83 -43 140
execute if score starbar_idle Timer matches 19 run clone 80 -59 153 85 -60 154 82 -43 140
execute if score starbar_idle Timer matches 22 run clone 80 -59 153 85 -60 154 81 -43 140
execute if score starbar_idle Timer matches 25 run clone 80 -59 153 85 -60 154 80 -43 140
execute if score starbar_idle Timer matches 28 run clone 80 -59 153 85 -60 154 79 -43 140
execute if score starbar_idle Timer matches 31 run clone 80 -59 153 85 -60 154 78 -43 140
execute if score starbar_idle Timer matches 34 run clone 80 -59 153 85 -60 154 77 -43 140

#Backwards
execute if score starbar_idle Timer matches 44 run clone 79 -60 153 84 -59 154 77 -43 140
execute if score starbar_idle Timer matches 47 run clone 79 -60 153 84 -59 154 78 -43 140
execute if score starbar_idle Timer matches 50 run clone 79 -60 153 84 -59 154 79 -43 140
execute if score starbar_idle Timer matches 53 run clone 79 -60 153 84 -59 154 80 -43 140
execute if score starbar_idle Timer matches 56 run clone 79 -60 153 84 -59 154 81 -43 140
execute if score starbar_idle Timer matches 59 run clone 79 -60 153 84 -59 154 82 -43 140
execute if score starbar_idle Timer matches 62 run clone 79 -60 153 84 -59 154 83 -43 140
execute if score starbar_idle Timer matches 65 run clone 79 -60 153 84 -59 154 84 -43 140
execute if score starbar_idle Timer matches 68 run clone 79 -60 153 84 -59 154 85 -43 140
execute if score starbar_idle Timer matches 71 run clone 79 -60 153 84 -59 154 86 -43 140
execute if score starbar_idle Timer matches 74 run clone 79 -60 153 84 -59 154 87 -43 140


##Star bar parkour to the star 2
#Forward
execute if score starbar_idle Timer matches 1 run clone 79 -60 152 84 -59 153 77 -43 147
execute if score starbar_idle Timer matches 4 run clone 79 -60 152 84 -59 153 78 -43 147
execute if score starbar_idle Timer matches 7 run clone 79 -60 152 84 -59 153 79 -43 147
execute if score starbar_idle Timer matches 10 run clone 79 -60 152 84 -59 153 80 -43 147
execute if score starbar_idle Timer matches 13 run clone 79 -60 152 84 -59 153 81 -43 147
execute if score starbar_idle Timer matches 16 run clone 79 -60 152 84 -59 153 82 -43 147
execute if score starbar_idle Timer matches 19 run clone 79 -60 152 84 -59 153 83 -43 147
execute if score starbar_idle Timer matches 22 run clone 79 -60 152 84 -59 153 84 -43 147
execute if score starbar_idle Timer matches 25 run clone 79 -60 152 84 -59 153 85 -43 147
execute if score starbar_idle Timer matches 28 run clone 79 -60 152 84 -59 153 86 -43 147
execute if score starbar_idle Timer matches 31 run clone 79 -60 152 84 -59 153 87 -43 147


#Backwards
execute if score starbar_idle Timer matches 44 run clone 85 -60 152 80 -59 153 87 -43 147
execute if score starbar_idle Timer matches 47 run clone 85 -60 152 80 -59 153 86 -43 147
execute if score starbar_idle Timer matches 50 run clone 85 -60 152 80 -59 153 85 -43 147
execute if score starbar_idle Timer matches 53 run clone 85 -60 152 80 -59 153 84 -43 147
execute if score starbar_idle Timer matches 56 run clone 85 -60 152 80 -59 153 83 -43 147
execute if score starbar_idle Timer matches 59 run clone 85 -60 152 80 -59 153 82 -43 147
execute if score starbar_idle Timer matches 62 run clone 85 -60 152 80 -59 153 81 -43 147
execute if score starbar_idle Timer matches 65 run clone 85 -60 152 80 -59 153 80 -43 147
execute if score starbar_idle Timer matches 68 run clone 85 -60 152 80 -59 153 79 -43 147
execute if score starbar_idle Timer matches 71 run clone 85 -60 152 80 -59 153 78 -43 147
execute if score starbar_idle Timer matches 74 run clone 85 -60 152 80 -59 153 77 -43 147

##1
##Play the animation of the left log (NoSpikes)
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 1 run clone 217 -58 -9 217 -58 -6 209 -32 -6
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 2 run clone 217 -58 -9 217 -58 -6 209 -32 -5
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 3 run clone 217 -58 -9 217 -58 -6 209 -32 -4
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 4 run clone 217 -58 -9 217 -58 -6 209 -32 -3
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 4 run clone 217 -58 -9 217 -58 -7 209 -32 -2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 6 run fill 209 -32 -2 209 -32 -1 air
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 6 run clone 217 -58 -2 217 -56 -1 209 -34 0
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 7 run setblock 209 -32 0 air
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 7 run clone 217 -58 -4 217 -55 -4 209 -35 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 8 run clone 217 -58 -4 217 -55 -4 209 -36 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 9 run clone 217 -58 -4 217 -55 -4 209 -37 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 10 run clone 217 -58 -4 217 -55 -4 209 -38 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 11 run clone 217 -58 -4 217 -55 -4 209 -39 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 12 run clone 217 -58 -4 217 -55 -4 209 -40 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 13 run clone 217 -58 -4 217 -55 -4 209 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 14 run clone 217 -58 1 217 -56 3 209 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 15 run clone 217 -58 -9 217 -57 -6 209 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 16 run clone 217 -58 -9 217 -57 -6 209 -41 2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 17 run clone 217 -58 -9 217 -57 -6 209 -41 3
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 18 run clone 217 -58 -9 217 -57 -6 209 -41 4
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 19 run clone 217 -58 -9 217 -57 -6 209 -41 5
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 20 run clone 217 -58 -9 217 -57 -6 209 -41 6
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 21 run clone 217 -58 -9 217 -57 -6 209 -41 7
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 22 run clone 217 -58 -9 217 -57 -6 209 -41 8
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 23 run clone 217 -58 -9 217 -57 -6 209 -41 9
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 24 run clone 217 -58 -9 217 -57 -6 209 -41 10

##Play the animation of the right log (NoSpikes)
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 1 run clone 217 -58 -9 217 -58 -6 219 -32 -6
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 2 run clone 217 -58 -9 217 -58 -6 219 -32 -5
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 3 run clone 217 -58 -9 217 -58 -6 219 -32 -4
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 4 run clone 217 -58 -9 217 -58 -6 219 -32 -3
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 4 run clone 217 -58 -9 217 -58 -7 219 -32 -2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 6 run fill 219 -32 -2 219 -32 -1 air
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 6 run clone 217 -58 -2 217 -56 -1 219 -34 0
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 7 run setblock 219 -32 0 air
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 7 run clone 217 -58 -4 217 -55 -4 219 -35 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 8 run clone 217 -58 -4 217 -55 -4 219 -36 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 9 run clone 217 -58 -4 217 -55 -4 219 -37 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 10 run clone 217 -58 -4 217 -55 -4 219 -38 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 11 run clone 217 -58 -4 217 -55 -4 219 -39 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 12 run clone 217 -58 -4 217 -55 -4 219 -40 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 13 run clone 217 -58 -4 217 -55 -4 219 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 14 run clone 217 -58 1 217 -56 3 219 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 15 run clone 217 -58 -9 217 -57 -6 219 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 16 run clone 217 -58 -9 217 -57 -6 219 -41 2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 17 run clone 217 -58 -9 217 -57 -6 219 -41 3
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 18 run clone 217 -58 -9 217 -57 -6 219 -41 4
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 19 run clone 217 -58 -9 217 -57 -6 219 -41 5
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 20 run clone 217 -58 -9 217 -57 -6 219 -41 6
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 21 run clone 217 -58 -9 217 -57 -6 219 -41 7
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 22 run clone 217 -58 -9 217 -57 -6 219 -41 8
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 23 run clone 217 -58 -9 217 -57 -6 219 -41 9
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 24 run clone 217 -58 -9 217 -57 -6 219 -41 10

##Breaking the logs at the end Right (NoSpikes)
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 25 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 25 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.0
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 25 run clone 217 -58 -9 217 -57 -7 219 -41 11
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 26 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 26 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 26 run clone 217 -58 -9 217 -57 -8 219 -41 12
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 27 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 27 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.5

##Breaking the logs at the end Left (NoSpikes)
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 25 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 25 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.0
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 25 run clone 217 -58 -9 217 -57 -7 209 -41 11
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 26 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 26 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 26 run clone 217 -58 -9 217 -57 -8 209 -41 12
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 27 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 27 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.5


##2
##Play the animation of the left log (NoSpikes)
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 10 run clone 217 -58 -9 217 -58 -6 209 -32 -6
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 11 run clone 217 -58 -9 217 -58 -6 209 -32 -5
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 12 run clone 217 -58 -9 217 -58 -6 209 -32 -4
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 13 run clone 217 -58 -9 217 -58 -6 209 -32 -3
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 13 run clone 217 -58 -9 217 -58 -7 209 -32 -2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 14 run fill 209 -32 -2 209 -32 -1 air
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 14 run clone 217 -58 -2 217 -56 -1 209 -34 0
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 15 run setblock 209 -32 0 air
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 15 run clone 217 -58 -4 217 -55 -4 209 -35 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 16 run clone 217 -58 -4 217 -55 -4 209 -36 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 17 run clone 217 -58 -4 217 -55 -4 209 -37 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 18 run clone 217 -58 -4 217 -55 -4 209 -38 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 19 run clone 217 -58 -4 217 -55 -4 209 -39 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 20 run clone 217 -58 -4 217 -55 -4 209 -40 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 21 run clone 217 -58 -4 217 -55 -4 209 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 22 run clone 217 -58 1 217 -56 3 209 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 23 run clone 217 -58 -9 217 -57 -6 209 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 24 run clone 217 -58 -9 217 -57 -6 209 -41 2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 25 run clone 217 -58 -9 217 -57 -6 209 -41 3
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 26 run clone 217 -58 -9 217 -57 -6 209 -41 4
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 27 run clone 217 -58 -9 217 -57 -6 209 -41 5
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 28 run clone 217 -58 -9 217 -57 -6 209 -41 6
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 29 run clone 217 -58 -9 217 -57 -6 209 -41 7
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 30 run clone 217 -58 -9 217 -57 -6 209 -41 8
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 31 run clone 217 -58 -9 217 -57 -6 209 -41 9
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 32 run clone 217 -58 -9 217 -57 -6 209 -41 10

##Play the animation of the right log (NoSpikes)
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 10 run clone 217 -58 -9 217 -58 -6 219 -32 -6
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 11 run clone 217 -58 -9 217 -58 -6 219 -32 -5
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 12 run clone 217 -58 -9 217 -58 -6 219 -32 -4
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 13 run clone 217 -58 -9 217 -58 -6 219 -32 -3
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 13 run clone 217 -58 -9 217 -58 -7 219 -32 -2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 14 run fill 219 -32 -2 219 -32 -1 air
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 14 run clone 217 -58 -2 217 -56 -1 219 -34 0
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 15 run setblock 219 -32 0 air
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 15 run clone 217 -58 -4 217 -55 -4 219 -35 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 16 run clone 217 -58 -4 217 -55 -4 219 -36 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 17 run clone 217 -58 -4 217 -55 -4 219 -37 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 18 run clone 217 -58 -4 217 -55 -4 219 -38 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 19 run clone 217 -58 -4 217 -55 -4 219 -39 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 20 run clone 217 -58 -4 217 -55 -4 219 -40 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 21 run clone 217 -58 -4 217 -55 -4 219 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 22 run clone 217 -58 1 217 -56 3 219 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 23 run clone 217 -58 -9 217 -57 -6 219 -41 1
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 24 run clone 217 -58 -9 217 -57 -6 219 -41 2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 25 run clone 217 -58 -9 217 -57 -6 219 -41 3
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 26 run clone 217 -58 -9 217 -57 -6 219 -41 4
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 27 run clone 217 -58 -9 217 -57 -6 219 -41 5
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 28 run clone 217 -58 -9 217 -57 -6 219 -41 6
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 29 run clone 217 -58 -9 217 -57 -6 219 -41 7
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 30 run clone 217 -58 -9 217 -57 -6 219 -41 8
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 31 run clone 217 -58 -9 217 -57 -6 219 -41 9
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 32 run clone 217 -58 -9 217 -57 -6 219 -41 10

##Breaking the logs at the end Right (NoSpikes)
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 33 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 33 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.0
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 33 run clone 217 -58 -9 217 -57 -7 219 -41 11
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 34 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 34 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 34 run clone 217 -58 -9 217 -57 -8 219 -41 12
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 35 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 35 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.5

##Breaking the logs at the end Left (NoSpikes)
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 33 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 33 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.0
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 33 run clone 217 -58 -9 217 -57 -7 209 -41 11
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 34 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 34 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.2
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 34 run clone 217 -58 -9 217 -57 -8 209 -41 12
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 35 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 0 if score logs_idle Timer matches 35 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.5




################################################



##1
##Play the animation of the left log (SpikesOn)
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 1 run clone 219 -58 -9 219 -58 -6 209 -32 -6
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 2 run clone 219 -58 -9 219 -58 -6 209 -32 -5
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 3 run clone 219 -58 -9 219 -58 -6 209 -32 -4
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 4 run clone 219 -58 -9 219 -58 -6 209 -32 -3
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 4 run clone 219 -58 -9 219 -58 -7 209 -32 -2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 6 run fill 209 -32 -2 209 -32 -1 air
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 6 run clone 219 -58 -2 219 -56 -1 209 -34 0
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 7 run setblock 209 -32 0 air
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 7 run clone 219 -58 -4 219 -55 -4 209 -35 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 8 run clone 219 -58 -4 219 -55 -4 209 -36 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 9 run clone 219 -58 -4 219 -55 -4 209 -37 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 10 run clone 219 -58 -4 219 -55 -4 209 -38 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 11 run clone 219 -58 -4 219 -55 -4 209 -39 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 12 run clone 219 -58 -4 219 -55 -4 209 -40 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 13 run clone 219 -58 -4 219 -55 -4 209 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 14 run clone 219 -58 1 219 -56 3 209 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 15 run clone 219 -58 -9 219 -57 -6 209 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 16 run clone 219 -58 -9 219 -57 -6 209 -41 2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 17 run clone 219 -58 -9 219 -57 -6 209 -41 3
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 18 run clone 219 -58 -9 219 -57 -6 209 -41 4
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 19 run clone 219 -58 -9 219 -57 -6 209 -41 5
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 20 run clone 219 -58 -9 219 -57 -6 209 -41 6
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 21 run clone 219 -58 -9 219 -57 -6 209 -41 7
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 22 run clone 219 -58 -9 219 -57 -6 209 -41 8
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 23 run clone 219 -58 -9 219 -57 -6 209 -41 9
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 24 run clone 219 -58 -9 219 -57 -6 209 -41 10

##Play the animation of the right log (SpikesOn)
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 1 run clone 219 -58 -9 219 -58 -6 219 -32 -6
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 2 run clone 219 -58 -9 219 -58 -6 219 -32 -5
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 3 run clone 219 -58 -9 219 -58 -6 219 -32 -4
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 4 run clone 219 -58 -9 219 -58 -6 219 -32 -3
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 4 run clone 219 -58 -9 219 -58 -7 219 -32 -2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 6 run fill 219 -32 -2 219 -32 -1 air
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 6 run clone 219 -58 -2 219 -56 -1 219 -34 0
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 7 run setblock 219 -32 0 air
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 7 run clone 219 -58 -4 219 -55 -4 219 -35 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 8 run clone 219 -58 -4 219 -55 -4 219 -36 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 9 run clone 219 -58 -4 219 -55 -4 219 -37 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 10 run clone 219 -58 -4 219 -55 -4 219 -38 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 11 run clone 219 -58 -4 219 -55 -4 219 -39 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 12 run clone 219 -58 -4 219 -55 -4 219 -40 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 13 run clone 219 -58 -4 219 -55 -4 219 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 14 run clone 219 -58 1 219 -56 3 219 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 15 run clone 219 -58 -9 219 -57 -6 219 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 16 run clone 219 -58 -9 219 -57 -6 219 -41 2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 17 run clone 219 -58 -9 219 -57 -6 219 -41 3
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 18 run clone 219 -58 -9 219 -57 -6 219 -41 4
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 19 run clone 219 -58 -9 219 -57 -6 219 -41 5
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 20 run clone 219 -58 -9 219 -57 -6 219 -41 6
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 21 run clone 219 -58 -9 219 -57 -6 219 -41 7
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 22 run clone 219 -58 -9 219 -57 -6 219 -41 8
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 23 run clone 219 -58 -9 219 -57 -6 219 -41 9
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 24 run clone 219 -58 -9 219 -57 -6 219 -41 10

##Breaking the logs at the end Right (SpikesOn)
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 25 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 25 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.0
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 25 run clone 219 -58 -9 219 -57 -7 219 -41 11
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 26 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 26 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 26 run clone 219 -58 -9 219 -57 -8 219 -41 12
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 27 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 27 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.5

##Breaking the logs at the end Left (SpikesOn)
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 25 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 25 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.0
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 25 run clone 219 -58 -9 219 -57 -7 209 -41 11
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 26 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 26 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 26 run clone 219 -58 -9 219 -57 -8 209 -41 12
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 27 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 27 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.5


##2
##Play the animation of the left log (SpikesOn)
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 10 run clone 219 -58 -9 219 -58 -6 209 -32 -6
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 11 run clone 219 -58 -9 219 -58 -6 209 -32 -5
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 12 run clone 219 -58 -9 219 -58 -6 209 -32 -4
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 13 run clone 219 -58 -9 219 -58 -6 209 -32 -3
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 13 run clone 219 -58 -9 219 -58 -7 209 -32 -2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 14 run fill 209 -32 -2 209 -32 -1 air
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 14 run clone 219 -58 -2 219 -56 -1 209 -34 0
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 15 run setblock 209 -32 0 air
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 15 run clone 219 -58 -4 219 -55 -4 209 -35 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 16 run clone 219 -58 -4 219 -55 -4 209 -36 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 17 run clone 219 -58 -4 219 -55 -4 209 -37 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 18 run clone 219 -58 -4 219 -55 -4 209 -38 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 19 run clone 219 -58 -4 219 -55 -4 209 -39 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 20 run clone 219 -58 -4 219 -55 -4 209 -40 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 21 run clone 219 -58 -4 219 -55 -4 209 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 22 run clone 219 -58 1 219 -56 3 209 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 23 run clone 219 -58 -9 219 -57 -6 209 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 24 run clone 219 -58 -9 219 -57 -6 209 -41 2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 25 run clone 219 -58 -9 219 -57 -6 209 -41 3
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 26 run clone 219 -58 -9 219 -57 -6 209 -41 4
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 27 run clone 219 -58 -9 219 -57 -6 209 -41 5
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 28 run clone 219 -58 -9 219 -57 -6 209 -41 6
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 29 run clone 219 -58 -9 219 -57 -6 209 -41 7
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 30 run clone 219 -58 -9 219 -57 -6 209 -41 8
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 31 run clone 219 -58 -9 219 -57 -6 209 -41 9
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 32 run clone 219 -58 -9 219 -57 -6 209 -41 10

##Play the animation of the right log (SpikesOn)
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 10 run clone 219 -58 -9 219 -58 -6 219 -32 -6
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 11 run clone 219 -58 -9 219 -58 -6 219 -32 -5
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 12 run clone 219 -58 -9 219 -58 -6 219 -32 -4
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 13 run clone 219 -58 -9 219 -58 -6 219 -32 -3
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 13 run clone 219 -58 -9 219 -58 -7 219 -32 -2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 14 run fill 219 -32 -2 219 -32 -1 air
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 14 run clone 219 -58 -2 219 -56 -1 219 -34 0
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 15 run setblock 219 -32 0 air
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 15 run clone 219 -58 -4 219 -55 -4 219 -35 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 16 run clone 219 -58 -4 219 -55 -4 219 -36 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 17 run clone 219 -58 -4 219 -55 -4 219 -37 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 18 run clone 219 -58 -4 219 -55 -4 219 -38 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 19 run clone 219 -58 -4 219 -55 -4 219 -39 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 20 run clone 219 -58 -4 219 -55 -4 219 -40 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 21 run clone 219 -58 -4 219 -55 -4 219 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 22 run clone 219 -58 1 219 -56 3 219 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 23 run clone 219 -58 -9 219 -57 -6 219 -41 1
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 24 run clone 219 -58 -9 219 -57 -6 219 -41 2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 25 run clone 219 -58 -9 219 -57 -6 219 -41 3
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 26 run clone 219 -58 -9 219 -57 -6 219 -41 4
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 27 run clone 219 -58 -9 219 -57 -6 219 -41 5
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 28 run clone 219 -58 -9 219 -57 -6 219 -41 6
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 29 run clone 219 -58 -9 219 -57 -6 219 -41 7
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 30 run clone 219 -58 -9 219 -57 -6 219 -41 8
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 31 run clone 219 -58 -9 219 -57 -6 219 -41 9
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 32 run clone 219 -58 -9 219 -57 -6 219 -41 10

##Breaking the logs at the end Right (SpikesOn)
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 33 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 33 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.0
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 33 run clone 219 -58 -9 219 -57 -7 219 -41 11
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 34 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 34 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 34 run clone 219 -58 -9 219 -57 -8 219 -41 12
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 35 if score logs_idlet Timer matches 1 run fill 219 -41 13 219 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 35 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 219.50 -40.38 14.11 0.6 1.5

##Breaking the logs at the end Left (SpikesOn)
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 33 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 33 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.0
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 33 run clone 219 -58 -9 219 -57 -7 209 -41 11
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 34 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 34 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.2
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 34 run clone 219 -58 -9 219 -57 -8 209 -41 12
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 35 if score logs_idlet Timer matches 1 run fill 219 -41 13 209 -41 13 air destroy
execute if score SpikeLogs Timer matches 1 if score logs_idle Timer matches 35 if score logs_idlet Timer matches 1 run playsound ui.stonecutter.take_result record @a 209.50 -40.38 14.11 0.6 1.5

######FALLING LOGS AT THE TRAP 28



## Factory Planks Trap 07 moving left and right
execute if score plank_idle Timer matches 1 run clone 140 -56 48 137 -55 47 136 -44 47
execute if score plank_idle Timer matches 1 run clone 139 -55 47 136 -56 46 142 -44 52

execute if score plank_idle Timer matches 11 run clone 139 -55 47 136 -56 48 136 -44 47
execute if score plank_idle Timer matches 11 run clone 140 -56 47 137 -55 46 142 -44 52

execute if score plank_idle Timer matches 21 run clone 139 -55 47 136 -56 48 137 -44 47
execute if score plank_idle Timer matches 21 run clone 140 -56 47 137 -55 46 141 -44 52

execute if score plank_idle Timer matches 31 run clone 139 -55 47 136 -56 48 138 -44 47
execute if score plank_idle Timer matches 31 run clone 140 -56 47 137 -55 46 140 -44 52

execute if score plank_idle Timer matches 41 run clone 139 -55 47 136 -56 48 139 -44 47
execute if score plank_idle Timer matches 41 run clone 140 -56 47 137 -55 46 139 -44 52

execute if score plank_idle Timer matches 51 run clone 139 -55 47 136 -56 48 140 -44 47
execute if score plank_idle Timer matches 51 run clone 140 -56 47 137 -55 46 138 -44 52

execute if score plank_idle Timer matches 61 run clone 139 -55 47 136 -56 48 141 -44 47
execute if score plank_idle Timer matches 61 run clone 140 -56 47 137 -55 46 137 -44 52

execute if score plank_idle Timer matches 71 run clone 139 -55 47 136 -56 48 142 -44 47
execute if score plank_idle Timer matches 71 run clone 140 -56 47 137 -55 46 136 -44 52

execute if score plank_idle Timer matches 81 run clone 140 -56 48 137 -55 47 142 -44 47
execute if score plank_idle Timer matches 81 run clone 136 -56 47 139 -55 46 136 -44 52

execute if score plank_idle Timer matches 91 run clone 140 -56 48 137 -55 47 141 -44 47
execute if score plank_idle Timer matches 91 run clone 136 -56 47 139 -55 46 137 -44 52

execute if score plank_idle Timer matches 101 run clone 140 -56 48 137 -55 47 140 -44 47
execute if score plank_idle Timer matches 101 run clone 136 -56 47 139 -55 46 138 -44 52

execute if score plank_idle Timer matches 111 run clone 140 -56 48 137 -55 47 139 -44 47
execute if score plank_idle Timer matches 111 run clone 136 -56 47 139 -55 46 139 -44 52

execute if score plank_idle Timer matches 121 run clone 140 -56 48 137 -55 47 138 -44 47
execute if score plank_idle Timer matches 121 run clone 136 -56 47 139 -55 46 140 -44 52

execute if score plank_idle Timer matches 131 run clone 140 -56 48 137 -55 47 137 -44 47
execute if score plank_idle Timer matches 131 run clone 136 -56 47 139 -55 46 141 -44 52
