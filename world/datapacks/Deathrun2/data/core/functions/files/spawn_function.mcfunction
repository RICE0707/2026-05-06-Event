##
 # spawn_function.mcfunction
 # 
 #
 # Created by Lifeely.
##

## This function controlls if player's deathcount and his amount of spawns are the same when not "means it died and is about to spawn" 
## then start the push from checkpoint function and reset players Spawned count and add the amount of death inside.

##In this line it checks if player has lives when no, remove their checkpoint tags and spectate the furthest player

execute as @a[tag=!recorder,tag=runner] at @s if score @s Lives matches ..-1 run tag @s add out_of_lives

#Checkpoint0 Spawn
execute as @a[tag=!recorder,x=42,y=-35,z=-3,distance=..6,tag=!checkpoint1_player,tag=!checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run function core:files/push_from_checkpoint0
execute as @a[tag=!recorder,x=42,y=-35,z=-3,distance=..6,tag=!checkpoint1_player,tag=!checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run clear @s totem_of_undying
execute as @a[tag=!recorder,x=42,y=-35,z=-3,distance=..6,tag=!checkpoint1_player,tag=!checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute as @a[tag=!recorder,x=42,y=-35,z=-3,distance=..6,tag=!checkpoint1_player,tag=!checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute as @a[tag=!recorder,x=42,y=-35,z=-3,distance=..6,tag=!checkpoint1_player,tag=!checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

#Checkpoint1
execute as @a[tag=!recorder,x=146.5,y=-24.5,z=67.5,distance=..6,tag=checkpoint1_player,tag=!checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run function core:files/push_from_checkpoint1
execute as @a[tag=!recorder,x=146.5,y=-24.5,z=67.5,distance=..6,tag=checkpoint1_player,tag=!checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run clear @s totem_of_undying
execute as @a[tag=!recorder,x=146.5,y=-24.5,z=67.5,distance=..6,tag=checkpoint1_player,tag=!checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute as @a[tag=!recorder,x=146.5,y=-24.5,z=67.5,distance=..6,tag=checkpoint1_player,tag=!checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute as @a[tag=!recorder,x=146.5,y=-24.5,z=67.5,distance=..6,tag=checkpoint1_player,tag=!checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

#Checkpoint2
execute as @a[tag=!recorder,x=158.5,y=-14.5,z=109.5,distance=..6,tag=checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run function core:files/push_from_checkpoint2
execute as @a[tag=!recorder,x=158.5,y=-14.5,z=109.5,distance=..6,tag=checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run clear @s totem_of_undying
execute as @a[tag=!recorder,x=158.5,y=-14.5,z=109.5,distance=..6,tag=checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute as @a[tag=!recorder,x=158.5,y=-14.5,z=109.5,distance=..6,tag=checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute as @a[tag=!recorder,x=158.5,y=-14.5,z=109.5,distance=..6,tag=checkpoint2_player,tag=runner,tag=!out_of_lives,tag=!debug,tag=!spectator] at @s unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

##When Death always follow enabled make player spawn on the farthest point they were
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 0..1 run spawnpoint @s 54 -41 10 -54
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 0..1 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 0..1 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 0..1 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 0..1 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 0..1 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 2 run spawnpoint @s 67 -41 19 -90
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 2 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 2 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 2 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 2 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 2 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 3 run spawnpoint @s 83 -41 19 -90
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 3 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 3 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 3 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 3 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 3 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 4 run spawnpoint @s 101 -41 19 -90
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 4 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 4 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 4 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 4 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 4 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 5 run spawnpoint @s 117 -41 19 -90
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 5 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 5 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 5 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 5 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 5 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 6..7 run spawnpoint @s 131 -41 21 -30
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 6..7 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 6..7 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 6..7 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 6..7 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 6..7 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 8..9 run spawnpoint @s 137 -41 32 -15
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 8..9 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 8..9 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 8..9 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 8..9 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 8..9 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 10..11 run spawnpoint @s 137 -41 63 45
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 10..11 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 10..11 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 10..11 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 10..11 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 10..11 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 12 run spawnpoint @s 122 -41 74 90
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 12 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 12 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 12 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 12 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 12 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 13 run spawnpoint @s 109 -41 74 90
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 13 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 13 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 13 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 13 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 13 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 14..15 run spawnpoint @s 79 -41 74 80
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 14..15 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 14..15 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 14..15 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 14..15 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 14..15 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 16 run spawnpoint @s 62 -41 84 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 16 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 16 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 16 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 16 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 16 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 17 run spawnpoint @s 64 -41 93 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 17 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 17 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 17 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 17 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 17 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 18..19 run spawnpoint @s 70 -41 124 -80
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 18..19 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 18..19 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 18..19 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 18..19 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 18..19 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 20..21 run spawnpoint @s 81 -41 126 -78
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 20..21 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 20..21 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 20..21 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 20..21 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 20..21 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 22..23 run spawnpoint @s 107 -41 132 -100
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 22..23 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 22..23 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 22..23 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 22..23 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 22..23 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 24 run spawnpoint @s 120 -40 131 -135
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 24 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 24 unless score @s Deaths = @s Spawned run tag @s remove has_bomb_hat
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 24 unless score @s Deaths = @s Spawned run clear @s pufferfish{CustomModelData:201}
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 24 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 24 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 25 run spawnpoint @s 134 -41 117 -135
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 25 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 25 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 25 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 26 run spawnpoint @s 147 -41 104 -135
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 26 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 26 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 26 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 27..28 run spawnpoint @s 159 -41 92 180
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 27..28 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 27..28 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 27..28 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 29 run spawnpoint @s 159 -41 75 180
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 29 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 29 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 29 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 30 run spawnpoint @s 160 -41 60 180
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 30 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 30 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 30 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 31 run spawnpoint @s 160 -41 45 -170
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 31 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 31 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 31 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 32..33 run spawnpoint @s 162 -41 33 -170
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 32..33 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 32..33 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 32..33 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 34 run spawnpoint @s 163 -41 11 -106
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 34 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 34 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 34 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 35 run spawnpoint @s 178 -41 2 -60
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 35 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 35 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 35 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 36..37 run spawnpoint @s 188 -41 7 -90
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 36..37 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 36..37 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 36..37 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 38 run spawnpoint @s 214 -40 6 -90
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 38 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 38 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 38 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 39..41 run spawnpoint @s 235 -41 3 -10
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 39..41 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 39..41 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 39..41 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 42 run spawnpoint @s 240 -41 24 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 42 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 42 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 42 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 43 run spawnpoint @s 240 -41 35 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 43 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 43 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 43 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 44..45 run spawnpoint @s 243 -41 51 35
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 44..45 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 44..45 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 44..45 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 46..47 run spawnpoint @s 230 -41 72 70
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 46..47 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 46..47 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 46..47 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 48 run spawnpoint @s 216 -40 76 90
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 48 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 48 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 48 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 49..50 run spawnpoint @s 201 -40 77 90
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 49..50 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 49..50 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 49..50 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths

execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 51..56 run spawnpoint @s 177 -41 80 45
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 51..56 unless score @s Deaths = @s Spawned run scoreboard players remove @s Lives 1
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 51..56 unless score @s Deaths = @s Spawned run scoreboard players set @s Spawned 0
execute if score CheckpointsCount Settings matches 0 run execute as @a[tag=!recorder,tag=runner] at @s if score @s PlayerPosition matches 51..56 unless score @s Deaths = @s Spawned run scoreboard players operation @s Spawned += @s Deaths








