##
 # 29_pirates.mcfunction
 # 
 #
 # Created by Lifeely.
##
##Start loop
scoreboard players set loop_29 loop_trap 1 
scoreboard players add pirates_timer Timer 1

##Opens the graves and after 0.25 sec spawn skeletons that rise from the ground
execute if score pirates_timer Timer matches 1..28 run fill 227 -41 2 234 -41 11 minecraft:oak_trapdoor[facing=west,half=bottom,open=true] replace minecraft:oak_trapdoor
execute if score pirates_timer Timer matches 1..28 run fill 239 -41 8 236 -41 6 minecraft:oak_trapdoor[facing=south,half=bottom,open=true] replace minecraft:oak_trapdoor
execute if score pirates_timer Timer matches 32 run fill 227 -41 2 234 -41 11 minecraft:oak_trapdoor[facing=west,half=bottom,open=false] replace minecraft:oak_trapdoor
execute if score pirates_timer Timer matches 32 run fill 239 -41 8 236 -41 6 minecraft:oak_trapdoor[facing=south,half=bottom,open=false] replace minecraft:oak_trapdoor

##When opened then playsound that trapdoor were opened
execute if score pirates_timer Timer matches 1 run playsound minecraft:block.wooden_trapdoor.open record @a 227.5 -45 3.0 1.5 0.8
execute if score pirates_timer Timer matches 1 run playsound minecraft:block.wooden_trapdoor.open record @a 229.5 -45 9.0 1.5 0.8
execute if score pirates_timer Timer matches 1 run playsound minecraft:block.wooden_trapdoor.open record @a 232.5 -45 4.0 1.5 0.8
execute if score pirates_timer Timer matches 1 run playsound minecraft:block.wooden_trapdoor.open record @a 232.5 -45 11.0 1.5 0.8
execute if score pirates_timer Timer matches 1 run playsound minecraft:block.wooden_trapdoor.open record @a 234.5 -45 4.0 1.5 0.8
execute if score pirates_timer Timer matches 1 run playsound minecraft:block.wooden_trapdoor.open record @a 237.0 -45 6.5 1.5 0.8
execute if score pirates_timer Timer matches 1 run playsound minecraft:block.wooden_trapdoor.open record @a 239.0 -45 8.5 1.5 0.8

##When closed then playsound that trapdoor were closed
execute if score pirates_timer Timer matches 32 run playsound minecraft:block.wooden_trapdoor.close record @a 227.5 -45 3.0 1.5 0.8
execute if score pirates_timer Timer matches 32 run playsound minecraft:block.wooden_trapdoor.close record @a 229.5 -45 9.0 1.5 0.8
execute if score pirates_timer Timer matches 32 run playsound minecraft:block.wooden_trapdoor.close record @a 232.5 -45 4.0 1.5 0.8
execute if score pirates_timer Timer matches 32 run playsound minecraft:block.wooden_trapdoor.close record @a 232.5 -45 11.0 1.5 0.8
execute if score pirates_timer Timer matches 32 run playsound minecraft:block.wooden_trapdoor.close record @a 234.5 -45 4.0 1.5 0.8
execute if score pirates_timer Timer matches 32 run playsound minecraft:block.wooden_trapdoor.close record @a 237.0 -45 6.5 1.5 0.8
execute if score pirates_timer Timer matches 32 run playsound minecraft:block.wooden_trapdoor.close record @a 239.0 -45 8.5 1.5 0.8

##Spawn pirates underground in sand
execute if score pirates_timer Timer matches 5 run summon skeleton 227.5 -45 3.0 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:3f,Rotation:[0F,-90F],Tags:["pirates","pirate_01"],HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.knockback_resistance,Base:-0.3},{Name:generic.attack_damage,Base:3},{Name:generic.attack_knockback,Base:1},{Name:generic.movement_speed,Base:0.4}]}
execute if score pirates_timer Timer matches 6 run summon skeleton 229.5 -45 9.0 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:3f,Rotation:[0F,-90F],Tags:["pirates","pirate_02"],HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.knockback_resistance,Base:-0.3},{Name:generic.attack_damage,Base:3},{Name:generic.attack_knockback,Base:1},{Name:generic.movement_speed,Base:0.4}]}
execute if score pirates_timer Timer matches 7 run summon skeleton 232.5 -45 4.0 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:3f,Rotation:[0F,-90F],Tags:["pirates","pirate_03"],HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.knockback_resistance,Base:-0.3},{Name:generic.attack_damage,Base:3},{Name:generic.attack_knockback,Base:1},{Name:generic.movement_speed,Base:0.4}]}
execute if score pirates_timer Timer matches 8 run summon skeleton 232.5 -45 11.0 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:3f,Rotation:[0F,-90F],Tags:["pirates","pirate_04"],HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.knockback_resistance,Base:-0.3},{Name:generic.attack_damage,Base:3},{Name:generic.attack_knockback,Base:1},{Name:generic.movement_speed,Base:0.4}]}
execute if score pirates_timer Timer matches 9 run summon skeleton 234.5 -45 4.0 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:3f,Rotation:[0F,-90F],Tags:["pirates","pirate_05"],HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.knockback_resistance,Base:-0.3},{Name:generic.attack_damage,Base:3},{Name:generic.attack_knockback,Base:1},{Name:generic.movement_speed,Base:0.4}]}
execute if score pirates_timer Timer matches 10 run summon skeleton 237.0 -45 6.5 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:3f,Rotation:[0F,-90F],Tags:["pirates","pirate_06"],HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.knockback_resistance,Base:-0.3},{Name:generic.attack_damage,Base:3},{Name:generic.attack_knockback,Base:1},{Name:generic.movement_speed,Base:0.4}]}
execute if score pirates_timer Timer matches 11 run summon skeleton 239.0 -45 8.5 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:3f,Rotation:[0F,-90F],Tags:["pirates","pirate_07"],HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.knockback_resistance,Base:-0.3},{Name:generic.attack_damage,Base:3},{Name:generic.attack_knockback,Base:1},{Name:generic.movement_speed,Base:0.4}]}

##When skeleton spawning then spawn particles and playsound
execute if score pirates_timer Timer matches 5..22 run execute as @e[tag=!recorder,type=skeleton,tag=pirates] at @s run particle block sand ~ ~1 ~ 0.25 0.25 0.25 0 2 normal
execute if score pirates_timer Timer matches 6..23 run execute as @e[tag=!recorder,type=skeleton,tag=pirates] at @s run particle block sand ~ ~1 ~ 0.25 0.25 0.25 0 2 normal
execute if score pirates_timer Timer matches 7..24 run execute as @e[tag=!recorder,type=skeleton,tag=pirates] at @s run particle block sand ~ ~1 ~ 0.25 0.25 0.25 0 2 normal
execute if score pirates_timer Timer matches 8..25 run execute as @e[tag=!recorder,type=skeleton,tag=pirates] at @s run particle block sand ~ ~1 ~ 0.25 0.25 0.25 0 2 normal
execute if score pirates_timer Timer matches 9..26 run execute as @e[tag=!recorder,type=skeleton,tag=pirates] at @s run particle block sand ~ ~1 ~ 0.25 0.25 0.25 0 2 normal
execute if score pirates_timer Timer matches 10..27 run execute as @e[tag=!recorder,type=skeleton,tag=pirates] at @s run particle block sand ~ ~1 ~ 0.25 0.25 0.25 0 2 normal
execute if score pirates_timer Timer matches 11..28 run execute as @e[tag=!recorder,type=skeleton,tag=pirates] at @s run particle block sand ~ ~1 ~ 0.25 0.25 0.25 0 2 normal

##When spawned then teleport up facing player
execute if score pirates_timer Timer matches 5..22 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_01] at @s run teleport @s ~ ~0.175 ~ facing entity @p
execute if score pirates_timer Timer matches 6..23 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_02] at @s run teleport @s ~ ~0.175 ~ facing entity @p
execute if score pirates_timer Timer matches 7..24 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_03] at @s run teleport @s ~ ~0.175 ~ facing entity @p
execute if score pirates_timer Timer matches 8..25 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_04] at @s run teleport @s ~ ~0.175 ~ facing entity @p
execute if score pirates_timer Timer matches 9..26 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_05] at @s run teleport @s ~ ~0.175 ~ facing entity @p
execute if score pirates_timer Timer matches 10..27 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_06] at @s run teleport @s ~ ~0.175 ~ facing entity @p
execute if score pirates_timer Timer matches 11..28 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_07] at @s run teleport @s ~ ~0.175 ~ facing entity @p

##When arised then remove noai and no damage thing
execute if score pirates_timer Timer matches 22 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_01] at @s run data merge entity @s {NoGravity:0b,NoAI:0b,Motion:[0.0,0.5,0.4]}
execute if score pirates_timer Timer matches 23 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_02] at @s run data merge entity @s {NoGravity:0b,NoAI:0b,Motion:[0.0,0.5,-0.4]}
execute if score pirates_timer Timer matches 24 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_03] at @s run data merge entity @s {NoGravity:0b,NoAI:0b,Motion:[0.0,0.5,0.4]}
execute if score pirates_timer Timer matches 25 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_04] at @s run data merge entity @s {NoGravity:0b,NoAI:0b,Motion:[0.0,0.5,-0.4]}
execute if score pirates_timer Timer matches 26 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_05] at @s run data merge entity @s {NoGravity:0b,NoAI:0b,Motion:[0.0,0.5,0.4]}
execute if score pirates_timer Timer matches 27 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_06] at @s run data merge entity @s {NoGravity:0b,NoAI:0b,Motion:[-0.4,0.5,0.0]}
execute if score pirates_timer Timer matches 28 run execute as @e[tag=!recorder,tag=pirates,tag=pirate_07] at @s run data merge entity @s {NoGravity:0b,NoAI:0b,Motion:[-0.4,0.5,0.0]}
execute if score pirates_timer Timer matches 32..40 run execute as @e[tag=!recorder,tag=pirates] at @s run data merge entity @s {Invulnerable:0b}

execute if score pirates_timer Timer matches 400.. run execute as @e[tag=!recorder,tag=pirates] at @s run data merge entity @s {NoAI:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
execute if score pirates_timer Timer matches 400.. run execute as @e[tag=!recorder,tag=pirates] at @s run teleport @s ~ ~-0.075 ~ ~ 80 
execute if score pirates_timer Timer matches 400.. run execute as @e[tag=!recorder,tag=pirates] at @s run particle block sand ~ ~1 ~ 0.25 0.25 0.25 0 2 normal

##Stop loop and kill pirates
execute if score pirates_timer Timer matches 450.. run kill @e[tag=!recorder,tag=pirates]
execute if score pirates_timer Timer matches 450.. run scoreboard players set loop_29 loop_trap 0
execute if score pirates_timer Timer matches 450.. run scoreboard players set pirates_timer Timer 0
scoreboard players set trap_29 trap_activated 1