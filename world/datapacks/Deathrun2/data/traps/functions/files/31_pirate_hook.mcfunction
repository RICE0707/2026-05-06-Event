##
 # 31_.mcfunction
 # 
 #
 # Created by .
##
##Loop this trap unter finished
scoreboard players set loop_31 loop_trap 1

##break the loop after finished
scoreboard players add hook_timer Timer 1
execute if score hook_timer Timer matches 21.. run scoreboard players set loop_31 loop_trap 0
execute if score hook_timer Timer matches 21.. run scoreboard players set hook_timer Timer 0

execute if score hook_timer Timer matches 11.. run execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-8 ~ dried_kelp_block run teleport @s ~-1 ~ ~
scoreboard players set trap_31 trap_activated 1

execute if score hook_timer Timer matches 1 run clone 236 -59 32 232 -56 35 232 -42 26
execute if score hook_timer Timer matches 1 run playsound item.crossbow.shoot record @a 231.68 -39.51 27.41 2 0.8
execute if score hook_timer Timer matches 1 run particle explosion 231.50 -39.50 27.50 0.03 0.3 0.3 1 1 normal

execute if score hook_timer Timer matches 2 run clone 237 -59 26 232 -55 29 233 -41 26
execute if score hook_timer Timer matches 2 run clone 233 -39 27 233 -39 27 233 -40 27
execute if score hook_timer Timer matches 2 run playsound block.chain.hit record @a 233.68 -38.56 27.75 1 1

execute if score hook_timer Timer matches 3 run clone 237 -59 26 232 -55 29 234 -40 26
execute if score hook_timer Timer matches 3 run clone 234 -38 27 234 -38 27 234 -39 27
execute if score hook_timer Timer matches 3 run playsound block.chain.hit record @a 234.59 -37.49 27.75

execute if score hook_timer Timer matches 4 run clone 237 -59 26 232 -55 29 235 -40 26
execute if score hook_timer Timer matches 4 run playsound block.chain.hit record @a 235.49 -37.54 27.69

execute if score hook_timer Timer matches 5 run clone 237 -59 26 232 -55 29 236 -39 26
execute if score hook_timer Timer matches 5 run clone 236 -37 27 236 -37 27 236 -38 27
execute if score hook_timer Timer matches 5 run playsound block.chain.hit record @a 236.54 -36.50 27.75

execute if score hook_timer Timer matches 6 run clone 237 -59 26 232 -55 29 237 -39 26
execute if score hook_timer Timer matches 6 run playsound block.chain.hit record @a 237.57 -36.52 27.69

execute if score hook_timer Timer matches 7 run clone 237 -59 26 232 -55 29 238 -39 26
execute if score hook_timer Timer matches 7 run playsound block.chain.hit record @a 238.46 -36.52 27.69

execute if score hook_timer Timer matches 8 run clone 237 -59 26 232 -55 29 239 -39 26
##Wire
execute if score hook_timer Timer matches 8 run clone 236 -37 27 239 -37 27 236 -38 27
execute if score hook_timer Timer matches 8 run fill 236 -37 27 239 -37 27 air
execute if score hook_timer Timer matches 8 run playsound block.chain.hit record @a 240.00 -36.58 27.73

execute if score hook_timer Timer matches 9 run clone 237 -59 26 232 -55 29 240 -40 26
execute if score hook_timer Timer matches 9 run playsound block.chain.hit record @a 240.48 -37.52 27.69

execute if score hook_timer Timer matches 10 run clone 236 -59 26 232 -55 29 241 -41 26
execute if score hook_timer Timer matches 10 run playsound block.chain.hit record @a 241.64 -38.46 27.75

execute if score hook_timer Timer matches 11 run clone 236 -58 26 232 -55 29 241 -41 26
execute if score hook_timer Timer matches 11 run clone 232 -40 27 232 -40 27 241 -39 27
##Wire
execute if score hook_timer Timer matches 11 run clone 234 -38 27 240 -38 27 234 -39 27
execute if score hook_timer Timer matches 11 run fill 234 -38 27 240 -38 27 air
execute if score hook_timer Timer matches 11 run playsound block.chain.hit record @a 241.98 -39.54 27.69

execute if score hook_timer Timer matches 12 run clone 237 -58 26 232 -55 29 240 -41 26
execute if score hook_timer Timer matches 12 run clone 233 -39 27 239 -39 27 233 -40 27
execute if score hook_timer Timer matches 12 run fill 233 -39 27 240 -39 27 air
execute if score hook_timer Timer matches 12 run playsound block.chain.hit record @a 240.60 -39.47 27.75

execute if score hook_timer Timer matches 13 run clone 237 -58 26 232 -55 29 239 -41 26
execute if score hook_timer Timer matches 13 run playsound block.chain.hit record @a 239.59 -39.47 27.75

execute if score hook_timer Timer matches 14 run clone 237 -58 26 232 -55 29 238 -41 26
execute if score hook_timer Timer matches 14 run playsound block.chain.hit record @a 238.59 -39.47 27.75

execute if score hook_timer Timer matches 15 run clone 237 -58 26 232 -55 29 237 -41 26
execute if score hook_timer Timer matches 15 run playsound block.chain.hit record @a 237.59 -39.46 27.75

execute if score hook_timer Timer matches 16 run clone 237 -58 26 232 -55 29 236 -41 26
execute if score hook_timer Timer matches 16 run playsound block.chain.hit record @a 236.50 -39.46 27.69

execute if score hook_timer Timer matches 17 run clone 237 -58 26 232 -55 29 235 -41 26
execute if score hook_timer Timer matches 17 run playsound block.chain.hit record @a 235.64 -39.46 27.75

execute if score hook_timer Timer matches 18 run clone 237 -58 26 232 -55 29 234 -41 26
execute if score hook_timer Timer matches 18 run playsound block.chain.hit record @a 234.60 -39.48 27.75

execute if score hook_timer Timer matches 19 run clone 237 -58 26 232 -55 29 233 -41 26
execute if score hook_timer Timer matches 19 run playsound block.chain.hit record @a 233.56 -39.47 27.69

execute if score hook_timer Timer matches 20 run clone 237 -58 26 232 -55 29 232 -41 26
execute if score hook_timer Timer matches 20 run playsound block.chain.hit record @a 232.47 -39.51 27.69



