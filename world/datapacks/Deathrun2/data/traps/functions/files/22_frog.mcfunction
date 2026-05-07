##
 # 22_.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set loop_22 loop_trap 1
scoreboard players add frog_timer Timer 1
execute if score frog_timer Timer matches 40.. run scoreboard players set loop_22 loop_trap 0
execute if score frog_timer Timer matches 40.. run clone 153 -56 86 148 -50 92 167 -40 53
execute if score frog_timer Timer matches 40.. run scoreboard players set frog_timer Timer 0
scoreboard players set trap_22 trap_activated 1
##Frog Close
#clone 153 -56 86 148 -50 92 167 -40 53

##Frog Opening
#clone 153 -56 70 148 -50 76 167 -40 53

##Frog Open
#clone 153 -56 54 148 -50 60 167 -40 53

execute if score frog_timer Timer matches 2 run playsound entity.frog.ambient record @a 167 -39 56 3 1.5
execute if score frog_timer Timer matches 4 run playsound entity.frog.tongue record @a 167 -39 56 3 1.5
execute if score frog_timer Timer matches 16 run playsound entity.frog.tongue record @a 167 -39 56 3 1
execute if score frog_timer Timer matches 33 run playsound entity.frog.eat record @a 167 -39 56 3 1

execute if score frog_timer Timer matches 1 run clone 153 -56 70 148 -50 76 167 -40 53
execute if score frog_timer Timer matches 4 run clone 153 -56 54 148 -50 60 167 -40 53
execute if score frog_timer Timer matches 5 run setblock 167 -39 56 minecraft:red_concrete
execute if score frog_timer Timer matches 6 run setblock 166 -39 56 minecraft:red_concrete
execute if score frog_timer Timer matches 7 run setblock 165 -39 56 minecraft:red_concrete
execute if score frog_timer Timer matches 8 run setblock 164 -39 56 minecraft:red_concrete
execute if score frog_timer Timer matches 9 run setblock 163 -39 56 minecraft:red_concrete
execute if score frog_timer Timer matches 10 run setblock 162 -40 56 minecraft:red_concrete
execute if score frog_timer Timer matches 11 run setblock 161 -40 56 minecraft:red_concrete
execute if score frog_timer Timer matches 12 run setblock 160 -40 56 minecraft:red_concrete
execute if score frog_timer Timer matches 13 run setblock 159 -40 56 minecraft:red_concrete
execute if score frog_timer Timer matches 14 run setblock 158 -40 56 minecraft:red_concrete
execute if score frog_timer Timer matches 15 run setblock 157 -40 56 minecraft:red_concrete
execute if score frog_timer Timer matches 16 run setblock 156 -40 56 minecraft:red_concrete
execute if score frog_timer Timer matches 16 run summon marker 156 -40 56 {Tags:["frog_tonge"],Rotation:[90f,0f]}

execute if score frog_timer Timer matches 17 run teleport @e[tag=!recorder,tag=frog_tonge] 156 -40 56
execute if score frog_timer Timer matches 18 run teleport @e[tag=!recorder,tag=frog_tonge] 157 -40 56
execute if score frog_timer Timer matches 19 run teleport @e[tag=!recorder,tag=frog_tonge] 158 -40 56
execute if score frog_timer Timer matches 20 run teleport @e[tag=!recorder,tag=frog_tonge] 159 -40 56
execute if score frog_timer Timer matches 21 run teleport @e[tag=!recorder,tag=frog_tonge] 160 -40 56
execute if score frog_timer Timer matches 22 run teleport @e[tag=!recorder,tag=frog_tonge] 161 -40 56
execute if score frog_timer Timer matches 23 run teleport @e[tag=!recorder,tag=frog_tonge] 162 -40 56
execute if score frog_timer Timer matches 24 run teleport @e[tag=!recorder,tag=frog_tonge] 163 -39 56
execute if score frog_timer Timer matches 25 run teleport @e[tag=!recorder,tag=frog_tonge] 164 -39 56
execute if score frog_timer Timer matches 26 run teleport @e[tag=!recorder,tag=frog_tonge] 165 -39 56
execute if score frog_timer Timer matches 27 run teleport @e[tag=!recorder,tag=frog_tonge] 166 -39 56
execute if score frog_timer Timer matches 27 run teleport @e[tag=!recorder,tag=frog_tonge] 167 -39 56
execute if score frog_timer Timer matches 27 run teleport @e[tag=!recorder,tag=frog_tonge] 168 -39 56
execute if score frog_timer Timer matches 27 run teleport @e[tag=!recorder,tag=frog_tonge] 169 -39 56


execute as @a[tag=!recorder,tag=runner,tag=!spectator] at @s run execute if entity @e[tag=!recorder,tag=frog_tonge,distance=..3] run tag @s add frog_eaten
execute as @a[tag=!recorder,tag=frog_eaten] at @s run teleport @s @e[tag=!recorder,tag=frog_tonge,limit=1]
execute as @a[tag=!recorder,tag=frog_eaten] at @s run effect give @s levitation 3 255 true

execute if score frog_timer Timer matches 17 run setblock 156 -40 56 minecraft:air
execute if score frog_timer Timer matches 18 run setblock 157 -40 56 minecraft:air
execute if score frog_timer Timer matches 19 run setblock 158 -40 56 minecraft:air
execute if score frog_timer Timer matches 20 run setblock 159 -40 56 minecraft:air
execute if score frog_timer Timer matches 21 run setblock 160 -40 56 minecraft:air
execute if score frog_timer Timer matches 22 run setblock 161 -40 56 minecraft:air
execute if score frog_timer Timer matches 23 run setblock 162 -40 56 minecraft:air
execute if score frog_timer Timer matches 24 run setblock 163 -39 56 minecraft:air
execute if score frog_timer Timer matches 25 run setblock 164 -39 56 minecraft:air
execute if score frog_timer Timer matches 26 run setblock 165 -39 56 minecraft:air
execute if score frog_timer Timer matches 27 run setblock 166 -39 56 minecraft:air

execute if score frog_timer Timer matches 31 run clone 153 -56 54 148 -50 60 167 -40 53
execute if score frog_timer Timer matches 32 run clone 153 -56 70 148 -50 76 167 -40 53
execute if score frog_timer Timer matches 33 run clone 153 -56 86 148 -50 92 167 -40 53

execute if score frog_timer Timer matches 33 run kill @e[tag=!recorder,tag=frog_tonge]
execute if score frog_timer Timer matches 33 run kill @a[tag=!recorder,tag=frog_eaten]

execute if score frog_timer Timer matches 35..39 run execute as @a[tag=!debug,tag=!spectator,tag=!recorder] at @s run execute if entity @s[x=169,y=-39,z=57,distance=..10] if block ~ ~ ~ structure_void run kill @s
