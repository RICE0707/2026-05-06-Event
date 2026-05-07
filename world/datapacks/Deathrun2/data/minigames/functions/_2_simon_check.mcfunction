##
 # _2_simon_check.mcfunction
 # 
 #
 # Created by Lifeely.
##

##when this function is called it will generate random number between 1-9 it will select the color of the tile
clone 14 -62 227 -4 -62 209 -4 -39 209

##Summon area effect cloud and based on uuid get random number
kill @e[tag=!recorder,type=area_effect_cloud,tag=random_uuid]
summon area_effect_cloud 5.49 -31.00 204.53 {Tags:["random_uuid"]}
execute store result score random_number _minigame_simon_says run data get entity @e[tag=!recorder,type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation random_number _minigame_simon_says %= _range _minigame_simon_says
kill @e[tag=!recorder,type=area_effect_cloud,tag=random_uuid]


##Based on number make the right selection
##    North
#If score 0 = Red
execute if score random_number _minigame_simon_says matches 0 run clone 11 -36 156 7 -40 156 3 -34 204 
#If score 1 = Orange
execute if score random_number _minigame_simon_says matches 1 run clone 11 -36 155 7 -40 155 3 -34 204 
#If score 2 = Yellow
execute if score random_number _minigame_simon_says matches 2 run clone 11 -36 154 7 -40 154 3 -34 204 
#If score 3 = Lime
execute if score random_number _minigame_simon_says matches 3 run clone 11 -36 153 7 -40 153 3 -34 204 
#If score 4 = Light Blue
execute if score random_number _minigame_simon_says matches 4 run clone 11 -36 152 7 -40 152 3 -34 204 
#If score 5 = Blue
execute if score random_number _minigame_simon_says matches 5 run clone 11 -36 151 7 -40 151 3 -34 204 
#If score 6 = Purple
execute if score random_number _minigame_simon_says matches 6 run clone 11 -36 150 7 -40 150 3 -34 204 
#If score 7 = Brown
execute if score random_number _minigame_simon_says matches 7 run clone 11 -36 149 7 -40 149 3 -34 204 
#If score 8 = Black
execute if score random_number _minigame_simon_says matches 8 run clone 11 -36 148 7 -40 148 3 -34 204 

##    East
execute if score random_number _minigame_simon_says matches 0 run clone -3 -36 156 -3 -40 152 19 -34 216
#If score 1 = Orange
execute if score random_number _minigame_simon_says matches 1 run clone -2 -36 156 -2 -40 152 19 -34 216
#If score 2 = Yellow
execute if score random_number _minigame_simon_says matches 2 run clone -1 -36 156 -1 -40 152 19 -34 216
#If score 3 = Lime
execute if score random_number _minigame_simon_says matches 3 run clone 0 -36 156 0 -40 152 19 -34 216
#If score 4 = Light Blue
execute if score random_number _minigame_simon_says matches 4 run clone 1 -36 156 1 -40 152 19 -34 216
#If score 5 = Blue
execute if score random_number _minigame_simon_says matches 5 run clone 2 -36 156 2 -40 152 19 -34 216
#If score 6 = Purple
execute if score random_number _minigame_simon_says matches 6 run clone 3 -36 156 3 -40 152 19 -34 216
#If score 7 = Brown
execute if score random_number _minigame_simon_says matches 7 run clone 4 -36 156 4 -40 152 19 -34 216
#If score 8 = Black
execute if score random_number _minigame_simon_says matches 8 run clone 5 -36 156 5 -40 152 19 -34 216

##    South
execute if score random_number _minigame_simon_says matches 0 run clone 11 -36 156 7 -40 156 3 -34 232
#If score 1 = Orange
execute if score random_number _minigame_simon_says matches 1 run clone 11 -36 155 7 -40 155 3 -34 232
#If score 2 = Yellow
execute if score random_number _minigame_simon_says matches 2 run clone 11 -36 154 7 -40 154 3 -34 232
#If score 3 = Lime
execute if score random_number _minigame_simon_says matches 3 run clone 11 -36 153 7 -40 153 3 -34 232
#If score 4 = Light Blue
execute if score random_number _minigame_simon_says matches 4 run clone 11 -36 152 7 -40 152 3 -34 232
#If score 5 = Blue
execute if score random_number _minigame_simon_says matches 5 run clone 11 -36 151 7 -40 151 3 -34 232
#If score 6 = Purple
execute if score random_number _minigame_simon_says matches 6 run clone 11 -36 150 7 -40 150 3 -34 232
#If score 7 = Brown
execute if score random_number _minigame_simon_says matches 7 run clone 11 -36 149 7 -40 149 3 -34 232
#If score 8 = Black
execute if score random_number _minigame_simon_says matches 8 run clone 11 -36 148 7 -40 148 3 -34 232

##    West
execute if score random_number _minigame_simon_says matches 0 run clone -3 -36 156 -3 -40 152 -9 -34 216
#If score 1 = Orange
execute if score random_number _minigame_simon_says matches 1 run clone -2 -36 156 -2 -40 152 -9 -34 216
#If score 2 = Yellow
execute if score random_number _minigame_simon_says matches 2 run clone -1 -36 156 -1 -40 152 -9 -34 216
#If score 3 = Lime
execute if score random_number _minigame_simon_says matches 3 run clone 0 -36 156 0 -40 152 -9 -34 216
#If score 4 = Light Blue
execute if score random_number _minigame_simon_says matches 4 run clone 1 -36 156 1 -40 152 -9 -34 216
#If score 5 = Blue
execute if score random_number _minigame_simon_says matches 5 run clone 2 -36 156 2 -40 152 -9 -34 216
#If score 6 = Purple
execute if score random_number _minigame_simon_says matches 6 run clone 3 -36 156 3 -40 152 -9 -34 216
#If score 7 = Brown
execute if score random_number _minigame_simon_says matches 7 run clone 4 -36 156 4 -40 152 -9 -34 216
#If score 8 = Black
execute if score random_number _minigame_simon_says matches 8 run clone 5 -36 156 5 -40 152 -9 -34 216





