##
 # 08_gorge_the_god.mcfunction
 # 
 #
 # Created by Lifeely.
##
##Start Loop
scoreboard players set loop_08 loop_trap 1
scoreboard players add gorge_god_timer Timer 1
scoreboard players set trap_08 trap_activated 1

execute if score gorge_god_timer Timer matches 1..24 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run teleport @s ~ ~0.1 ~
execute if score gorge_god_timer Timer matches 1..24 run particle block minecraft:ice 129.50 -40.75 71.50 0.8 0.01 0.8 0 4 normal
execute if score gorge_god_timer Timer matches 1..24 run playsound block.snow.hit record @a 129.50 -40.75 71.50 1 1.3
execute if score gorge_god_timer Timer matches 30 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run playsound entity.vindicator.ambient record @a ~ ~ ~ 1
execute if score gorge_god_timer Timer matches 30..60 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run teleport @s ~ ~ ~ facing entity @p[tag=!recorder,tag=runner]
execute if score gorge_god_timer Timer matches 40 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run playsound block.glass.place record @a ~ ~ ~ 1 1
execute if score gorge_god_timer Timer matches 40 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run particle block ice ~ ~0.5 ~ 1 1 1 0 100 normal
execute if score gorge_god_timer Timer matches 50 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run playsound block.glass.place record @a ~ ~ ~ 1 1.4
execute if score gorge_god_timer Timer matches 50 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run particle block ice ~ ~0.5 ~ 1 1 1 0 100 normal
execute if score gorge_god_timer Timer matches 60 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run playsound block.glass.place record @a ~ ~ ~ 1 1.8
execute if score gorge_god_timer Timer matches 60 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run particle block ice ~ ~0.5 ~ 1 1 1 0 100 normal
execute if score gorge_god_timer Timer matches 70 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run playsound block.glass.break record @a ~ ~ ~ 1 0.7
execute if score gorge_god_timer Timer matches 70 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run particle explosion_emitter ~ ~0.5 ~ 0 0 0 0 1 normal
execute if score gorge_god_timer Timer matches 70 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run particle block ice ~ ~0.5 ~ 1 1 1 0 200 normal
execute if score gorge_god_timer Timer matches 70 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run kill @e[tag=!recorder,tag=gorge_the_god_ice]
execute if score gorge_god_timer Timer matches 70 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run data merge entity @s {OnGround:1b,NoGravity:0b,Silent:0b,Invulnerable:1b,CustomNameVisible:1b,NoAI:0b,Motion:[0.0,0.5,0.0]}
execute if score gorge_god_timer Timer matches 70.. run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run effect give @a[tag=!recorder,distance=..1.5,tag=runner] slowness 3 0 true
execute if score gorge_god_timer Timer matches 70.. run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run effect give @a[tag=!recorder,distance=..1.5,tag=runner] bad_omen 3 0 true
execute if score gorge_god_timer Timer matches 70.. run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run execute if block ~ ~ ~ lava run particle portal ~ ~0.5 ~ 0.2 0.2 0.2 0.3 30
execute if score gorge_god_timer Timer matches 70.. run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run execute if block ~ ~ ~ lava run particle portal 130.5 -40.9 70.5 0.2 0.2 0.2 0.3 30
execute if score gorge_god_timer Timer matches 70.. run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run execute if block ~ ~ ~ lava run playsound entity.enderman.teleport record @a ~ ~ ~ 1.5 0.7
execute if score gorge_god_timer Timer matches 70.. run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run execute if block ~ ~ ~ lava run playsound entity.enderman.teleport record @a 130.5 -40.9 70.5 1.5 0.7
execute if score gorge_god_timer Timer matches 70.. run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run execute if block ~ ~ ~ lava run teleport @s 130.5 -40.9 70.5 70 0


execute if score gorge_god_timer Timer matches 410 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run data merge entity @s {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Motion:[0.0,0.5,0.0],Attributes:[{Name:generic.movement_speed,Base:0}]}
execute if score gorge_god_timer Timer matches 410 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run summon lightning_bolt ~ ~-15 ~ 
execute if score gorge_god_timer Timer matches 415 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run playsound entity.vindicator.hurt record @a ~ ~ ~ 2 1.7
execute if score gorge_god_timer Timer matches 410 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run summon block_display ~ ~ ~ {Tags:["gorge_the_god_ice"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.2f,-1.6f,-1.2f],scale:[2.2f,2.2f,2.2f]},block_state:{Name:"minecraft:ice"}}
execute if score gorge_god_timer Timer matches 410 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run ride @e[tag=!recorder,tag=gorge_the_god_ice,limit=1] mount @s
execute if score gorge_god_timer Timer matches 410 run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run playsound block.glass.break record @a ~ ~ ~ 2 0.2
execute if score gorge_god_timer Timer matches 420.. run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run teleport @s ~ ~-0.1 ~ facing entity @p[tag=!recorder,tag=runner]
execute if score gorge_god_timer Timer matches 420.. run execute as @e[tag=!recorder,tag=gorge_the_god] at @s run particle block snow_block ~ ~0.5 ~ 1 0 1 0 10 normal

execute if score gorge_god_timer Timer matches 460 run kill @e[tag=!recorder,tag=gorge_the_god]
execute if score gorge_god_timer Timer matches 460 run kill @e[tag=!recorder,tag=gorge_the_god_ice]
execute if score gorge_god_timer Timer matches 460 run scoreboard players set loop_08 loop_trap 0
execute if score gorge_god_timer Timer matches 460 run scoreboard players set gorge_god_timer Timer 0