##
 # _ai_killer_brain.mcfunction
 # 
 #
 # Created by Lifeely.
##

##In this function when ai Killer is activated spawn ai at the beginning and move him towards traps based on where players currently are

##Easy debug
execute if score Furthest_Player AI_Killer matches 39.. run scoreboard players set Furthest_Player AI_Killer 1

##Random chance of killer activate the trap
scoreboard players add trap_activate_chance_timer Timer 1 
execute if score trap_activate_chance_timer Timer matches 40.. run scoreboard players set trap_activate_chance_timer Timer 0


##Summon Killer when there is no killer avaible
execute unless entity @e[tag=!recorder,type=wandering_trader,tag=ai_killer] run summon wandering_trader 54.5 -37 -4.0 {Invulnerable:1b,PersistenceRequired:1b,Health:1f,Rotation:[-45F,0F],Tags:["ai_killer"],ArmorItems:[{},{},{},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:999}}],Attributes:[{Name:generic.movement_speed,Base:1.75}],Offers:{}}
execute if entity @e[tag=!recorder,type=wandering_trader,tag=ai_killer,tag=!started_moving] run scoreboard players set CurrentPointNUM AI_Killer 0
execute if entity @e[tag=!recorder,type=wandering_trader,tag=ai_killer,tag=!started_moving] run tag @e[tag=!recorder,type=wandering_trader,tag=ai_killer,limit=1] add started_moving

##Store Position X,Y,Z of every wander point in the Scoreboard
execute as @e[tag=!recorder,tag=ai_killer_path,type=marker] at @s store result score @s AI_Killer_Path_POS.X run data get entity @s Pos[0] 1
execute as @e[tag=!recorder,tag=ai_killer_path,type=marker] at @s store result score @s AI_Killer_Path_POS.Y run data get entity @s Pos[1] 1
execute as @e[tag=!recorder,tag=ai_killer_path,type=marker] at @s store result score @s AI_Killer_Path_POS.Z run data get entity @s Pos[2] 1

##SAVE the next Wandering trader X,Y,Z Wander target in the scoreboard
execute as @e[tag=!recorder,tag=ai_killer,type=wandering_trader] at @s store result score NextPath.X AI_Killer run data get entity @s WanderTarget.X
execute as @e[tag=!recorder,tag=ai_killer,type=wandering_trader] at @s store result score NextPath.Y AI_Killer run data get entity @s WanderTarget.Y
execute as @e[tag=!recorder,tag=ai_killer,type=wandering_trader] at @s store result score NextPath.Z AI_Killer run data get entity @s WanderTarget.Z

 ## As wandering trader, find marker with the wanted destination, and change the Wander target to that place 
execute as @e[tag=!recorder,type=marker,tag=ai_killer_path] at @s run execute if score @s path_number_count = CurrentPointNUM AI_Killer run execute store result entity @e[tag=!recorder,type=wandering_trader,tag=ai_killer,limit=1] WanderTarget.X double 1 run data get entity @s Pos[0]
execute as @e[tag=!recorder,type=marker,tag=ai_killer_path] at @s run execute if score @s path_number_count = CurrentPointNUM AI_Killer run execute store result entity @e[tag=!recorder,type=wandering_trader,tag=ai_killer,limit=1] WanderTarget.Y double 1 run data get entity @s Pos[1]
execute as @e[tag=!recorder,type=marker,tag=ai_killer_path] at @s run execute if score @s path_number_count = CurrentPointNUM AI_Killer run execute store result entity @e[tag=!recorder,type=wandering_trader,tag=ai_killer,limit=1] WanderTarget.Z double 1 run data get entity @s Pos[2]

 ## If killer ai on destination point and in range of destination marker, give the wandering_trader next destination!
execute as @e[tag=!recorder,type=marker,tag=ai_killer_path] at @s run execute if score @s path_number_count = CurrentPointNUM AI_Killer if entity @e[tag=!recorder,type=wandering_trader,tag=ai_killer,distance=..2.5] run execute as @e[tag=!recorder,tag=ai_killer,type=wandering_trader] at @s run execute if score Furthest_Player AI_Killer > CurrentPointNUM AI_Killer run scoreboard players add CurrentPointNUM AI_Killer 1
execute as @e[tag=!recorder,type=marker,tag=ai_killer_path] at @s run execute if score @s path_number_count = CurrentPointNUM AI_Killer if entity @e[tag=!recorder,type=wandering_trader,tag=ai_killer,distance=..2.5] run execute as @e[tag=!recorder,tag=ai_killer,type=wandering_trader] at @s run execute if score Furthest_Player AI_Killer < CurrentPointNUM AI_Killer run scoreboard players remove CurrentPointNUM AI_Killer 1

##Make the furthest player set their scoreboard 
execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s PlayerPosition > Furthest_Player AI_Killer store result score Furthest_Player AI_Killer run scoreboard players get @s PlayerPosition

##When players distance >= Furthest player distance, then give them tag, when not then remove their tag
execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s PlayerPosition >= Furthest_Player AI_Killer run tag @s add furthest_runner
execute as @a[tag=!recorder,tag=!spectator] at @s run execute unless score @s PlayerPosition >= Furthest_Player AI_Killer run tag @s remove furthest_runner

##When there is no Farthest player, then keep removing the scoreboard of the Furthest player until there is new furthest player avaible
execute unless entity @a[tag=!recorder,tag=furthest_runner] run scoreboard players remove Furthest_Player AI_Killer 1

##When killer at the trap and trap_activate_chance_timer Timer matches 1 run activate trap
execute if score trap_activate_chance_timer Timer matches 1 run execute as @e[tag=!recorder,tag=ai_killer_path] at @s if score @s path_number_count = CurrentPointNUM AI_Killer if entity @e[tag=!recorder,type=wandering_trader,limit=1,sort=nearest,tag=ai_killer,distance=..3.5] run execute as @a[tag=!recorder,tag=runner] at @s run execute if score Furthest_Player AI_Killer = @e[tag=!recorder,type=marker,limit=1,tag=ai_trap_range,sort=nearest,distance=..1.000] trap_position_score run execute as @e[tag=!recorder,type=wandering_trader,tag=ai_killer] at @s run function core:files/_ai_killer_activate_trap
execute if score trap_activate_chance_timer Timer matches 10 run execute as @e[tag=!recorder,tag=ai_killer_path] at @s if score @s path_number_count = CurrentPointNUM AI_Killer if entity @e[tag=!recorder,type=wandering_trader,limit=1,sort=nearest,tag=ai_killer,distance=..3.5] run execute as @a[tag=!recorder,tag=runner] at @s run execute if score Furthest_Player AI_Killer = @e[tag=!recorder,type=marker,limit=1,tag=ai_trap_range,sort=nearest,distance=1.001..2.5] trap_position_score run execute as @e[tag=!recorder,type=wandering_trader,tag=ai_killer] at @s run function core:files/_ai_killer_activate_trap
execute if score trap_activate_chance_timer Timer matches 20 run execute as @e[tag=!recorder,tag=ai_killer_path] at @s if score @s path_number_count = CurrentPointNUM AI_Killer if entity @e[tag=!recorder,type=wandering_trader,limit=1,sort=nearest,tag=ai_killer,distance=..3.5] run execute as @a[tag=!recorder,tag=runner] at @s run execute if score Furthest_Player AI_Killer = @e[tag=!recorder,type=marker,limit=1,tag=ai_trap_range,sort=nearest,distance=2.501..3.500] trap_position_score run execute as @e[tag=!recorder,type=wandering_trader,tag=ai_killer] at @s run function core:files/_ai_killer_activate_trap
execute if score trap_activate_chance_timer Timer matches 30 run execute as @e[tag=!recorder,tag=ai_killer_path] at @s if score @s path_number_count = CurrentPointNUM AI_Killer if entity @e[tag=!recorder,type=wandering_trader,limit=1,sort=nearest,tag=ai_killer,distance=..3.5] run execute as @a[tag=!recorder,tag=runner] at @s run execute if score Furthest_Player AI_Killer = @e[tag=!recorder,type=marker,limit=1,tag=ai_trap_range,sort=nearest,distance=3.501..4.500] trap_position_score run execute as @e[tag=!recorder,type=wandering_trader,tag=ai_killer] at @s run function core:files/_ai_killer_activate_trap


##Debug only
#title @a actionbar ["",{"text":"AI KILLER","underlined": true,"bold": true},{"text":" X:","color":"#FF292C"},{"text":" ["},{"score":{"name":"NextPath.X","objective":"AI_Killer"},"color":"#FFA4A5"},{"text":"] "},{"text":"Y:","color":"#7FD35A"},{"text":" ["},{"score":{"name":"NextPath.Y","objective":"AI_Killer"},"color":"#D3FFBF"},{"text":"] "},{"text":"Z:","color":"#2D83F8"},{"text":" ["},{"score":{"name":"NextPath.Z","objective":"AI_Killer"},"color":"#C8E0FF"},{"text":"]"},{"text":" OnPoint:","color":"#f59842"},{"text":" ["},{"score":{"name":"CurrentPointNUM","objective":"AI_Killer"},"color":"#fac99b"},{"text":"]"}]



