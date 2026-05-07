##
 # 20_.mcfunction
 # 
 #
 # Created by .
##
##Start Loop
scoreboard players set loop_20 loop_trap 1
scoreboard players add parkour_portal_timer Timer 1

execute if score parkour_portal_timer Timer matches 1 run execute as @e[tag=!recorder,tag=nether_portal_trap20] at @s run data merge entity @s {block_state:{Name:"minecraft:nether_portal"}}
execute if score parkour_portal_timer Timer matches 1 run playsound music_disc.mellohi record @a 153.00 -31.99 107.05 2 1.18
execute if score parkour_portal_timer Timer matches 1 run playsound music_disc.mellohi record @a 143.98 -30.00 98.00 2 1.18
execute if score parkour_portal_timer Timer matches 100 run stopsound @a record music_disc.mellohi

execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @s[x=151,z=100,distance=..15] if block ~ ~ ~ structure_void run function traps:files/_player_die

##Sounds from portal
execute if score parkour_portal_timer Timer matches 10 run playsound entity.piglin.ambient record @a 154.48 -37.31 102.56 2 1 
execute if score parkour_portal_timer Timer matches 20 run playsound entity.piglin.ambient record @a 152.42 -35.31 100.58 2 1 
execute if score parkour_portal_timer Timer matches 30 run playsound entity.piglin.admiring_item record @a 152 -40 99 2 1 
execute if score parkour_portal_timer Timer matches 40 run playsound entity.piglin.celebrate record @a 153 -39 103 2 1 
execute if score parkour_portal_timer Timer matches 50 run playsound entity.zombified_piglin.angry record @a 148 -38 97 2 1 
execute if score parkour_portal_timer Timer matches 60 run playsound entity.piglin.retreat record @a 151 -36 99 2 1 
execute if score parkour_portal_timer Timer matches 70 run playsound entity.zombified_piglin.angry record @a 152 -41 101 2 1 
execute if score parkour_portal_timer Timer matches 80 run playsound entity.zombified_piglin.angry record @a 147 -38 97 2 1 
execute if score parkour_portal_timer Timer matches 85 run playsound entity.zombified_piglin.angry record @a 153 -39 103 2 1
execute if score parkour_portal_timer Timer matches 90 run playsound entity.piglin.retreat record @a 153 -36 103 2 1 

##Portal break animation and sound
execute if score parkour_portal_timer Timer matches 100 run playsound block.glass.break record @a 151 -37 100 2 0.7
execute if score parkour_portal_timer Timer matches 100 run particle block nether_portal 147.50 -37.5 97.50 0.25 2 0.25 0 20
execute if score parkour_portal_timer Timer matches 100 run particle block nether_portal 148.50 -37.5 98.50 0.25 2 0.25 0 20
execute if score parkour_portal_timer Timer matches 100 run particle block nether_portal 149.50 -37.5 99.50 0.25 2 0.25 0 20
execute if score parkour_portal_timer Timer matches 100 run particle block nether_portal 150.50 -37.5 100.50 0.25 2 0.25 0 20
execute if score parkour_portal_timer Timer matches 100 run particle block nether_portal 151.50 -37.5 101.50 0.25 2 0.25 0 20
execute if score parkour_portal_timer Timer matches 100 run particle block nether_portal 152.50 -37.5 102.50 0.25 2 0.25 0 20
execute if score parkour_portal_timer Timer matches 100 run particle block nether_portal 153.50 -37.5 103.50 0.25 2 0.25 0 20

scoreboard players set trap_20 trap_activated 1

execute if score parkour_portal_timer Timer matches 100.. run execute as @e[tag=!recorder,tag=nether_portal_trap20] at @s run data merge entity @s {block_state:{Name:"minecraft:air"}}
execute if score parkour_portal_timer Timer matches 100.. run scoreboard players set loop_20 loop_trap 0
execute if score parkour_portal_timer Timer matches 100.. run scoreboard players set parkour_portal_timer Timer 0


