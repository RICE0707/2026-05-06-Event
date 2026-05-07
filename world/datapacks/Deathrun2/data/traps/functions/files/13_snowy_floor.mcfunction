##
 # 13_.mcfunction
 # 
 #
 # Created by .
##

##Start Loop
scoreboard players set loop_13 loop_trap 1
scoreboard players add snowy_timer Timer 1

##Break the loop
execute if score snowy_timer Timer matches 120.. run scoreboard players set loop_13 loop_trap 0
execute if score snowy_timer Timer matches 120.. run scoreboard players set snowy_timer Timer 0
scoreboard players set trap_13 trap_activated 1

execute if score snowy_timer Timer matches 1 run clone 69 -56 119 60 -54 125 60 -44 111

##Leftside falling blocks
execute if score snowy_timer Timer matches 60 run fill 69 -42 111 69 -42 117 snow_block
execute if score snowy_timer Timer matches 60 run summon falling_block 69 -32 111 {BlockState:{Name:"minecraft:snow",Properties:{layers:"3"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 62 run summon falling_block 69 -32 112 {BlockState:{Name:"minecraft:snow",Properties:{layers:"1"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 64 run summon falling_block 69 -32 113 {BlockState:{Name:"minecraft:snow",Properties:{layers:"1"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 66 run summon falling_block 69 -32 114 {BlockState:{Name:"minecraft:snow",Properties:{layers:"2"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 68 run summon falling_block 69 -32 115 {BlockState:{Name:"minecraft:snow",Properties:{layers:"3"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 70 run summon falling_block 69 -32 116 {BlockState:{Name:"minecraft:snow",Properties:{layers:"1"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 72 run summon falling_block 69 -32 117 {BlockState:{Name:"minecraft:snow",Properties:{layers:"2"}},Time:1,Tags:["spawn"]}
##RightSide falling blocks
execute if score snowy_timer Timer matches 60 run fill 60 -42 111 60 -42 117 snow_block 
execute if score snowy_timer Timer matches 60 run summon falling_block 60 -32 111 {BlockState:{Name:"minecraft:snow",Properties:{layers:"3"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 62 run summon falling_block 60 -32 112 {BlockState:{Name:"minecraft:snow",Properties:{layers:"2"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 64 run summon falling_block 60 -32 113 {BlockState:{Name:"minecraft:snow",Properties:{layers:"2"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 66 run summon falling_block 60 -32 114 {BlockState:{Name:"minecraft:snow",Properties:{layers:"3"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 68 run summon falling_block 60 -32 115 {BlockState:{Name:"minecraft:snow",Properties:{layers:"2"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 70 run summon falling_block 60 -32 116 {BlockState:{Name:"minecraft:snow",Properties:{layers:"2"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 72 run summon falling_block 60 -32 117 {BlockState:{Name:"minecraft:snow",Properties:{layers:"3"}},Time:1,Tags:["spawn"]}
##Middle parkour falling blocks
execute if score snowy_timer Timer matches 40 run setblock 64 -42 113 snow_block
execute if score snowy_timer Timer matches 40 run summon falling_block 64 -32 113 {BlockState:{Name:"minecraft:snow",Properties:{layers:"2"}},Time:1,Tags:["spawn"]}
execute if score snowy_timer Timer matches 45 run setblock 65 -42 116 snow_block
execute if score snowy_timer Timer matches 45 run summon falling_block 65 -32 116 {BlockState:{Name:"minecraft:snow",Properties:{layers:"3"}},Time:1,Tags:["spawn"]}


##When falling blocks spawn, playsound and particles
execute as @e[tag=!recorder,tag=spawn,type=falling_block] at @s run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute as @e[tag=!recorder,tag=spawn,type=falling_block] at @s run playsound block.snow.place record @a ~ ~ ~ 1 1
execute as @e[tag=!recorder,tag=spawn,type=falling_block] at @s run tag @s remove spawn





##Default
##clone 69 -56 111 60 -53 117 60 -44 111

##Fallen
##clone 69 -56 119 60 -54 125 60 -44 111





