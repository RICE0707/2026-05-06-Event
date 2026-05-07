##
 # _stamina_show_level.mcfunction
 # 
 #
 # Created by Lifeely.
##

##Anti speedrun function, makes the player when running for too long, slower and can't jump
scoreboard players add anti_speedrun_timer Timer 1
scoreboard players add anti_speedrun_timer2 Timer 1

##Show player the slow down text when they are sprinting
execute if score anti_speedrun_timer Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun matches ..40 run title @s times 5 10 5
execute if score anti_speedrun_timer Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun matches ..40 run title @s title {"translate":"systems.functions._stamina_show_level.1","color":"red"}
execute if score anti_speedrun_timer Timer matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun matches ..40 run title @s subtitle {"translate":"systems.functions._stamina_show_level.2","color":"dark_red","bold": true}

##When player jumps remove 15 and reset the detector scoreboard
execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun_jump matches 1.. run scoreboard players remove @s anti_speedrun 5

##When player sprints remove 1 and reset the detector scoreboard
execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun_sprint matches 1.. if score anti_speedrun_timer2 Timer matches 1 run scoreboard players remove @s anti_speedrun 1

##Regenerating the scoreboard when player is not running or jumping
execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun matches ..99 unless score @s anti_speedrun_jump matches 1.. unless entity @s[nbt={OnGround:0b}] unless score @s anti_speedrun_sprint matches 1.. run scoreboard players add @s anti_speedrun 1


execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun_jump matches 1.. run scoreboard players set @s anti_speedrun_jump 0
execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun_sprint matches 1.. run scoreboard players set @s anti_speedrun_sprint 0

execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun matches 101.. run scoreboard players set @s anti_speedrun 100
execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun matches ..-1 run scoreboard players set @s anti_speedrun 0

execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun matches ..40 run effect give @s slowness 1 3 true
execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s anti_speedrun matches 90 run effect give @s regeneration 1 3

execute if score anti_speedrun_timer Timer matches 20.. run scoreboard players set anti_speedrun_timer Timer 0
execute if score anti_speedrun_timer2 Timer matches 4.. run scoreboard players set anti_speedrun_timer2 Timer 0


execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 0 run xp set @s 0 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 1 run xp set @s 1 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 2 run xp set @s 2 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 3 run xp set @s 3 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 4 run xp set @s 4 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 5 run xp set @s 5 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 6 run xp set @s 6 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 7 run xp set @s 7 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 8 run xp set @s 8 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 9 run xp set @s 9 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 10 run xp set @s 10 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 15 run xp set @s 15 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 20 run xp set @s 20 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 25 run xp set @s 25 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 30 run xp set @s 30 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 35 run xp set @s 35 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 40 run xp set @s 40 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 45 run xp set @s 45 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 50 run xp set @s 50 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 55 run xp set @s 55 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 60 run xp set @s 60 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 65 run xp set @s 65 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 70 run xp set @s 70 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 75 run xp set @s 75 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 80 run xp set @s 80 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 85 run xp set @s 85 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 90 run xp set @s 90 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 95 run xp set @s 95 levels
execute as @a[tag=!recorder,tag=runner] at @s run execute unless score @s anti_speedrun_jump matches 1.. unless score @s anti_speedrun_sprint matches 1.. if score @s anti_speedrun matches 100 run xp set @s 100 levels
