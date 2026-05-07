##
 # lobby_3_in_line.mcfunction
 # 
 #
 # Created by .
##
##In This script there will be the game

##SlowDown Timer
scoreboard players add timer_3_in_line Timer 1
execute if score timer_3_in_line Timer matches 4.. run scoreboard players set timer_3_in_line Timer 1

##Unless any Team members, replace the sign
execute unless entity @a[tag=!recorder,tag=red_team] unless block 1223 -25 -39 spruce_wall_sign run setblock 1223 -25 -39 minecraft:spruce_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"translate":"wtem.empty"}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"bold":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!blue_team] add red_team"},"translate":"core.functions.files.lobby_3_in_line.5"}','{"bold":true,"clickEvent":{"action":"run_command","value":"title @s title {\\"text\\": \\"\\"}"},"translate":"core.functions.files.lobby_3_in_line.6"}','{"clickEvent":{"action":"run_command","value":"title @s subtitle {"translate": "block.sign.109.front_text3.5","color": "#ff2525"}"},"extra":[{"bold":true,"translate":"core.functions.files.lobby_3_in_line.7"},{"bold":true,"color":"#FF2525","translate":"core.functions.files.lobby_3_in_line.8"},{"bold":true,"translate":"core.functions.files.lobby_3_in_line.9"}],"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b}
execute unless entity @a[tag=!recorder,tag=blue_team] unless block 1222 -25 -39 spruce_wall_sign run setblock 1222 -25 -39 minecraft:spruce_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"translate":"wtem.empty"}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"bold":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!red_team] add blue_team"},"translate":"core.functions.files.lobby_3_in_line.16"}','{"bold":true,"clickEvent":{"action":"run_command","value":"title @s title {\\"text\\": \\"\\"}"},"translate":"core.functions.files.lobby_3_in_line.17"}','{"clickEvent":{"action":"run_command","value":"title @s subtitle {"text": "block.sign.108.front_text3.5","color": "#1B7EF8"}"},"extra":[{"bold":true,"translate":"core.functions.files.lobby_3_in_line.18"},{"bold":true,"color":"#1B7EF8","translate":"core.functions.files.lobby_3_in_line.19"},{"bold":true,"translate":"core.functions.files.lobby_3_in_line.20"}],"translate":"wtem.empty"}','{"translate":"wtem.empty"}']},is_waxed:1b}
execute if entity @a[tag=!recorder,tag=red_team] run setblock 1223 -25 -39 air
execute if entity @a[tag=!recorder,tag=blue_team] run setblock 1222 -25 -39 air

##Starting function
execute if entity @a[tag=!recorder,tag=red_team] if entity @a[tag=!recorder,tag=blue_team,tag=!started] run execute as @a[tag=!recorder,tag=red_team] at @s run scoreboard players set @s place_blue 1
execute if entity @a[tag=!recorder,tag=red_team] if entity @a[tag=!recorder,tag=blue_team,tag=!started] run tag @a[tag=!recorder,tag=blue_team] add started

##Tik / Tac system, makes the player being able to place blocks after other player
execute as @a[tag=!recorder,scores={place_blue=1..}] at @s run scoreboard players set player_selected 3_in_line 2
execute as @a[tag=!recorder,scores={place_blue=1..}] at @s run tag @s remove place
execute as @a[tag=!recorder,scores={place_blue=1..}] at @s run tag @s remove has_block
execute as @a[tag=!recorder,scores={place_blue=1..}] at @s run tag @a[tag=!recorder,tag=red_team] add place
execute as @a[tag=!recorder,scores={place_blue=1..}] at @s run scoreboard players reset @s place_blue

execute as @a[tag=!recorder,scores={place_red=1..}] at @s run scoreboard players set player_selected 3_in_line 1
execute as @a[tag=!recorder,scores={place_red=1..}] at @s run tag @s remove place
execute as @a[tag=!recorder,scores={place_red=1..}] at @s run tag @s remove has_block
execute as @a[tag=!recorder,scores={place_red=1..}] at @s run tag @a[tag=!recorder,tag=blue_team] add place
execute as @a[tag=!recorder,scores={place_red=1..}] at @s run scoreboard players reset @s place_red

execute as @a[tag=!recorder,tag=place,tag=!has_block,tag=red_team] at @s run item replace entity @s hotbar.0 with red_concrete_powder{CanPlaceOn:["minecraft:brick_wall"]} 1
execute as @a[tag=!recorder,tag=place,tag=!has_block,tag=red_team] at @s run tag @s add has_block
execute as @a[tag=!recorder,tag=place,tag=!has_block,tag=blue_team] at @s run item replace entity @s hotbar.0 with blue_concrete_powder{CanPlaceOn:["minecraft:brick_wall"]} 1
execute as @a[tag=!recorder,tag=place,tag=!has_block,tag=blue_team] at @s run tag @s add has_block

##When its full of blocks, >> Restart 
execute as @e[tag=!recorder,tag=1_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=2_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=3_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=4_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=5_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=6_6] at @s unless block ~ ~ ~ air run title @a[tag=!recorder,x=1232,y=-19,z=-41,distance=..30] subtitle ["",{"translate":"core.functions.files.lobby_3_in_line.23","underlined":true,"color":"gold"},{"translate":"wtem.space","color":"gold"},{"translate":"core.functions.files.lobby_3_in_line.25","underlined":true,"color":"#FF2525"},{"translate":"wtem.space","color":"#FF2525"},{"translate":"core.functions.files.lobby_3_in_line.27","underlined":true,"color":"#1B7EF8"}]
execute as @e[tag=!recorder,tag=1_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=2_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=3_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=4_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=5_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=6_6] at @s unless block ~ ~ ~ air run title @a[tag=!recorder,x=1232,y=-19,z=-41,distance=..30] title [{"translate":"core.functions.files.lobby_3_in_line.28","color":"aqua"},{"translate":"core.functions.files.lobby_3_in_line.29","color":"aqua"}]
execute as @e[tag=!recorder,tag=1_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=2_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=3_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=4_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=5_6] at @s unless block ~ ~ ~ air as @e[tag=!recorder,tag=6_6] at @s unless block ~ ~ ~ air run scoreboard players set Reset 3_in_line 1

##Add some particles when blocks are placed
execute as @e[tag=!recorder,tag=3_in_line_check,tag=!placed] at @s if block ~ ~ ~ red_concrete_powder run particle block red_concrete_powder ~-0.55 ~0.25 ~ 0 0.25 0.25 0 10 normal
execute as @e[tag=!recorder,tag=3_in_line_check,tag=!placed] at @s if block ~ ~ ~ red_concrete_powder run tag @s add placed
execute as @e[tag=!recorder,tag=3_in_line_check,tag=!placed] at @s if block ~ ~ ~ blue_concrete_powder run particle block blue_concrete_powder ~-0.55 ~0.25 ~ 0 0.25 0.25 0 10 normal
execute as @e[tag=!recorder,tag=3_in_line_check,tag=!placed] at @s if block ~ ~ ~ blue_concrete_powder run tag @s add placed
execute as @e[tag=!recorder,tag=3_in_line_check,tag=placed] at @s if block ~ ~ ~ air run tag @s remove placed

##When Reset score is on then as markers remove blocks on them and play particles/sound & remove player tags
execute if score Reset 3_in_line matches 1 run execute as @e[tag=!recorder,tag=3_in_line_check] at @s run fill ~ ~ ~ ~ ~ ~ air destroy
execute if score Reset 3_in_line matches 1 run execute as @e[tag=!recorder,tag=3_in_line_check] at @s run particle explosion ~-0.55 ~0.25 ~ 0 0 0 0 1 normal
execute if score Reset 3_in_line matches 1 run execute as @e[tag=!recorder,tag=3_in_line_check] at @s run playsound entity.firework_rocket.large_blast record @a ~-0.55 ~0.25 ~ 0.25 1.4
execute if score Reset 3_in_line matches 1 run tag @a remove red_team
execute if score Reset 3_in_line matches 1 run tag @a remove blue_team
execute if score Reset 3_in_line matches 1 run scoreboard players reset @a place_red
execute if score Reset 3_in_line matches 1 run scoreboard players reset @a place_blue
execute if score Reset 3_in_line matches 1 run clear @a red_concrete_powder
execute if score Reset 3_in_line matches 1 run clear @a blue_concrete_powder
execute if score Reset 3_in_line matches 1 run tag @a remove has_block
execute if score Reset 3_in_line matches 1 run tag @a remove started
execute if score Reset 3_in_line matches 1 run tag @a remove place
execute if score Reset 3_in_line matches 1 run execute as @e[tag=!recorder,tag=3_in_line_check] at @s run scoreboard players set Reset 3_in_line 0

##An Idea that after an block has been placed it will check if it can go down and move it down
execute if score timer_3_in_line Timer matches 1 run execute as @e[tag=!recorder,tag=3_in_line_check] at @s unless block ~ ~ ~ air if block ~ ~-2 ~ air run function core:files/falling_3_in_line

##In these next lines it checks for the blocks in right position and saves it into the scoreboard  #Made by Lifeely
## 0 = None , 1 = Blue , 2 = Red
execute as @e[tag=!recorder,tag=1_1] at @s if block ~ ~ ~ air run scoreboard players set 1_1 3_in_line 0
execute as @e[tag=!recorder,tag=1_1] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 1_1 3_in_line 1
execute as @e[tag=!recorder,tag=1_1] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 1_1 3_in_line 2
execute as @e[tag=!recorder,tag=1_2] at @s if block ~ ~ ~ air run scoreboard players set 1_2 3_in_line 0
execute as @e[tag=!recorder,tag=1_2] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 1_2 3_in_line 1
execute as @e[tag=!recorder,tag=1_2] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 1_2 3_in_line 2
execute as @e[tag=!recorder,tag=1_3] at @s if block ~ ~ ~ air run scoreboard players set 1_3 3_in_line 0
execute as @e[tag=!recorder,tag=1_3] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 1_3 3_in_line 1
execute as @e[tag=!recorder,tag=1_3] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 1_3 3_in_line 2
execute as @e[tag=!recorder,tag=1_4] at @s if block ~ ~ ~ air run scoreboard players set 1_4 3_in_line 0
execute as @e[tag=!recorder,tag=1_4] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 1_4 3_in_line 1
execute as @e[tag=!recorder,tag=1_4] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 1_4 3_in_line 2
execute as @e[tag=!recorder,tag=1_5] at @s if block ~ ~ ~ air run scoreboard players set 1_5 3_in_line 0
execute as @e[tag=!recorder,tag=1_5] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 1_5 3_in_line 1
execute as @e[tag=!recorder,tag=1_5] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 1_5 3_in_line 2
execute as @e[tag=!recorder,tag=1_6] at @s if block ~ ~ ~ air run scoreboard players set 1_6 3_in_line 0
execute as @e[tag=!recorder,tag=1_6] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 1_6 3_in_line 1
execute as @e[tag=!recorder,tag=1_6] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 1_6 3_in_line 2
execute as @e[tag=!recorder,tag=2_1] at @s if block ~ ~ ~ air run scoreboard players set 2_1 3_in_line 0
execute as @e[tag=!recorder,tag=2_1] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 2_1 3_in_line 1
execute as @e[tag=!recorder,tag=2_1] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 2_1 3_in_line 2
execute as @e[tag=!recorder,tag=2_2] at @s if block ~ ~ ~ air run scoreboard players set 2_2 3_in_line 0
execute as @e[tag=!recorder,tag=2_2] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 2_2 3_in_line 1
execute as @e[tag=!recorder,tag=2_2] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 2_2 3_in_line 2
execute as @e[tag=!recorder,tag=2_3] at @s if block ~ ~ ~ air run scoreboard players set 2_3 3_in_line 0
execute as @e[tag=!recorder,tag=2_3] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 2_3 3_in_line 1
execute as @e[tag=!recorder,tag=2_3] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 2_3 3_in_line 2
execute as @e[tag=!recorder,tag=2_4] at @s if block ~ ~ ~ air run scoreboard players set 2_4 3_in_line 0
execute as @e[tag=!recorder,tag=2_4] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 2_4 3_in_line 1
execute as @e[tag=!recorder,tag=2_4] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 2_4 3_in_line 2
execute as @e[tag=!recorder,tag=2_5] at @s if block ~ ~ ~ air run scoreboard players set 2_5 3_in_line 0
execute as @e[tag=!recorder,tag=2_5] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 2_5 3_in_line 1
execute as @e[tag=!recorder,tag=2_5] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 2_5 3_in_line 2
execute as @e[tag=!recorder,tag=2_6] at @s if block ~ ~ ~ air run scoreboard players set 2_6 3_in_line 0
execute as @e[tag=!recorder,tag=2_6] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 2_6 3_in_line 1
execute as @e[tag=!recorder,tag=2_6] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 2_6 3_in_line 2
execute as @e[tag=!recorder,tag=3_1] at @s if block ~ ~ ~ air run scoreboard players set 3_1 3_in_line 0
execute as @e[tag=!recorder,tag=3_1] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 3_1 3_in_line 1
execute as @e[tag=!recorder,tag=3_1] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 3_1 3_in_line 2
execute as @e[tag=!recorder,tag=3_2] at @s if block ~ ~ ~ air run scoreboard players set 3_2 3_in_line 0
execute as @e[tag=!recorder,tag=3_2] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 3_2 3_in_line 1
execute as @e[tag=!recorder,tag=3_2] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 3_2 3_in_line 2
execute as @e[tag=!recorder,tag=3_3] at @s if block ~ ~ ~ air run scoreboard players set 3_3 3_in_line 0
execute as @e[tag=!recorder,tag=3_3] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 3_3 3_in_line 1
execute as @e[tag=!recorder,tag=3_3] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 3_3 3_in_line 2
execute as @e[tag=!recorder,tag=3_4] at @s if block ~ ~ ~ air run scoreboard players set 3_4 3_in_line 0
execute as @e[tag=!recorder,tag=3_4] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 3_4 3_in_line 1
execute as @e[tag=!recorder,tag=3_4] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 3_4 3_in_line 2
execute as @e[tag=!recorder,tag=3_5] at @s if block ~ ~ ~ air run scoreboard players set 3_5 3_in_line 0
execute as @e[tag=!recorder,tag=3_5] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 3_5 3_in_line 1
execute as @e[tag=!recorder,tag=3_5] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 3_5 3_in_line 2
execute as @e[tag=!recorder,tag=3_6] at @s if block ~ ~ ~ air run scoreboard players set 3_6 3_in_line 0
execute as @e[tag=!recorder,tag=3_6] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 3_6 3_in_line 1
execute as @e[tag=!recorder,tag=3_6] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 3_6 3_in_line 2
execute as @e[tag=!recorder,tag=4_1] at @s if block ~ ~ ~ air run scoreboard players set 4_1 3_in_line 0
execute as @e[tag=!recorder,tag=4_1] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 4_1 3_in_line 1
execute as @e[tag=!recorder,tag=4_1] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 4_1 3_in_line 2
execute as @e[tag=!recorder,tag=4_2] at @s if block ~ ~ ~ air run scoreboard players set 4_2 3_in_line 0
execute as @e[tag=!recorder,tag=4_2] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 4_2 3_in_line 1
execute as @e[tag=!recorder,tag=4_2] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 4_2 3_in_line 2
execute as @e[tag=!recorder,tag=4_3] at @s if block ~ ~ ~ air run scoreboard players set 4_3 3_in_line 0
execute as @e[tag=!recorder,tag=4_3] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 4_3 3_in_line 1
execute as @e[tag=!recorder,tag=4_3] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 4_3 3_in_line 2
execute as @e[tag=!recorder,tag=4_4] at @s if block ~ ~ ~ air run scoreboard players set 4_4 3_in_line 0
execute as @e[tag=!recorder,tag=4_4] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 4_4 3_in_line 1
execute as @e[tag=!recorder,tag=4_4] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 4_4 3_in_line 2
execute as @e[tag=!recorder,tag=4_5] at @s if block ~ ~ ~ air run scoreboard players set 4_5 3_in_line 0
execute as @e[tag=!recorder,tag=4_5] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 4_5 3_in_line 1
execute as @e[tag=!recorder,tag=4_5] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 4_5 3_in_line 2
execute as @e[tag=!recorder,tag=4_6] at @s if block ~ ~ ~ air run scoreboard players set 4_6 3_in_line 0
execute as @e[tag=!recorder,tag=4_6] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 4_6 3_in_line 1
execute as @e[tag=!recorder,tag=4_6] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 4_6 3_in_line 2
execute as @e[tag=!recorder,tag=5_1] at @s if block ~ ~ ~ air run scoreboard players set 5_1 3_in_line 0
execute as @e[tag=!recorder,tag=5_1] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 5_1 3_in_line 1
execute as @e[tag=!recorder,tag=5_1] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 5_1 3_in_line 2
execute as @e[tag=!recorder,tag=5_2] at @s if block ~ ~ ~ air run scoreboard players set 5_2 3_in_line 0
execute as @e[tag=!recorder,tag=5_2] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 5_2 3_in_line 1
execute as @e[tag=!recorder,tag=5_2] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 5_2 3_in_line 2
execute as @e[tag=!recorder,tag=5_3] at @s if block ~ ~ ~ air run scoreboard players set 5_3 3_in_line 0
execute as @e[tag=!recorder,tag=5_3] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 5_3 3_in_line 1
execute as @e[tag=!recorder,tag=5_3] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 5_3 3_in_line 2
execute as @e[tag=!recorder,tag=5_4] at @s if block ~ ~ ~ air run scoreboard players set 5_4 3_in_line 0
execute as @e[tag=!recorder,tag=5_4] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 5_4 3_in_line 1
execute as @e[tag=!recorder,tag=5_4] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 5_4 3_in_line 2
execute as @e[tag=!recorder,tag=5_5] at @s if block ~ ~ ~ air run scoreboard players set 5_5 3_in_line 0
execute as @e[tag=!recorder,tag=5_5] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 5_5 3_in_line 1
execute as @e[tag=!recorder,tag=5_5] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 5_5 3_in_line 2
execute as @e[tag=!recorder,tag=5_6] at @s if block ~ ~ ~ air run scoreboard players set 5_6 3_in_line 0
execute as @e[tag=!recorder,tag=5_6] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 5_6 3_in_line 1
execute as @e[tag=!recorder,tag=5_6] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 5_6 3_in_line 2
execute as @e[tag=!recorder,tag=6_1] at @s if block ~ ~ ~ air run scoreboard players set 6_1 3_in_line 0
execute as @e[tag=!recorder,tag=6_1] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 6_1 3_in_line 1
execute as @e[tag=!recorder,tag=6_1] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 6_1 3_in_line 2
execute as @e[tag=!recorder,tag=6_2] at @s if block ~ ~ ~ air run scoreboard players set 6_2 3_in_line 0
execute as @e[tag=!recorder,tag=6_2] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 6_2 3_in_line 1
execute as @e[tag=!recorder,tag=6_2] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 6_2 3_in_line 2
execute as @e[tag=!recorder,tag=6_3] at @s if block ~ ~ ~ air run scoreboard players set 6_3 3_in_line 0
execute as @e[tag=!recorder,tag=6_3] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 6_3 3_in_line 1
execute as @e[tag=!recorder,tag=6_3] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 6_3 3_in_line 2
execute as @e[tag=!recorder,tag=6_4] at @s if block ~ ~ ~ air run scoreboard players set 6_4 3_in_line 0
execute as @e[tag=!recorder,tag=6_4] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 6_4 3_in_line 1
execute as @e[tag=!recorder,tag=6_4] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 6_4 3_in_line 2
execute as @e[tag=!recorder,tag=6_5] at @s if block ~ ~ ~ air run scoreboard players set 6_5 3_in_line 0
execute as @e[tag=!recorder,tag=6_5] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 6_5 3_in_line 1
execute as @e[tag=!recorder,tag=6_5] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 6_5 3_in_line 2
execute as @e[tag=!recorder,tag=6_6] at @s if block ~ ~ ~ air run scoreboard players set 6_6 3_in_line 0
execute as @e[tag=!recorder,tag=6_6] at @s if block ~ ~ ~ blue_concrete_powder run scoreboard players set 6_6 3_in_line 1
execute as @e[tag=!recorder,tag=6_6] at @s if block ~ ~ ~ red_concrete_powder run scoreboard players set 6_6 3_in_line 2

##Here it gets calculated if numbers in the line are the same make it win for the right team
  ##SIDEWAYS in Z Axis
execute if score 1_1 3_in_line = 2_1 3_in_line if score 2_1 3_in_line = 3_1 3_in_line if score 2_1 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_1 3_in_line = 2_1 3_in_line if score 2_1 3_in_line = 3_1 3_in_line if score 2_1 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_1 3_in_line = 3_1 3_in_line if score 3_1 3_in_line = 4_1 3_in_line if score 3_1 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_1 3_in_line = 3_1 3_in_line if score 3_1 3_in_line = 4_1 3_in_line if score 3_1 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_1 3_in_line = 4_1 3_in_line if score 4_1 3_in_line = 5_1 3_in_line if score 4_1 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_1 3_in_line = 4_1 3_in_line if score 4_1 3_in_line = 5_1 3_in_line if score 4_1 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_1 3_in_line = 5_1 3_in_line if score 5_1 3_in_line = 6_1 3_in_line if score 5_1 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_1 3_in_line = 5_1 3_in_line if score 5_1 3_in_line = 6_1 3_in_line if score 5_1 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 1_2 3_in_line = 2_2 3_in_line if score 2_2 3_in_line = 3_2 3_in_line if score 2_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_2 3_in_line = 2_2 3_in_line if score 2_2 3_in_line = 3_2 3_in_line if score 2_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_2 3_in_line = 3_2 3_in_line if score 3_2 3_in_line = 4_2 3_in_line if score 3_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_2 3_in_line = 3_2 3_in_line if score 3_2 3_in_line = 4_2 3_in_line if score 3_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_2 3_in_line = 4_2 3_in_line if score 4_2 3_in_line = 5_2 3_in_line if score 4_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_2 3_in_line = 4_2 3_in_line if score 4_2 3_in_line = 5_2 3_in_line if score 4_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_2 3_in_line = 5_2 3_in_line if score 5_2 3_in_line = 6_2 3_in_line if score 5_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_2 3_in_line = 5_2 3_in_line if score 5_2 3_in_line = 6_2 3_in_line if score 5_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 1_3 3_in_line = 2_3 3_in_line if score 2_3 3_in_line = 3_3 3_in_line if score 2_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_3 3_in_line = 2_3 3_in_line if score 2_3 3_in_line = 3_3 3_in_line if score 2_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_3 3_in_line = 3_3 3_in_line if score 3_3 3_in_line = 4_3 3_in_line if score 3_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_3 3_in_line = 3_3 3_in_line if score 3_3 3_in_line = 4_3 3_in_line if score 3_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_3 3_in_line = 4_3 3_in_line if score 4_3 3_in_line = 5_3 3_in_line if score 4_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_3 3_in_line = 4_3 3_in_line if score 4_3 3_in_line = 5_3 3_in_line if score 4_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_3 3_in_line = 5_3 3_in_line if score 5_3 3_in_line = 6_3 3_in_line if score 5_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_3 3_in_line = 5_3 3_in_line if score 5_3 3_in_line = 6_3 3_in_line if score 5_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 1_4 3_in_line = 2_4 3_in_line if score 2_4 3_in_line = 3_4 3_in_line if score 2_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_4 3_in_line = 2_4 3_in_line if score 2_4 3_in_line = 3_4 3_in_line if score 2_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_4 3_in_line = 3_4 3_in_line if score 3_4 3_in_line = 4_4 3_in_line if score 3_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_4 3_in_line = 3_4 3_in_line if score 3_4 3_in_line = 4_4 3_in_line if score 3_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_4 3_in_line = 4_4 3_in_line if score 4_4 3_in_line = 5_4 3_in_line if score 4_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_4 3_in_line = 4_4 3_in_line if score 4_4 3_in_line = 5_4 3_in_line if score 4_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_4 3_in_line = 5_4 3_in_line if score 5_4 3_in_line = 6_4 3_in_line if score 5_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_4 3_in_line = 5_4 3_in_line if score 5_4 3_in_line = 6_4 3_in_line if score 5_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 1_5 3_in_line = 2_5 3_in_line if score 2_5 3_in_line = 3_5 3_in_line if score 2_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_5 3_in_line = 2_5 3_in_line if score 2_5 3_in_line = 3_5 3_in_line if score 2_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_5 3_in_line = 3_5 3_in_line if score 3_5 3_in_line = 4_5 3_in_line if score 3_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_5 3_in_line = 3_5 3_in_line if score 3_5 3_in_line = 4_5 3_in_line if score 3_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_5 3_in_line = 4_5 3_in_line if score 4_5 3_in_line = 5_5 3_in_line if score 4_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_5 3_in_line = 4_5 3_in_line if score 4_5 3_in_line = 5_5 3_in_line if score 4_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_5 3_in_line = 5_5 3_in_line if score 5_5 3_in_line = 6_5 3_in_line if score 5_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_5 3_in_line = 5_5 3_in_line if score 5_5 3_in_line = 6_5 3_in_line if score 5_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 1_6 3_in_line = 2_6 3_in_line if score 2_6 3_in_line = 3_6 3_in_line if score 2_6 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_6 3_in_line = 2_6 3_in_line if score 2_6 3_in_line = 3_6 3_in_line if score 2_6 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_6 3_in_line = 3_6 3_in_line if score 3_6 3_in_line = 4_6 3_in_line if score 3_6 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_6 3_in_line = 3_6 3_in_line if score 3_6 3_in_line = 4_6 3_in_line if score 3_6 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_6 3_in_line = 4_6 3_in_line if score 4_6 3_in_line = 5_6 3_in_line if score 4_6 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_6 3_in_line = 4_6 3_in_line if score 4_6 3_in_line = 5_6 3_in_line if score 4_6 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_6 3_in_line = 5_6 3_in_line if score 5_6 3_in_line = 6_6 3_in_line if score 5_6 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_6 3_in_line = 5_6 3_in_line if score 5_6 3_in_line = 6_6 3_in_line if score 5_6 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
  ##Up and Down in Y Axis
execute if score 1_1 3_in_line = 1_2 3_in_line if score 1_2 3_in_line = 1_3 3_in_line if score 1_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_1 3_in_line = 1_2 3_in_line if score 1_2 3_in_line = 1_3 3_in_line if score 1_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 1_2 3_in_line = 1_3 3_in_line if score 1_3 3_in_line = 1_4 3_in_line if score 1_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_2 3_in_line = 1_3 3_in_line if score 1_3 3_in_line = 1_4 3_in_line if score 1_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 1_3 3_in_line = 1_4 3_in_line if score 1_4 3_in_line = 1_5 3_in_line if score 1_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_3 3_in_line = 1_4 3_in_line if score 1_4 3_in_line = 1_5 3_in_line if score 1_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 1_4 3_in_line = 1_5 3_in_line if score 1_5 3_in_line = 1_6 3_in_line if score 1_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_4 3_in_line = 1_5 3_in_line if score 1_5 3_in_line = 1_6 3_in_line if score 1_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 2_1 3_in_line = 2_2 3_in_line if score 2_2 3_in_line = 2_3 3_in_line if score 2_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_1 3_in_line = 2_2 3_in_line if score 2_2 3_in_line = 2_3 3_in_line if score 2_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_2 3_in_line = 2_3 3_in_line if score 2_3 3_in_line = 2_4 3_in_line if score 2_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_2 3_in_line = 2_3 3_in_line if score 2_3 3_in_line = 2_4 3_in_line if score 2_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_3 3_in_line = 2_4 3_in_line if score 2_4 3_in_line = 2_5 3_in_line if score 2_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_3 3_in_line = 2_4 3_in_line if score 2_4 3_in_line = 2_5 3_in_line if score 2_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_4 3_in_line = 2_5 3_in_line if score 2_5 3_in_line = 2_6 3_in_line if score 2_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_4 3_in_line = 2_5 3_in_line if score 2_5 3_in_line = 2_6 3_in_line if score 2_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 3_1 3_in_line = 3_2 3_in_line if score 3_2 3_in_line = 3_3 3_in_line if score 3_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_1 3_in_line = 3_2 3_in_line if score 3_2 3_in_line = 3_3 3_in_line if score 3_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_2 3_in_line = 3_3 3_in_line if score 3_3 3_in_line = 3_4 3_in_line if score 3_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_2 3_in_line = 3_3 3_in_line if score 3_3 3_in_line = 3_4 3_in_line if score 3_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_3 3_in_line = 3_4 3_in_line if score 3_4 3_in_line = 3_5 3_in_line if score 3_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_3 3_in_line = 3_4 3_in_line if score 3_4 3_in_line = 3_5 3_in_line if score 3_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_4 3_in_line = 3_5 3_in_line if score 3_5 3_in_line = 3_6 3_in_line if score 3_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_4 3_in_line = 3_5 3_in_line if score 3_5 3_in_line = 3_6 3_in_line if score 3_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 4_1 3_in_line = 4_2 3_in_line if score 4_2 3_in_line = 4_3 3_in_line if score 4_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_1 3_in_line = 4_2 3_in_line if score 4_2 3_in_line = 4_3 3_in_line if score 4_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_2 3_in_line = 4_3 3_in_line if score 4_3 3_in_line = 4_4 3_in_line if score 4_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_2 3_in_line = 4_3 3_in_line if score 4_3 3_in_line = 4_4 3_in_line if score 4_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_3 3_in_line = 4_4 3_in_line if score 4_4 3_in_line = 4_5 3_in_line if score 4_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_3 3_in_line = 4_4 3_in_line if score 4_4 3_in_line = 4_5 3_in_line if score 4_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_4 3_in_line = 4_5 3_in_line if score 4_5 3_in_line = 4_6 3_in_line if score 4_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_4 3_in_line = 4_5 3_in_line if score 4_5 3_in_line = 4_6 3_in_line if score 4_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 5_1 3_in_line = 5_2 3_in_line if score 5_2 3_in_line = 5_3 3_in_line if score 5_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 5_1 3_in_line = 5_2 3_in_line if score 5_2 3_in_line = 5_3 3_in_line if score 5_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 5_2 3_in_line = 5_3 3_in_line if score 5_3 3_in_line = 5_4 3_in_line if score 5_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 5_2 3_in_line = 5_3 3_in_line if score 5_3 3_in_line = 5_4 3_in_line if score 5_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 5_3 3_in_line = 5_4 3_in_line if score 5_4 3_in_line = 5_5 3_in_line if score 5_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 5_3 3_in_line = 5_4 3_in_line if score 5_4 3_in_line = 5_5 3_in_line if score 5_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 5_4 3_in_line = 5_5 3_in_line if score 5_5 3_in_line = 5_6 3_in_line if score 5_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 5_4 3_in_line = 5_5 3_in_line if score 5_5 3_in_line = 5_6 3_in_line if score 5_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 6_1 3_in_line = 6_2 3_in_line if score 6_2 3_in_line = 6_3 3_in_line if score 6_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 6_1 3_in_line = 6_2 3_in_line if score 6_2 3_in_line = 6_3 3_in_line if score 6_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 6_2 3_in_line = 6_3 3_in_line if score 6_3 3_in_line = 6_4 3_in_line if score 6_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 6_2 3_in_line = 6_3 3_in_line if score 6_3 3_in_line = 6_4 3_in_line if score 6_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 6_3 3_in_line = 6_4 3_in_line if score 6_4 3_in_line = 6_5 3_in_line if score 6_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 6_3 3_in_line = 6_4 3_in_line if score 6_4 3_in_line = 6_5 3_in_line if score 6_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 6_4 3_in_line = 6_5 3_in_line if score 6_5 3_in_line = 6_6 3_in_line if score 6_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 6_4 3_in_line = 6_5 3_in_line if score 6_5 3_in_line = 6_6 3_in_line if score 6_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
##Vertical Positive Y +Z Axis
execute if score 1_1 3_in_line = 2_2 3_in_line if score 2_2 3_in_line = 3_3 3_in_line if score 2_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_1 3_in_line = 2_2 3_in_line if score 2_2 3_in_line = 3_3 3_in_line if score 2_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_2 3_in_line = 3_3 3_in_line if score 3_3 3_in_line = 4_4 3_in_line if score 3_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_2 3_in_line = 3_3 3_in_line if score 3_3 3_in_line = 4_4 3_in_line if score 3_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_3 3_in_line = 4_4 3_in_line if score 4_4 3_in_line = 5_5 3_in_line if score 4_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_3 3_in_line = 4_4 3_in_line if score 4_4 3_in_line = 5_5 3_in_line if score 4_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_4 3_in_line = 5_5 3_in_line if score 5_5 3_in_line = 6_6 3_in_line if score 5_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_4 3_in_line = 5_5 3_in_line if score 5_5 3_in_line = 6_6 3_in_line if score 5_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 2_1 3_in_line = 3_2 3_in_line if score 3_2 3_in_line = 4_3 3_in_line if score 3_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_1 3_in_line = 3_2 3_in_line if score 3_2 3_in_line = 4_3 3_in_line if score 3_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_2 3_in_line = 4_3 3_in_line if score 4_3 3_in_line = 5_4 3_in_line if score 4_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_2 3_in_line = 4_3 3_in_line if score 4_3 3_in_line = 5_4 3_in_line if score 4_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_3 3_in_line = 5_4 3_in_line if score 5_4 3_in_line = 6_5 3_in_line if score 5_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_3 3_in_line = 5_4 3_in_line if score 5_4 3_in_line = 6_5 3_in_line if score 5_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 3_1 3_in_line = 4_2 3_in_line if score 4_2 3_in_line = 5_3 3_in_line if score 4_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_1 3_in_line = 4_2 3_in_line if score 4_2 3_in_line = 5_3 3_in_line if score 4_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_2 3_in_line = 5_3 3_in_line if score 5_3 3_in_line = 6_4 3_in_line if score 5_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_2 3_in_line = 5_3 3_in_line if score 5_3 3_in_line = 6_4 3_in_line if score 5_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 4_1 3_in_line = 5_2 3_in_line if score 5_2 3_in_line = 6_3 3_in_line if score 5_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_1 3_in_line = 5_2 3_in_line if score 5_2 3_in_line = 6_3 3_in_line if score 5_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 1_2 3_in_line = 2_3 3_in_line if score 2_3 3_in_line = 3_4 3_in_line if score 2_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_2 3_in_line = 2_3 3_in_line if score 2_3 3_in_line = 3_4 3_in_line if score 2_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_3 3_in_line = 3_4 3_in_line if score 3_4 3_in_line = 4_5 3_in_line if score 3_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_3 3_in_line = 3_4 3_in_line if score 3_4 3_in_line = 4_5 3_in_line if score 3_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_4 3_in_line = 4_5 3_in_line if score 4_5 3_in_line = 5_6 3_in_line if score 4_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_4 3_in_line = 4_5 3_in_line if score 4_5 3_in_line = 5_6 3_in_line if score 4_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 1_3 3_in_line = 2_4 3_in_line if score 2_4 3_in_line = 3_5 3_in_line if score 2_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_3 3_in_line = 2_4 3_in_line if score 2_4 3_in_line = 3_5 3_in_line if score 2_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 2_4 3_in_line = 3_5 3_in_line if score 3_5 3_in_line = 4_6 3_in_line if score 3_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 2_4 3_in_line = 3_5 3_in_line if score 3_5 3_in_line = 4_6 3_in_line if score 3_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 1_4 3_in_line = 2_5 3_in_line if score 2_5 3_in_line = 3_6 3_in_line if score 2_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 1_4 3_in_line = 2_5 3_in_line if score 2_5 3_in_line = 3_6 3_in_line if score 2_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
##Vertical Negative Y -Z Axis
execute if score 6_1 3_in_line = 5_2 3_in_line if score 5_2 3_in_line = 4_3 3_in_line if score 5_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 6_1 3_in_line = 5_2 3_in_line if score 5_2 3_in_line = 4_3 3_in_line if score 5_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 5_2 3_in_line = 4_3 3_in_line if score 4_3 3_in_line = 3_4 3_in_line if score 4_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 5_2 3_in_line = 4_3 3_in_line if score 4_3 3_in_line = 3_4 3_in_line if score 4_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_3 3_in_line = 3_4 3_in_line if score 3_4 3_in_line = 2_5 3_in_line if score 3_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_3 3_in_line = 3_4 3_in_line if score 3_4 3_in_line = 2_5 3_in_line if score 3_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_4 3_in_line = 2_5 3_in_line if score 2_5 3_in_line = 1_6 3_in_line if score 2_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_4 3_in_line = 2_5 3_in_line if score 2_5 3_in_line = 1_6 3_in_line if score 2_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 5_1 3_in_line = 4_2 3_in_line if score 4_2 3_in_line = 3_3 3_in_line if score 4_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 5_1 3_in_line = 4_2 3_in_line if score 4_2 3_in_line = 3_3 3_in_line if score 4_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_2 3_in_line = 3_3 3_in_line if score 3_3 3_in_line = 2_4 3_in_line if score 3_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_2 3_in_line = 3_3 3_in_line if score 3_3 3_in_line = 2_4 3_in_line if score 3_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_3 3_in_line = 2_4 3_in_line if score 2_4 3_in_line = 1_5 3_in_line if score 2_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_3 3_in_line = 2_4 3_in_line if score 2_4 3_in_line = 1_5 3_in_line if score 2_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 4_1 3_in_line = 3_2 3_in_line if score 3_2 3_in_line = 2_3 3_in_line if score 3_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_1 3_in_line = 3_2 3_in_line if score 3_2 3_in_line = 2_3 3_in_line if score 3_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 3_2 3_in_line = 2_3 3_in_line if score 2_3 3_in_line = 1_4 3_in_line if score 2_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_2 3_in_line = 2_3 3_in_line if score 2_3 3_in_line = 1_4 3_in_line if score 2_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 3_1 3_in_line = 2_2 3_in_line if score 2_2 3_in_line = 1_3 3_in_line if score 2_2 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 3_1 3_in_line = 2_2 3_in_line if score 2_2 3_in_line = 1_3 3_in_line if score 2_2 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 6_2 3_in_line = 5_3 3_in_line if score 5_3 3_in_line = 4_4 3_in_line if score 5_3 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 6_2 3_in_line = 5_3 3_in_line if score 5_3 3_in_line = 4_4 3_in_line if score 5_3 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 5_3 3_in_line = 4_4 3_in_line if score 4_4 3_in_line = 3_5 3_in_line if score 4_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 5_3 3_in_line = 4_4 3_in_line if score 4_4 3_in_line = 3_5 3_in_line if score 4_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 4_4 3_in_line = 3_5 3_in_line if score 3_5 3_in_line = 2_6 3_in_line if score 3_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 4_4 3_in_line = 3_5 3_in_line if score 3_5 3_in_line = 2_6 3_in_line if score 3_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 6_3 3_in_line = 5_4 3_in_line if score 5_4 3_in_line = 4_5 3_in_line if score 5_4 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 6_3 3_in_line = 5_4 3_in_line if score 5_4 3_in_line = 4_5 3_in_line if score 5_4 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
execute if score 5_4 3_in_line = 4_5 3_in_line if score 4_5 3_in_line = 3_6 3_in_line if score 4_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 5_4 3_in_line = 4_5 3_in_line if score 4_5 3_in_line = 3_6 3_in_line if score 4_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
execute if score 6_4 3_in_line = 5_5 3_in_line if score 5_5 3_in_line = 4_6 3_in_line if score 5_5 3_in_line matches 1 run execute as @a at @s run function core:files/lobby_3_in_line_bluewon
execute if score 6_4 3_in_line = 5_5 3_in_line if score 5_5 3_in_line = 4_6 3_in_line if score 5_5 3_in_line matches 2 run execute as @a at @s run function core:files/lobby_3_in_line_redwon
# # # # #
