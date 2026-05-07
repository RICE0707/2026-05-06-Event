##
 # 34_viking_ship.mcfunction
 # 
 #
 # Created by Lifeely.
##
##Start the loop cycle
scoreboard players set loop_34 loop_trap 1
scoreboard players add viking_ship_timer Timer 1
scoreboard players set trap_34 trap_activated 1
##When players on bridge, and there is no player with an viking tag, then give them tag
execute if score viking_ship_timer Timer matches 1..30 unless entity @a[tag=!recorder,tag=viking_01] run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=!spectator,tag=!viking_01,tag=!viking_02,tag=!viking_03,tag=!viking_04,tag=!viking_05,tag=!viking_06,distance=..2.5,limit=1,sort=random] add viking_01
execute if score viking_ship_timer Timer matches 1..30 unless entity @a[tag=!recorder,tag=viking_02] run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=!spectator,tag=!viking_01,tag=!viking_02,tag=!viking_03,tag=!viking_04,tag=!viking_05,tag=!viking_06,distance=..2.5,limit=1,sort=random] add viking_02
execute if score viking_ship_timer Timer matches 1..30 unless entity @a[tag=!recorder,tag=viking_03] run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=!spectator,tag=!viking_01,tag=!viking_02,tag=!viking_03,tag=!viking_04,tag=!viking_05,tag=!viking_06,distance=..2.5,limit=1,sort=random] add viking_03
execute if score viking_ship_timer Timer matches 1..30 unless entity @a[tag=!recorder,tag=viking_04] run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=!spectator,tag=!viking_01,tag=!viking_02,tag=!viking_03,tag=!viking_04,tag=!viking_05,tag=!viking_06,distance=..2.5,limit=1,sort=random] add viking_04
execute if score viking_ship_timer Timer matches 1..30 unless entity @a[tag=!recorder,tag=viking_05] run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=!spectator,tag=!viking_01,tag=!viking_02,tag=!viking_03,tag=!viking_04,tag=!viking_05,tag=!viking_06,distance=..2.5,limit=1,sort=random] add viking_05
execute if score viking_ship_timer Timer matches 1..30 unless entity @a[tag=!recorder,tag=viking_06] run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=!spectator,tag=!viking_01,tag=!viking_02,tag=!viking_03,tag=!viking_04,tag=!viking_05,tag=!viking_06,distance=..2.5,limit=1,sort=random] add viking_06

execute if score viking_ship_timer Timer matches 1..30 run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=viking_01] add viking_player
execute if score viking_ship_timer Timer matches 1..30 run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=viking_02] add viking_player
execute if score viking_ship_timer Timer matches 1..30 run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=viking_03] add viking_player
execute if score viking_ship_timer Timer matches 1..30 run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=viking_04] add viking_player
execute if score viking_ship_timer Timer matches 1..30 run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=viking_05] add viking_player
execute if score viking_ship_timer Timer matches 1..30 run execute as @e[tag=!recorder,type=marker,tag=viking_capture_player] at @s run tag @a[tag=!recorder,tag=viking_06] add viking_player

##Make players with their tags, ride the right seat
execute if score viking_ship_timer Timer matches 1..60 run execute as @a[tag=!recorder,tag=viking_01] at @s run ride @s mount @e[tag=!recorder,type=armor_stand,tag=viking_01,limit=1]
execute if score viking_ship_timer Timer matches 1..60 run execute as @a[tag=!recorder,tag=viking_02] at @s run ride @s mount @e[tag=!recorder,type=armor_stand,tag=viking_02,limit=1]
execute if score viking_ship_timer Timer matches 1..60 run execute as @a[tag=!recorder,tag=viking_03] at @s run ride @s mount @e[tag=!recorder,type=armor_stand,tag=viking_03,limit=1]
execute if score viking_ship_timer Timer matches 1..60 run execute as @a[tag=!recorder,tag=viking_04] at @s run ride @s mount @e[tag=!recorder,type=armor_stand,tag=viking_04,limit=1]
execute if score viking_ship_timer Timer matches 1..60 run execute as @a[tag=!recorder,tag=viking_05] at @s run ride @s mount @e[tag=!recorder,type=armor_stand,tag=viking_05,limit=1]
execute if score viking_ship_timer Timer matches 1..60 run execute as @a[tag=!recorder,tag=viking_06] at @s run ride @s mount @e[tag=!recorder,type=armor_stand,tag=viking_06,limit=1]

##Ship animation and particles
execute if score viking_ship_timer Timer matches 1..55 run execute as @e[tag=!recorder,tag=viking_ship,type=item_display] at @s run particle bubble_column_up ~ ~-1.2 ~ 0.6 0.05 0.6 0 15
execute if score viking_ship_timer Timer matches 1..35 run execute as @e[tag=!recorder,tag=viking_ship,type=item_display] at @s run particle splash ~ ~-1.2 ~ 0.6 0.05 0.6 0 15
execute if score viking_ship_timer Timer matches 1 run execute as @e[tag=!recorder,tag=viking_ship,type=item_display] at @s run playsound entity.boat.paddle_water record @a ~ ~ ~ 1.5 1.3
execute if score viking_ship_timer Timer matches 10 run execute as @e[tag=!recorder,tag=viking_ship,type=item_display] at @s run playsound entity.boat.paddle_water record @a ~ ~ ~ 1.5 1.3
execute if score viking_ship_timer Timer matches 20 run execute as @e[tag=!recorder,tag=viking_ship,type=item_display] at @s run playsound entity.boat.paddle_water record @a ~ ~ ~ 1.5 1.3
execute if score viking_ship_timer Timer matches 30 run execute as @e[tag=!recorder,tag=viking_ship,type=item_display] at @s run playsound entity.boat.paddle_water record @a ~ ~ ~ 1.5 1.3
execute if score viking_ship_timer Timer matches 40 run execute as @e[tag=!recorder,tag=viking_ship,type=item_display] at @s run playsound entity.boat.paddle_water record @a ~ ~ ~ 1.5 1.0
execute if score viking_ship_timer Timer matches 50 run execute as @e[tag=!recorder,tag=viking_ship,type=item_display] at @s run playsound entity.boat.paddle_water record @a ~ ~ ~ 1.5 0.7
execute if score viking_ship_timer Timer matches 60 run execute as @e[tag=!recorder,tag=viking_ship,type=item_display] at @s run playsound entity.boat.paddle_water record @a ~ ~ ~ 1.5 0.5
execute if score viking_ship_timer Timer matches 1..30 run execute as @e[tag=!recorder,tag=viking_ship] at @s run teleport @s ~-0.3 ~ ~-0.3
execute if score viking_ship_timer Timer matches 30..40 run execute as @e[tag=!recorder,tag=viking_ship] at @s run teleport @s ~-0.25 ~-0.125 ~-0.25
execute if score viking_ship_timer Timer matches 40..50 run execute as @e[tag=!recorder,tag=viking_ship] at @s run teleport @s ~-0.175 ~-0.175 ~-0.175
execute if score viking_ship_timer Timer matches 50..60 run execute as @e[tag=!recorder,tag=viking_ship] at @s run teleport @s ~-0.1 ~-0.225 ~-0.1
execute if score viking_ship_timer Timer matches 60 run execute as @e[tag=!recorder,tag=viking_ship,type=item_display] at @s run playsound entity.zombie.break_wooden_door record @a ~ ~ ~ 1 0.4
execute if score viking_ship_timer Timer matches 60 run execute as @e[tag=!recorder,tag=viking_ship] at @s run particle block oak_planks ~ ~ ~ 0.7 0.2 0.7 0.25 30
execute if score viking_ship_timer Timer matches 60 run execute as @e[tag=!recorder,tag=viking_ship] at @s run kill @s
##When trap done, remove the anti water tag from players
execute if score viking_ship_timer Timer matches 60 run execute as @a[tag=!recorder,tag=viking_player] at @s run tag @s remove viking_player




execute if score viking_ship_timer Timer matches 60.. run scoreboard players set loop_34 loop_trap 0
execute if score viking_ship_timer Timer matches 60.. run scoreboard players set viking_ship_timer Timer 0

