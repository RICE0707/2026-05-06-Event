##
 # endgame_path.mcfunction
 # 
 #
 # Created by Lifeely.
##

##IN THIS FUNCTION THE WANDERING TRADER WITH TAG [WANDERING_DEATH] WILL FOLLOW THE TRACK FROM THE START TO THE END AND IT WILL
## KILL EVERYONE ON ITS WAY AND BEHIND HIM



##Title to everyone that the Death is following!
execute unless score DeathAlwaysFollow Settings matches 1 run execute unless entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH] run title @a times 5 70 35
execute if score DeathAlwaysFollow Settings matches 1 run execute unless entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH] run title @a times 5 70 35
execute unless score DeathAlwaysFollow Settings matches 1 run execute unless entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH] run title @a title {"translate":"core.functions.files.endgame_path.1","bold": false,"color": "white"}
execute if score DeathAlwaysFollow Settings matches 1 run execute unless entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH] run title @a title {"translate":"core.functions.files.endgame_path.2","bold": false,"color": "white"}
execute unless score DeathAlwaysFollow Settings matches 1 run execute unless entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH] run title @a subtitle {"translate":"core.functions.files.endgame_path.3"}
execute if score DeathAlwaysFollow Settings matches 1 run execute unless entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH] run title @a subtitle {"translate":"core.functions.files.endgame_path.4"}

##Summons Death on the start    0.56 Speed = 6:30Min,    1.0 Speed = 2.10min
execute unless score DeathAlwaysFollow Settings matches 1 run execute unless entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH] run summon wandering_trader 42.3 -34 -3.7 {Health:200f,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:0b,Motion:[0.3,0.2,0.3],Rotation:[-45F,17F],Tags:["WANDERING_DEATH"],ArmorItems:[{},{},{},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:666}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:400,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:60},{Name:generic.movement_speed,Base:1.15},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor_toughness,Base:100},{Name:generic.armor,Base:200}],Offers:{}}
execute if score DeathAlwaysFollow Settings matches 1 run execute unless entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH] run summon wandering_trader 42.3 -34 -3.7 {Health:200f,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:0b,Motion:[0.3,0.2,0.3],Rotation:[-45F,17F],Tags:["WANDERING_DEATH"],ArmorItems:[{},{},{},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:666}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:400,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:60},{Name:generic.movement_speed,Base:0.56},{Name:generic.knockback_resistance,Base:1},{Name:generic.armor_toughness,Base:100},{Name:generic.armor,Base:200}],Offers:{}}
execute as @e[tag=!recorder,tag=WANDERING_DEATH] at @s run particle large_smoke ^0.2 ^0.01 ^-0.5 0 0 0 0 1 normal

##Some sound effects for the death when he is active
scoreboard players add death_ambient_timer Timer 1
scoreboard players add death_step_timer Timer 1

execute if score death_ambient_timer Timer matches 1 run execute as @e[tag=!recorder,tag=WANDERING_DEATH] at @s run playsound entity.vindicator.celebrate record @a ~ ~1.5 ~ 2.75 0.2
execute if score death_ambient_timer Timer matches 51 run execute as @e[tag=!recorder,tag=WANDERING_DEATH] at @s run playsound entity.vindicator.ambient record @a ~ ~1.5 ~ 2.75 0.2
execute if score death_ambient_timer Timer matches 101 run execute as @e[tag=!recorder,tag=WANDERING_DEATH] at @s run playsound entity.pillager.celebrate record @a ~ ~1.5 ~ 2.75 0.5

execute if score death_step_timer Timer matches 2 run execute as @e[tag=!recorder,tag=WANDERING_DEATH] at @s run playsound block.metal.step record @a ~ ~ ~ 3 0.9
execute if score death_step_timer Timer matches 2 run execute as @e[tag=!recorder,tag=WANDERING_DEATH] at @s run particle block netherite_block ~ ~0.1 ~ 0.50 0.50 0.50 0.25 20
execute if score death_ambient_timer Timer matches 150.. run scoreboard players set death_ambient_timer Timer 0
execute if score death_step_timer Timer matches 5.. run scoreboard players set death_step_timer Timer 0

##When inside powder snow teleport forward
execute as @e[tag=!recorder,type=wandering_trader] at @s run execute if block ~ ~ ~ powder_snow run teleport @s 61.9 -40.76 119.3 -86 0

##If any player behind the Death kill them
#execute unless score GameStarted Game matches 2 run execute as @a[tag=!recorder,tag=runner] at @s run scoreboard players add @s PlayerPosition 1
execute unless score GameStarted Game matches 2 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition < CurrentPointNUM WanderingDeath run particle cloud ~ ~0.5 ~ 0.25 0.25 0.25 0.150 35 normal
execute unless score GameStarted Game matches 2 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition < CurrentPointNUM WanderingDeath run playsound entity.villager.death record @a ~ ~ ~ 3 1.2
execute unless score GameStarted Game matches 2 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition < CurrentPointNUM WanderingDeath run scoreboard players set @s Lives -1

##  DEBUG ONLY, SHOWS THE NEXT WANDER TARGET
#title @a actionbar ["",{"text":"Death","underlined": true,"bold": true},{"text":" X:","color":"#FF292C"},{"text":" ["},{"score":{"name":"NextPath.X","objective":"WanderingDeath"},"color":"#FFA4A5"},{"text":"] "},{"text":"Y:","color":"#7FD35A"},{"text":" ["},{"score":{"name":"NextPath.Y","objective":"WanderingDeath"},"color":"#D3FFBF"},{"text":"] "},{"text":"Z:","color":"#2D83F8"},{"text":" ["},{"score":{"name":"NextPath.Z","objective":"WanderingDeath"},"color":"#C8E0FF"},{"text":"]"},{"text":" OnPoint:","color":"#f59842"},{"text":" ["},{"score":{"name":"CurrentPointNUM","objective":"WanderingDeath"},"color":"#fac99b"},{"text":"]"}]

##Store Position X,Y,Z of every wander point in the Scoreboard
execute as @e[tag=!recorder,tag=the_end_death_path,type=marker] at @s store result score @s WanderPointsPOS.X run data get entity @s WanderTarget.X 1
execute as @e[tag=!recorder,tag=the_end_death_path,type=marker] at @s store result score @s WanderPointsPOS.Y run data get entity @s WanderTarget.Y 1
execute as @e[tag=!recorder,tag=the_end_death_path,type=marker] at @s store result score @s WanderPointsPOS.Z run data get entity @s WanderTarget.Z 1

##SAVE the next Wandering trader X,Y,Z Wander target in the scoreboard
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s store result score NextPath.X WanderingDeath run data get entity @s WanderTarget.X
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s store result score NextPath.Y WanderingDeath run data get entity @s WanderTarget.Y
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s store result score NextPath.Z WanderingDeath run data get entity @s WanderTarget.Z

 ## As wandering trader, find marker with the wanted destination, and change the Wander target to that place 
execute as @e[tag=!recorder,type=marker,tag=the_end_death_path] at @s run execute if score @s path_number_count = CurrentPointNUM WanderingDeath run execute store result entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH,limit=1] WanderTarget.X double 1 run data get entity @s Pos[0]
execute as @e[tag=!recorder,type=marker,tag=the_end_death_path] at @s run execute if score @s path_number_count = CurrentPointNUM WanderingDeath run execute store result entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH,limit=1] WanderTarget.Y double 1 run data get entity @s Pos[1]
execute as @e[tag=!recorder,type=marker,tag=the_end_death_path] at @s run execute if score @s path_number_count = CurrentPointNUM WanderingDeath run execute store result entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH,limit=1] WanderTarget.Z double 1 run data get entity @s Pos[2]

 ## If villager on destination point and in range of destination marker, give the wandering_trader next destination!
execute as @e[tag=!recorder,type=marker,tag=the_end_death_path] at @s run execute if score @s path_number_count = CurrentPointNUM WanderingDeath if entity @e[tag=!recorder,type=wandering_trader,tag=WANDERING_DEATH,distance=..2.5] run scoreboard players add CurrentPointNUM WanderingDeath 1

###### ENDGAME DEATH ANTIBUG FUNCTIONS



execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if block ~ ~ ~ snow_block if block ~ ~1 ~ snow_block run teleport @s @e[tag=!recorder,tag=the_end_death_path,limit=1,sort=nearest]

##When death in water, teleport to nearest pathpoint
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if block ~ ~ ~ water run teleport @s @e[tag=!recorder,tag=the_end_death_path,limit=1,sort=nearest]
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if block ~ ~ ~ #underwater_bonemeals run teleport @s @e[tag=!recorder,tag=the_end_death_path,limit=1,sort=nearest]
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=242,z=56,distance=..10] if block ~ ~ ~ structure_void run teleport @s @e[tag=!recorder,tag=the_end_death_path,limit=1,sort=nearest]

execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=141.0,y=-41.0,z=46.0,distance=..6] run particle cloud ~ ~0.5 ~ 0.25 0.25 0.25 0.125 50 normal
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=141.0,y=-41.0,z=46.0,distance=..6] run playsound entity.enderman.teleport record @a ~ ~ ~ 1 0.8
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=141.0,y=-41.0,z=46.0,distance=..6] run particle cloud 141.0 -40.5 55.0 0.25 0.25 0.25 0.125 50 normal
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=141.0,y=-41.0,z=46.0,distance=..6] run playsound entity.enderman.teleport record @a 141.0 -40.5 55.0 1 0.8
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=141.0,y=-41.0,z=46.0,distance=..6] run teleport @s 141.0 -40.93750 55.0 32 0

execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=214.5,y=-40.5,z=5.5,distance=..6] run particle cloud ~ ~0.5 ~ 0.25 0.25 0.25 0.125 50 normal
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=214.5,y=-40.5,z=5.5,distance=..6] run playsound entity.enderman.teleport record @a ~ ~ ~ 1 0.8
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=214.5,y=-40.5,z=5.5,distance=..6] run particle cloud 225.0 -41.0 5.5 0.25 0.25 0.25 0.125 50 normal
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=214.5,y=-40.5,z=5.5,distance=..6] run playsound entity.enderman.teleport record @a 225.0 -41.0 5.5 1 0.8
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=214.5,y=-40.5,z=5.5,distance=..6] run teleport @s 225.0 -41.0 5.5 -63 0

execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=205.5,y=-40.5,z=5.5,distance=..6] run particle cloud ~ ~0.5 ~ 0.25 0.25 0.25 0.125 50 normal
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=205.5,y=-40.5,z=5.5,distance=..6] run playsound entity.enderman.teleport record @a ~ ~ ~ 1 0.8
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=205.5,y=-40.5,z=5.5,distance=..6] run particle cloud 214.5 -40.5 5.5 0.25 0.25 0.25 0.125 50 normal
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=205.5,y=-40.5,z=5.5,distance=..6] run playsound entity.enderman.teleport record @a 214.5 -40.5 5.5 1 0.8
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=205.5,y=-40.5,z=5.5,distance=..6] run teleport @s 214.5 -40.5 5.5 -141 0

execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=238.5,y=-41.0,z=58.7,distance=..6] run particle cloud ~ ~0.5 ~ 0.25 0.25 0.25 0.125 50 normal
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=238.5,y=-41.0,z=58.7,distance=..6] run playsound entity.enderman.teleport record @a ~ ~ ~ 1 0.8
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=238.5,y=-41.0,z=58.7,distance=..6] run particle cloud 231.5 -41.0 65.5 0.25 0.25 0.25 0.125 50 normal
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=238.5,y=-41.0,z=58.7,distance=..6] run playsound entity.enderman.teleport record @a 231.5 -41.0 65.5 1 0.8
execute as @e[tag=!recorder,tag=WANDERING_DEATH,type=wandering_trader] at @s run execute if entity @s[x=238.5,y=-41.0,z=58.7,distance=..6] run teleport @s 231.5 -41.0 65.5 45 0



##Execute set based on path number, amount score at path_number_count objective    ONE TIME ONLY USE   ## BACKUP
#execute as @e[tag=!recorder,tag=pa_0,type=marker] at @s run scoreboard players set @s path_number_count 0
#execute as @e[tag=!recorder,tag=pa_1,type=marker] at @s run scoreboard players set @s path_number_count 1
#execute as @e[tag=!recorder,tag=pa_2,type=marker] at @s run scoreboard players set @s path_number_count 2
#execute as @e[tag=!recorder,tag=pa_3,type=marker] at @s run scoreboard players set @s path_number_count 3
#execute as @e[tag=!recorder,tag=pa_4,type=marker] at @s run scoreboard players set @s path_number_count 4
#execute as @e[tag=!recorder,tag=pa_5,type=marker] at @s run scoreboard players set @s path_number_count 5
#execute as @e[tag=!recorder,tag=pa_6,type=marker] at @s run scoreboard players set @s path_number_count 6
#execute as @e[tag=!recorder,tag=pa_7,type=marker] at @s run scoreboard players set @s path_number_count 7
#execute as @e[tag=!recorder,tag=pa_8,type=marker] at @s run scoreboard players set @s path_number_count 8
#execute as @e[tag=!recorder,tag=pa_9,type=marker] at @s run scoreboard players set @s path_number_count 9
#execute as @e[tag=!recorder,tag=pa_10,type=marker] at @s run scoreboard players set @s path_number_count 10
#execute as @e[tag=!recorder,tag=pa_11,type=marker] at @s run scoreboard players set @s path_number_count 11
#execute as @e[tag=!recorder,tag=pa_12,type=marker] at @s run scoreboard players set @s path_number_count 12
#execute as @e[tag=!recorder,tag=pa_13,type=marker] at @s run scoreboard players set @s path_number_count 13
#execute as @e[tag=!recorder,tag=pa_14,type=marker] at @s run scoreboard players set @s path_number_count 14
#execute as @e[tag=!recorder,tag=pa_15,type=marker] at @s run scoreboard players set @s path_number_count 15
#execute as @e[tag=!recorder,tag=pa_16,type=marker] at @s run scoreboard players set @s path_number_count 16
#execute as @e[tag=!recorder,tag=pa_17,type=marker] at @s run scoreboard players set @s path_number_count 17
#execute as @e[tag=!recorder,tag=pa_18,type=marker] at @s run scoreboard players set @s path_number_count 18
#execute as @e[tag=!recorder,tag=pa_19,type=marker] at @s run scoreboard players set @s path_number_count 19
#execute as @e[tag=!recorder,tag=pa_20,type=marker] at @s run scoreboard players set @s path_number_count 20
#execute as @e[tag=!recorder,tag=pa_21,type=marker] at @s run scoreboard players set @s path_number_count 21
#execute as @e[tag=!recorder,tag=pa_22,type=marker] at @s run scoreboard players set @s path_number_count 22
#execute as @e[tag=!recorder,tag=pa_23,type=marker] at @s run scoreboard players set @s path_number_count 23
#execute as @e[tag=!recorder,tag=pa_24,type=marker] at @s run scoreboard players set @s path_number_count 24
#execute as @e[tag=!recorder,tag=pa_25,type=marker] at @s run scoreboard players set @s path_number_count 25
#execute as @e[tag=!recorder,tag=pa_26,type=marker] at @s run scoreboard players set @s path_number_count 26
#execute as @e[tag=!recorder,tag=pa_27,type=marker] at @s run scoreboard players set @s path_number_count 27
#execute as @e[tag=!recorder,tag=pa_28,type=marker] at @s run scoreboard players set @s path_number_count 28
#execute as @e[tag=!recorder,tag=pa_29,type=marker] at @s run scoreboard players set @s path_number_count 29
#execute as @e[tag=!recorder,tag=pa_30,type=marker] at @s run scoreboard players set @s path_number_count 30
#execute as @e[tag=!recorder,tag=pa_31,type=marker] at @s run scoreboard players set @s path_number_count 31
#execute as @e[tag=!recorder,tag=pa_32,type=marker] at @s run scoreboard players set @s path_number_count 32
#execute as @e[tag=!recorder,tag=pa_33,type=marker] at @s run scoreboard players set @s path_number_count 33
#execute as @e[tag=!recorder,tag=pa_34,type=marker] at @s run scoreboard players set @s path_number_count 34
#execute as @e[tag=!recorder,tag=pa_35,type=marker] at @s run scoreboard players set @s path_number_count 35
#execute as @e[tag=!recorder,tag=pa_36,type=marker] at @s run scoreboard players set @s path_number_count 36
#execute as @e[tag=!recorder,tag=pa_37,type=marker] at @s run scoreboard players set @s path_number_count 37
#execute as @e[tag=!recorder,tag=pa_38,type=marker] at @s run scoreboard players set @s path_number_count 38
#execute as @e[tag=!recorder,tag=pa_39,type=marker] at @s run scoreboard players set @s path_number_count 39
#execute as @e[tag=!recorder,tag=pa_40,type=marker] at @s run scoreboard players set @s path_number_count 40
#execute as @e[tag=!recorder,tag=pa_41,type=marker] at @s run scoreboard players set @s path_number_count 41
#execute as @e[tag=!recorder,tag=pa_42,type=marker] at @s run scoreboard players set @s path_number_count 42
#execute as @e[tag=!recorder,tag=pa_43,type=marker] at @s run scoreboard players set @s path_number_count 43
#execute as @e[tag=!recorder,tag=pa_44,type=marker] at @s run scoreboard players set @s path_number_count 44
#execute as @e[tag=!recorder,tag=pa_45,type=marker] at @s run scoreboard players set @s path_number_count 45
#execute as @e[tag=!recorder,tag=pa_46,type=marker] at @s run scoreboard players set @s path_number_count 46
#execute as @e[tag=!recorder,tag=pa_47,type=marker] at @s run scoreboard players set @s path_number_count 47
#execute as @e[tag=!recorder,tag=pa_48,type=marker] at @s run scoreboard players set @s path_number_count 48
#execute as @e[tag=!recorder,tag=pa_49,type=marker] at @s run scoreboard players set @s path_number_count 49
#execute as @e[tag=!recorder,tag=pa_50,type=marker] at @s run scoreboard players set @s path_number_count 50
#execute as @e[tag=!recorder,tag=pa_51,type=marker] at @s run scoreboard players set @s path_number_count 51
#execute as @e[tag=!recorder,tag=pa_52,type=marker] at @s run scoreboard players set @s path_number_count 52
#execute as @e[tag=!recorder,tag=pa_53,type=marker] at @s run scoreboard players set @s path_number_count 53
#execute as @e[tag=!recorder,tag=pa_54,type=marker] at @s run scoreboard players set @s path_number_count 54
#execute as @e[tag=!recorder,tag=pa_55,type=marker] at @s run scoreboard players set @s path_number_count 55
#execute as @e[tag=!recorder,tag=pa_56,type=marker] at @s run scoreboard players set @s path_number_count 56





