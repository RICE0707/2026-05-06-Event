##
 # 37_.mcfunction
 # 
 #
 # Created by .
##

##Start the loop cycle
scoreboard players set loop_37 loop_trap 1
scoreboard players add backup_plan_timer Timer 1

scoreboard players set trap_37 trap_activated 1
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[x=171.0,y=-41.0,z=90.0,distance=..4.5] run tag @s add spectral_backwards


execute if score backup_plan_timer Timer matches 1 run summon spectral_arrow 171.0 -40 90.0 {Silent:1b,pickup:0b,player:0b,Motion:[-0.345,1.0,0.0]}
execute if score backup_plan_timer Timer matches 1 run playsound minecraft:block.piston.extend record @a 171.00 -41.50 89.99 2
execute if score backup_plan_timer Timer matches 1 run clone 190 -53 82 189 -52 89 173 -42 86
execute if score backup_plan_timer Timer matches 2 run clone 190 -53 82 189 -52 89 173 -41 86
execute if score backup_plan_timer Timer matches 2 run clone 188 -53 82 185 -52 89 169 -42 86
execute if score backup_plan_timer Timer matches 3 run clone 190 -53 82 189 -52 89 173 -40 86
execute if score backup_plan_timer Timer matches 3 run clone 188 -53 82 185 -52 89 169 -41 86
execute if score backup_plan_timer Timer matches 3 run clone 184 -53 82 183 -51 89 167 -42 86

execute if score backup_plan_timer Timer matches 5 run playsound minecraft:block.piston.contract record @a 171.00 -41.50 89.99 2
execute if score backup_plan_timer Timer matches 5 run clone 190 -52 82 189 -51 89 173 -39 86
execute if score backup_plan_timer Timer matches 6 run clone 190 -52 82 187 -51 89 171 -40 86
execute if score backup_plan_timer Timer matches 7 run clone 190 -52 82 185 -51 89 169 -41 86
execute if score backup_plan_timer Timer matches 8 run clone 190 -52 82 183 -51 89 167 -42 86


execute if score backup_plan_timer Timer matches 10.. run scoreboard players set loop_37 loop_trap 0
execute if score backup_plan_timer Timer matches 10.. run scoreboard players set backup_plan_timer Timer 0

