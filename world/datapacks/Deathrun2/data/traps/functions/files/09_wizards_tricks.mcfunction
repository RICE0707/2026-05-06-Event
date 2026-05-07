##
 # 09_wizards_tricks.mcfunction
 # 
 #
 # Created by Lifeely.
##

##Start Loop
scoreboard players set loop_09 loop_trap 1
scoreboard players add wizard_timer Timer 1

execute if score wizard_timer Timer matches 1 run summon illusioner 112.5 -35.813 75.5 {OnGround:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[-97F,25F],Tags:["wizard"],Attributes:[{Name:generic.movement_speed,Base:0}]}
execute if score wizard_timer Timer matches 1 run particle cloud 112.5 -34.813 75.5 0.1 0.1 0.1 0.26 20 normal
execute if score wizard_timer Timer matches 1 run playsound entity.illusioner.mirror_move record @a 112.5 -33.513 75.5 2.5 1.2
execute if score wizard_timer Timer matches 1 run playsound entity.vindicator.celebrate record @a 112.5 -33.513 75.5 2.5 1.2
execute if score wizard_timer Timer matches 1..10 run execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-3 ~ pink_glazed_terracotta run tag @s add wizard_trapped
execute if score wizard_timer Timer matches 10 run summon block_display 120.00 -40.875 75.00 {Rotation:[90F,0F],Tags:["wizard_cloud"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-2.5f,-1f],scale:[2f,6f,2f]},block_state:{Name:"minecraft:snow",Properties:{layers:"2"}}}
execute if score wizard_timer Timer matches 10.. run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run particle cloud ~ ~0.15 ~ 0.5 0.05 0.5 0.05 3 normal
execute if score wizard_timer Timer matches 10 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run playsound entity.firework_rocket.launch record @a ~ ~ ~ 2 1
execute if score wizard_timer Timer matches 10.. if entity @e[tag=!recorder,tag=wizard] run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run teleport @a[tag=!recorder,tag=wizard_trapped] ~ ~0.6 ~ facing entity @e[tag=!recorder,tag=wizard,limit=1]
execute if score wizard_timer Timer matches 10..51 unless entity @e[tag=!recorder,tag=wizard] run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run teleport @a[tag=!recorder,tag=wizard_trapped] ~ ~2 ~
execute if score wizard_timer Timer matches 51.. unless entity @e[tag=!recorder,tag=wizard] run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run teleport @a[tag=!recorder,tag=wizard_trapped] ~ ~3.5 ~
execute if score wizard_timer Timer matches 10.. run execute as @a[tag=!recorder,tag=wizard_trapped] at @s run effect give @s levitation 12 255 true
execute if score wizard_timer Timer matches 25..30 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run teleport @s ~ ~0.25 ~
execute if score wizard_timer Timer matches 30 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run playsound entity.firework_rocket.launch record @a ~ ~ ~ 2 1.2
execute if score wizard_timer Timer matches 30..40 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run teleport @s ~ ~0.45 ~
execute if score wizard_timer Timer matches 40 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run playsound entity.firework_rocket.launch record @a ~ ~ ~ 2 1.4
execute if score wizard_timer Timer matches 40..60 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run teleport @s ~ ~0.65 ~
execute if score wizard_timer Timer matches 60 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run playsound entity.firework_rocket.launch record @a ~ ~ ~ 2 1.6
execute if score wizard_timer Timer matches 50 run playsound entity.illusioner.mirror_move record @a 112.5 -33.513 75.5 2.5 1.2
execute if score wizard_timer Timer matches 50 run playsound entity.vindicator.celebrate record @a 112.5 -33.513 75.5 2.5 1.2
execute if score wizard_timer Timer matches 50 run particle cloud 112.5 -34.813 75.5 0.1 0.1 0.1 0.26 20 normal
execute if score wizard_timer Timer matches 50 run teleport @e[tag=!recorder,tag=wizard] ~ ~-40 ~
execute if score wizard_timer Timer matches 55 run kill @e[tag=!recorder,tag=wizard]
execute if score wizard_timer Timer matches 60..80 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run teleport @s ~ ~0.85 ~
execute if score wizard_timer Timer matches 80 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run playsound entity.firework_rocket.launch record @a ~ ~ ~ 2 1.9
execute if score wizard_timer Timer matches 80..130 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run teleport @s ~ ~0.95 ~
execute if score wizard_timer Timer matches 130 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
execute if score wizard_timer Timer matches 130 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run summon firework_rocket ~ ~-2 ~ {LifeTime:1,Flicker:1b,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;1455275],FadeColors:[I;15445509]}]}}}}
execute if score wizard_timer Timer matches 130 run kill @a[tag=!recorder,tag=wizard_trapped]
execute if score wizard_timer Timer matches 130 run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run kill @s
execute if score wizard_timer Timer matches 140 run effect clear @a[tag=!recorder,tag=wizard_trapped] levitation
execute if score wizard_timer Timer matches 140 run tag @a[tag=!recorder,tag=wizard_trapped] remove wizard_trapped
execute if score wizard_timer Timer matches 1.. run execute as @e[tag=!recorder,tag=wizard_cloud] at @s run particle firework ~ ~-0.5 ~ 0.1 0.1 0.1 0 2 normal

scoreboard players set trap_09 trap_activated 1

execute if score wizard_timer Timer matches 140.. run scoreboard players set loop_09 loop_trap 0
execute if score wizard_timer Timer matches 140.. run scoreboard players set wizard_timer Timer 0
