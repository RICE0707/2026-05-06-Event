##
 # 15_giant_snowball.mcfunction
 # 
 #
 # Created by Lifeely.
##
##Start Loop
scoreboard players set loop_15 loop_trap 1
scoreboard players add g_snowball_timer Timer 1

execute if score g_snowball_timer Timer matches 1 run fill 83 -22 122 87 -25 119 air destroy
execute if score g_snowball_timer Timer matches 1 run playsound block.wood.break record @a 85 -23 120 1.5 0.8
execute if score g_snowball_timer Timer matches 1.. run execute as @e[tag=!recorder,type=block_display,tag=giant_snowball] at @s run teleport @s ^ ^0.2 ^1.2 facing 85.50 -43 128.50

execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[x=85,z=127.5,distance=..5.5] run execute if score g_snowball_timer Timer matches 15..17 run function traps:files/_player_die

execute as @e[tag=!recorder,type=block_display,tag=giant_snowball] at @s if entity @s[x=85,y=-41,z=127.5,distance=..2] run clone 102 -57 128 98 -52 124 83 -41 126
execute as @e[tag=!recorder,type=block_display,tag=giant_snowball] at @s if entity @s[x=85,y=-41,z=127.5,distance=..2] run kill @s


scoreboard players set trap_15 trap_activated 1

execute if score g_snowball_timer Timer matches 30.. run kill @e[tag=!recorder,type=block_display,tag=giant_snowball]
execute if score g_snowball_timer Timer matches 30.. run clone 102 -57 128 98 -52 124 83 -41 126
execute if score g_snowball_timer Timer matches 30.. run scoreboard players set loop_15 loop_trap 0
execute if score g_snowball_timer Timer matches 30.. run scoreboard players set g_snowball_timer Timer 0