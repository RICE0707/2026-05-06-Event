##
 # _2_simon_breakfloor.mcfunction
 # 
 #
 # Created by Lifeely.
##

##In this function based on score of random number (Selected block) remove all other blocks
fill 3 -30 204 7 -34 204 air destroy
fill 19 -30 216 19 -34 220 air destroy
fill 7 -30 232 3 -34 232 air destroy
fill -9 -30 220 -9 -34 216 air destroy



#Red
execute if score random_number _minigame_simon_says matches 0 run fill -4 -39 216 14 -39 227 air
execute if score random_number _minigame_simon_says matches 0 run fill 14 -39 209 3 -39 213 air

#Orange
execute if score random_number _minigame_simon_says matches 1 run fill -4 -39 227 14 -39 223 air
execute if score random_number _minigame_simon_says matches 1 run fill 14 -39 220 3 -39 209 air
execute if score random_number _minigame_simon_says matches 1 run fill 0 -39 213 -4 -39 209 air

#Yellow
execute if score random_number _minigame_simon_says matches 2 run fill -4 -39 209 14 -39 220 air
execute if score random_number _minigame_simon_says matches 2 run fill 14 -39 223 3 -39 227 air

#Green
execute if score random_number _minigame_simon_says matches 3 run fill -4 -39 227 0 -39 209 air
execute if score random_number _minigame_simon_says matches 3 run fill 3 -39 209 14 -39 220 air
execute if score random_number _minigame_simon_says matches 3 run fill 14 -39 223 10 -39 227 air 

#Light blue
execute if score random_number _minigame_simon_says matches 4 run fill 7 -39 227 -4 -39 209 air
execute if score random_number _minigame_simon_says matches 4 run fill 10 -39 209 14 -39 220 air

#Blue
execute if score random_number _minigame_simon_says matches 5 run fill 14 -39 227 -4 -39 223 air
execute if score random_number _minigame_simon_says matches 5 run fill -4 -39 220 7 -39 209 air
execute if score random_number _minigame_simon_says matches 5 run fill 10 -39 209 14 -39 213 air

#Purple
execute if score random_number _minigame_simon_says matches 6 run fill 14 -39 216 -4 -39 227 air
execute if score random_number _minigame_simon_says matches 6 run fill -4 -39 213 7 -39 209 air

#Brown
execute if score random_number _minigame_simon_says matches 7 run fill 14 -39 209 10 -39 227 air
execute if score random_number _minigame_simon_says matches 7 run fill 7 -39 227 -4 -39 216 air
execute if score random_number _minigame_simon_says matches 7 run fill -4 -39 213 0 -39 209 air

#Black
execute if score random_number _minigame_simon_says matches 8 run fill -4 -39 213 14 -39 209 air
execute if score random_number _minigame_simon_says matches 8 run fill 14 -39 216 10 -39 227 air
execute if score random_number _minigame_simon_says matches 8 run fill 7 -39 223 -4 -39 227 air
execute if score random_number _minigame_simon_says matches 8 run fill 0 -39 220 -4 -39 216 air