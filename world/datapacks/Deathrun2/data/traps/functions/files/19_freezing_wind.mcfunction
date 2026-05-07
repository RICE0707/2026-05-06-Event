##
 # 19_freezing_wind.mcfunction
 # 
 #
 # Created by Lifeely.
##
scoreboard players set trap_19 trap_activated 1
##Start Loop
scoreboard players set loop_19 loop_trap 1
scoreboard players add freeze_wind_timer Timer 1
scoreboard players add freeze_wind_timer_sound Timer 1
execute if score freeze_wind_timer_sound Timer matches 5.. run scoreboard players set freeze_wind_timer_sound Timer 0

execute if score freeze_wind_timer Timer matches 1 run execute as @e[tag=!recorder,tag=snow_wind_turbine] at @s run data merge entity @s {item:{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:209}}}
execute if score freeze_wind_timer Timer matches 1.. run particle minecraft:snowflake 141.53 -39.00 110.48 3 1.5 3 0.25 50 normal
execute if score freeze_wind_timer Timer matches 1.. run particle minecraft:dust 0.999 0.999 1 3 141.53 -39.00 110.48 3 1.5 3 0.25 30 normal

execute if score freeze_wind_timer Timer matches 1.. run particle cloud 135.5 -41 110.5 0.75 0 0.75 0 1 force
execute if score freeze_wind_timer Timer matches 1.. run particle cloud 138.5 -41 113.5 0.75 0 0.75 0 1 force
execute if score freeze_wind_timer Timer matches 1.. run particle cloud 141.5 -41 116.5 0.75 0 0.75 0 1 force

execute if score freeze_wind_timer Timer matches 1.. run particle cloud 138.5 -41 107.5 0.75 0 0.75 0 1 force
execute if score freeze_wind_timer Timer matches 1.. run particle cloud 141.5 -41 110.5 0.75 0 0.75 0 1 force
execute if score freeze_wind_timer Timer matches 1.. run particle cloud 144.5 -41 113.5 0.75 0 0.75 0 1 force

execute if score freeze_wind_timer Timer matches 1.. run particle cloud 141.5 -41 104.5 0.75 0 0.75 0 1 force
execute if score freeze_wind_timer Timer matches 1.. run particle cloud 144.5 -41 107.5 0.75 0 0.75 0 1 force
execute if score freeze_wind_timer Timer matches 1.. run particle cloud 147.5 -41 110.5 0.75 0 0.75 0 1 force

execute if score freeze_wind_timer_sound Timer matches 1 run playsound entity.warden.step record @a 141.53 -41.00 110.48 1 1.2
execute if score freeze_wind_timer_sound Timer matches 2 run playsound entity.warden.step record @a 141.53 -41.00 110.48 1 1
execute if score freeze_wind_timer_sound Timer matches 3 run playsound entity.warden.step record @a 141.53 -41.00 110.48 1 0.7
execute if score freeze_wind_timer_sound Timer matches 4 run playsound entity.warden.step record @a 141.53 -41.00 110.48 1 0.9

##Stop loop
execute if score freeze_wind_timer Timer matches 250 run execute as @e[tag=!recorder,tag=snow_wind_turbine] at @s run data merge entity @s {item:{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:210}}}
execute if score freeze_wind_timer Timer matches 250.. run scoreboard players set loop_19 loop_trap 0
execute if score freeze_wind_timer Timer matches 250.. run scoreboard players set freeze_wind_timer Timer 0
