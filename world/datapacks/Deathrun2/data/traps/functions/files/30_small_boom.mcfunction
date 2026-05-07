##
 # 30_.mcfunction
 # 
 #
 # Created by .
##

##Start Loop
scoreboard players set loop_30 loop_trap 1
scoreboard players add small_boom_timer Timer 1

##Summon plane and after 41 ticks drop an arrow towards the ground

execute if score small_boom_timer Timer matches 1 run summon arrow 240.50 -26.50 79.00 {NoGravity:1b,player:0b,life:10,Motion:[0.0,0.0,-1.8],Tags:["bomb_plane","decoration"],Passengers:[{id:"minecraft:item_display",Tags:["bomb_plane"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.7f,0f],scale:[2.5f,2.5f,2.5f]},item:{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:200}}}]}

##After 41 ticks spawn arrow towards ground and after 70ticks kill plane and surroundings 3blocks also drop bomb that explodes in tick nr 56
execute as @e[tag=!recorder,tag=bomb_plane,type=!item_display] at @s run particle campfire_cosy_smoke ~0.5 ~ ~0.5 0 0 0 0 2
execute as @e[tag=!recorder,tag=bomb_plane,type=!item_display] at @s run particle campfire_cosy_smoke ~-0.5 ~ ~0.5 0 0 0 0 2
execute as @e[tag=!recorder,tag=falling_bomb,type=!item_display] at @s run particle large_smoke ~ ~0.5 ~0.5 0.2 0.2 0.2 0 5
execute as @e[tag=!recorder,type=arrow,tag=bomb_plane] at @s run scoreboard players add @s kill_self 1
execute as @e[tag=!recorder,type=arrow,tag=bomb_plane] at @s unless entity @e[tag=falling_bomb,x=240,z=21,distance=..10] unless entity @e[tag=falling_bomb] if score @s kill_self matches 22..25 run summon arrow ~ ~-0.3 ~ {player:0b,life:300,Motion:[0.0,-0.05,-1.15],Tags:["falling_bomb","bomb_plane_dropped"],Passengers:[{id:"minecraft:item_display",item_display:"head",Tags:["bomb_plane_dropped"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.7f,0f],scale:[2.5f,2.5f,2.5f]},item:{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:303}}}]}
execute as @e[tag=!recorder,type=arrow,tag=bomb_plane] at @s if score @s kill_self matches 70.. run kill @e[tag=!recorder,distance=..3]
execute if score small_boom_timer Timer matches 46 run execute as @a at @s run playsound entity.generic.explode master @s
execute if score small_boom_timer Timer matches 70.. run execute as @e[tag=!recorder,tag=bomb_plane] at @s run kill @s
execute if score small_boom_timer Timer matches 46.. run execute as @e[tag=!recorder,tag=bomb_plane_dropped] at @s run summon fireball ~ ~ ~ {HasVisualFire:0b,ExplosionPower:8b,power:[0.0,-1.0,0.0],Tags:["bomb_plane"],Item:{id:"minecraft:air",Count:1b}}
execute if score small_boom_timer Timer matches 46.. run execute as @e[tag=!recorder,tag=bomb_plane_dropped] at @s run kill @s
scoreboard players set trap_30 trap_activated 1

##Break the loop after 5sec
execute if score small_boom_timer Timer matches 71.. run scoreboard players set loop_30 loop_trap 0
execute if score small_boom_timer Timer matches 71.. run scoreboard players set small_boom_timer Timer 0