##
 # update_settings.mcfunction
 # 
 #
 # Created by Lifeely.
##

## This function gets updated once after an button gets pressed in the settings room

##Change item inside the selection box based on scoreboard

execute unless block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] unless block 1150 -37 -56 minecraft:acacia_button[face=wall,facing=south,powered=true] unless block 1149 -37 -51 minecraft:acacia_button[face=wall,facing=east,powered=true] unless block 1150 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] unless block 1149 -37 -45 minecraft:acacia_button[face=wall,facing=east,powered=true] unless block 1156 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] unless block 1149 -37 -55 minecraft:acacia_button[face=wall,facing=east,powered=true] unless block 1158 -37 -52 minecraft:acacia_button[face=wall,facing=east,powered=true] unless block 1158 -37 -48 minecraft:acacia_button[face=wall,facing=east,powered=true] unless block 1156 -37 -52 minecraft:acacia_button[face=wall,facing=west,powered=true] unless block 1156 -37 -50 minecraft:acacia_button[face=wall,facing=west,powered=true] unless block 1156 -37 -48 minecraft:acacia_button[face=wall,facing=west,powered=true] run scoreboard players set Gamemode Settings 9

execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] run tellraw @a[tag=admin] {"translate":"core.functions.files.update_settings.1","color": "aqua","bold": false}

## Default Mode settings
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set Lives Settings 3
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set CheckpointsCount Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set MatchLength Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set Collisions Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set Max.Killer Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set Minigames Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set PVP Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set DeathAlwaysFollow Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set EasyParkour Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set InstantDeathAfterTimeExpires Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set LobbyMusicInGame Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set SkipCutscene Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set SuperPowers Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 0 run scoreboard players set MinigameOnly Settings 0
## One Life Mode settings
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set Lives Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set CheckpointsCount Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set MatchLength Settings 3
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set Collisions Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set Max.Killer Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set Minigames Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set PVP Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set DeathAlwaysFollow Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set EasyParkour Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set InstantDeathAfterTimeExpires Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set LobbyMusicInGame Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set SkipCutscene Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set SuperPowers Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 1 run scoreboard players set MinigameOnly Settings 0
## No Checkpoints Mode settings
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set Lives Settings 5
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set CheckpointsCount Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set MatchLength Settings 3
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set Collisions Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set Max.Killer Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set Minigames Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set PVP Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set DeathAlwaysFollow Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set EasyParkour Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set InstantDeathAfterTimeExpires Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set LobbyMusicInGame Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set SkipCutscene Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set SuperPowers Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 2 run scoreboard players set MinigameOnly Settings 0
## Many Players Mode settings
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set Lives Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set CheckpointsCount Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set MatchLength Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set Collisions Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set Max.Killer Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set Minigames Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set PVP Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set DeathAlwaysFollow Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set EasyParkour Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set InstantDeathAfterTimeExpires Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set LobbyMusicInGame Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set SkipCutscene Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set SuperPowers Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 3 run scoreboard players set MinigameOnly Settings 0
## Powerups Mode settings
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set Lives Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set CheckpointsCount Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set MatchLength Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set Collisions Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set Max.Killer Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set Minigames Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set PVP Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set DeathAlwaysFollow Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set EasyParkour Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set InstantDeathAfterTimeExpires Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set LobbyMusicInGame Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set SkipCutscene Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set SuperPowers Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 4 run scoreboard players set MinigameOnly Settings 0
## Party Mode settings
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set Lives Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set CheckpointsCount Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set MatchLength Settings 3
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set Collisions Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set Max.Killer Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set Minigames Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set PVP Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set DeathAlwaysFollow Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set EasyParkour Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set InstantDeathAfterTimeExpires Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set LobbyMusicInGame Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set SkipCutscene Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set SuperPowers Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 5 run scoreboard players set MinigameOnly Settings 0
## One Runner Mode settings
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set Lives Settings 6
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set CheckpointsCount Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set MatchLength Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set Collisions Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set Max.Killer Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set Minigames Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set PVP Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set DeathAlwaysFollow Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set EasyParkour Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set InstantDeathAfterTimeExpires Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set LobbyMusicInGame Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set SkipCutscene Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set SuperPowers Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 6 run scoreboard players set MinigameOnly Settings 0
## Terror Mode settings
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set Lives Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set CheckpointsCount Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set MatchLength Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set Collisions Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set Max.Killer Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set Minigames Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set PVP Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set DeathAlwaysFollow Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set EasyParkour Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set InstantDeathAfterTimeExpires Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set LobbyMusicInGame Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set SkipCutscene Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set SuperPowers Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 7 run scoreboard players set MinigameOnly Settings 0
## AI mode settings
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set Lives Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set CheckpointsCount Settings 2
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set MatchLength Settings 3
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set Collisions Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set Max.Killer Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set Minigames Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set PVP Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set DeathAlwaysFollow Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set EasyParkour Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set InstantDeathAfterTimeExpires Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set LobbyMusicInGame Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set SkipCutscene Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set SuperPowers Settings 1
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set Time Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set ManualTeams Settings 0
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Gamemode Settings matches 8 run scoreboard players set MinigameOnly Settings 0

#Gamemode selection 0 - 8                                                                                                                                                                                                                                                                                                               
execute if score Gamemode Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge entity @s {item:{id:"minecraft:friend_pottery_sherd",Count:1b}}
execute if score Gamemode Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge storage settings:selected {gamemode:"默認模式"}

execute if score Gamemode Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge entity @s {item:{id:"minecraft:burn_pottery_sherd",Count:1b}}
execute if score Gamemode Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge storage settings:selected {gamemode:"一命模式"}

execute if score Gamemode Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge entity @s {item:{id:"minecraft:danger_pottery_sherd",Count:1b}}
execute if score Gamemode Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge storage settings:selected {gamemode:"無記錄點模式"}

execute if score Gamemode Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge entity @s {item:{id:"minecraft:miner_pottery_sherd",Count:1b}}
execute if score Gamemode Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge storage settings:selected {gamemode:"多人模式"}

execute if score Gamemode Settings matches 4 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge entity @s {item:{id:"minecraft:explorer_pottery_sherd",Count:1b}}
execute if score Gamemode Settings matches 4 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge storage settings:selected {gamemode:"能力提升模式"}

execute if score Gamemode Settings matches 5 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge entity @s {item:{id:"minecraft:heart_pottery_sherd",Count:1b}}
execute if score Gamemode Settings matches 5 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge storage settings:selected {gamemode:"派對模式"}

execute if score Gamemode Settings matches 6 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge entity @s {item:{id:"minecraft:howl_pottery_sherd",Count:1b}}
execute if score Gamemode Settings matches 6 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge storage settings:selected {gamemode:"單闖關者模式"}

execute if score Gamemode Settings matches 7 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge entity @s {item:{id:"minecraft:brewer_pottery_sherd",Count:1b}}
execute if score Gamemode Settings matches 7 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge storage settings:selected {gamemode:"恐怖模式"}

execute if score Gamemode Settings matches 8 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge entity @s {item:{id:"minecraft:fermented_spider_eye",Count:1b}}
execute if score Gamemode Settings matches 8 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge storage settings:selected {gamemode:"AI模式"}

execute if score Gamemode Settings matches 9 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge entity @s {item:{id:"minecraft:heartbreak_pottery_sherd",Count:1b}}
execute if score Gamemode Settings matches 9 run execute as @e[tag=!recorder,type=item_display,tag=setting_gamemode] at @s run data merge storage settings:selected {gamemode:"自定義"}

#Pvp 0 - 1
execute if score PVP Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_pvp] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score PVP Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_pvp] at @s run data merge storage settings:selected {pvp:"已禁用"}

execute if score PVP Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_pvp] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score PVP Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_pvp] at @s run data merge storage settings:selected {pvp:"已啟用"}

#Easy Parkour Mode 0 - 3
execute if score EasyParkour Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_easy_parkour] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score EasyParkour Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_easy_parkour] at @s run data merge storage settings:selected {easy_parkour:"已禁用"}

execute if score EasyParkour Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_easy_parkour] at @s run data merge entity @s {item:{id:"minecraft:ward_armor_trim_smithing_template",Count:1b}}
execute if score EasyParkour Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_easy_parkour] at @s run data merge storage settings:selected {easy_parkour:"跳躍提升"}

execute if score EasyParkour Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_easy_parkour] at @s run data merge entity @s {item:{id:"minecraft:host_armor_trim_smithing_template",Count:1b}}
execute if score EasyParkour Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_easy_parkour] at @s run data merge storage settings:selected {easy_parkour:"緩降"}

execute if score EasyParkour Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_easy_parkour] at @s run data merge entity @s {item:{id:"minecraft:silence_armor_trim_smithing_template",Count:1b}}
execute if score EasyParkour Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_easy_parkour] at @s run data merge storage settings:selected {easy_parkour:"跳躍提升+緩降"}

#Collisions 0 - 1
execute if score Collisions Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_collisions] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score Collisions Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_collisions] at @s run data merge storage settings:selected {collisions:"已禁用"}

execute if score Collisions Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_collisions] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score Collisions Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_collisions] at @s run data merge storage settings:selected {collisions:"已啟用"}

#Max Killers 0 - 3
execute if score Max.Killer Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_max.killers] at @s run data merge entity @s {item:{id:"minecraft:blade_pottery_sherd",Count:1b}}
execute if score Max.Killer Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_max.killers] at @s run data merge storage settings:selected {max_killers:"自定義"}

execute if score Max.Killer Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_max.killers] at @s run data merge entity @s {item:{id:"minecraft:angler_pottery_sherd",Count:1b}}
execute if score Max.Killer Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_max.killers] at @s run data merge storage settings:selected {max_killers:"1"}

execute if score Max.Killer Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_max.killers] at @s run data merge entity @s {item:{id:"minecraft:archer_pottery_sherd",Count:1b}}
execute if score Max.Killer Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_max.killers] at @s run data merge storage settings:selected {max_killers:"2"}

execute if score Max.Killer Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_max.killers] at @s run data merge entity @s {item:{id:"minecraft:arms_up_pottery_sherd",Count:1b}}
execute if score Max.Killer Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_max.killers] at @s run data merge storage settings:selected {max_killers:"3"}

#Super Powers 0 - 1
execute if score SuperPowers Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_super_powers] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score SuperPowers Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_super_powers] at @s run data merge storage settings:selected {super_powers:"已禁用"}

execute if score SuperPowers Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_super_powers] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score SuperPowers Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_super_powers] at @s run data merge storage settings:selected {super_powers:"已啟用"}

#True Deathrun 0 - 1
execute if score DeathAlwaysFollow Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_true_deathrun] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score DeathAlwaysFollow Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_true_deathrun] at @s run data merge storage settings:selected {true_deathrun:"已禁用"}

execute if score DeathAlwaysFollow Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_true_deathrun] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score DeathAlwaysFollow Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_true_deathrun] at @s run data merge storage settings:selected {true_deathrun:"已啟用"}

#Instant death after time run out 0 - 1
execute if score InstantDeathAfterTimeExpires Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_time_death] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score InstantDeathAfterTimeExpires Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_time_death] at @s run data merge storage settings:selected {time_death:"已禁用"}

execute if score InstantDeathAfterTimeExpires Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_time_death] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score InstantDeathAfterTimeExpires Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_time_death] at @s run data merge storage settings:selected {time_death:"已啟用"}

#Minigame at the end 0 - 1
execute if score Minigames Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_minigame] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score Minigames Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_minigame] at @s run data merge storage settings:selected {minigame:"已禁用"}

execute if score Minigames Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_minigame] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score Minigames Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_minigame] at @s run data merge storage settings:selected {minigame:"已啟用"}

#Checkpoints 0 - 3
execute if score CheckpointsCount Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoints] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score CheckpointsCount Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoints] at @s run data merge storage settings:selected {checkpoints:"已禁用"}

execute if score CheckpointsCount Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoints] at @s run data merge entity @s {item:{id:"minecraft:wild_armor_trim_smithing_template",Count:1b}}
execute if score CheckpointsCount Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoints] at @s run data merge storage settings:selected {checkpoints:"1"}

execute if score CheckpointsCount Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoints] at @s run data merge entity @s {item:{id:"minecraft:coast_armor_trim_smithing_template",Count:1b}}
execute if score CheckpointsCount Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoints] at @s run data merge storage settings:selected {checkpoints:"2"}

execute if score CheckpointsCount Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoints] at @s run data merge entity @s {item:{id:"minecraft:dune_armor_trim_smithing_template",Count:1b}}
execute if score CheckpointsCount Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoints] at @s run data merge storage settings:selected {checkpoints:"3"}

#Match Lenght 0 - 4
execute if score MatchLength Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_match_length] at @s run data merge entity @s {item:{id:"minecraft:sheaf_pottery_sherd",Count:1b}}
execute if score MatchLength Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_match_length] at @s run data merge storage settings:selected {match_length:"3 MIN"}

execute if score MatchLength Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_match_length] at @s run data merge entity @s {item:{id:"minecraft:prize_pottery_sherd",Count:1b}}
execute if score MatchLength Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_match_length] at @s run data merge storage settings:selected {match_length:"5 MIN"}

execute if score MatchLength Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_match_length] at @s run data merge entity @s {item:{id:"minecraft:mourner_pottery_sherd",Count:1b}}
execute if score MatchLength Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_match_length] at @s run data merge storage settings:selected {match_length:"7 MIN"}

execute if score MatchLength Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_match_length] at @s run data merge entity @s {item:{id:"minecraft:plenty_pottery_sherd",Count:1b}}
execute if score MatchLength Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_match_length] at @s run data merge storage settings:selected {match_length:"9 MIN"}

execute if score MatchLength Settings matches 4 run execute as @e[tag=!recorder,type=item_display,tag=setting_match_length] at @s run data merge entity @s {item:{id:"minecraft:shelter_pottery_sherd",Count:1b}}
execute if score MatchLength Settings matches 4 run execute as @e[tag=!recorder,type=item_display,tag=setting_match_length] at @s run data merge storage settings:selected {match_length:"11 MIN"}

#Lives 0 - 6
execute if score Lives Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge entity @s {item:{id:"minecraft:wild_armor_trim_smithing_template",Count:1b}}
execute if score Lives Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge storage settings:selected {lives:"1條命"}

execute if score Lives Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge entity @s {item:{id:"minecraft:coast_armor_trim_smithing_template",Count:1b}}
execute if score Lives Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge storage settings:selected {lives:"2條命"}

execute if score Lives Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge entity @s {item:{id:"minecraft:dune_armor_trim_smithing_template",Count:1b}}
execute if score Lives Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge storage settings:selected {lives:"3條命"}

execute if score Lives Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge entity @s {item:{id:"minecraft:wayfinder_armor_trim_smithing_template",Count:1b}}
execute if score Lives Settings matches 3 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge storage settings:selected {lives:"4條命"}

execute if score Lives Settings matches 4 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge entity @s {item:{id:"minecraft:raiser_armor_trim_smithing_template",Count:1b}}
execute if score Lives Settings matches 4 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge storage settings:selected {lives:"5條命"}

execute if score Lives Settings matches 5 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge entity @s {item:{id:"minecraft:eye_armor_trim_smithing_template",Count:1b}}
execute if score Lives Settings matches 5 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge storage settings:selected {lives:"6條命"}

execute if score Lives Settings matches 6 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge entity @s {item:{id:"minecraft:shaper_armor_trim_smithing_template",Count:1b}}
execute if score Lives Settings matches 6 run execute as @e[tag=!recorder,type=item_display,tag=setting_lives] at @s run data merge storage settings:selected {lives:"10條命"}

#Spawnpoints give lives 0 - 1
execute if score CheckpointGiveLives Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoint_give_lives] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score CheckpointGiveLives Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoint_give_lives] at @s run data merge storage settings:selected {checkpoints_give_lives:"已禁用"}

execute if score CheckpointGiveLives Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoint_give_lives] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score CheckpointGiveLives Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_checkpoint_give_lives] at @s run data merge storage settings:selected {checkpoints_give_lives:"已啟用"}

#Lobby music in game 0 - 1
execute if score LobbyMusicInGame Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_lobby_music] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score LobbyMusicInGame Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_lobby_music] at @s run data merge storage settings:selected {lobby_music:"已禁用"}

execute if score LobbyMusicInGame Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_lobby_music] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score LobbyMusicInGame Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_lobby_music] at @s run data merge storage settings:selected {lobby_music:"已啟用"}

#Weather 0 - 1
execute if score Weather Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_weather] at @s run data merge entity @s {item:{id:"minecraft:snort_pottery_sherd",Count:1b}}
execute if score Weather Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_weather] at @s run data merge storage settings:selected {weather:"晴天"}

execute if score Weather Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_weather] at @s run data merge entity @s {item:{id:"minecraft:skull_pottery_sherd",Count:1b}}
execute if score Weather Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_weather] at @s run data merge storage settings:selected {weather:"雨天"}

#Time 0 - 2
execute if score Time Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_time] at @s run data merge entity @s {item:{id:"minecraft:snout_armor_trim_smithing_template",Count:1b}}
execute if score Time Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_time] at @s run data merge storage settings:selected {time:"中午"}

execute if score Time Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_time] at @s run data merge entity @s {item:{id:"minecraft:tide_armor_trim_smithing_template",Count:1b}}
execute if score Time Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_time] at @s run data merge storage settings:selected {time:"夜晚"}

execute if score Time Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_time] at @s run data merge entity @s {item:{id:"minecraft:rib_armor_trim_smithing_template",Count:1b}}
execute if score Time Settings matches 2 run execute as @e[tag=!recorder,type=item_display,tag=setting_time] at @s run data merge storage settings:selected {time:"清晨"}

#Skip Cutscene 0 - 1
execute if score SkipCutscene Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_skip_cutscene] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score SkipCutscene Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_skip_cutscene] at @s run data merge storage settings:selected {skip_cutscene:"已禁用"}

execute if score SkipCutscene Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_skip_cutscene] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score SkipCutscene Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_skip_cutscene] at @s run data merge storage settings:selected {skip_cutscene:"已啟用"}

#Manual Teams 0 - 1
execute if score ManualTeams Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_manual_teams] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score ManualTeams Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_manual_teams] at @s run data merge storage settings:selected {manual_teams:"已禁用"}

execute if score ManualTeams Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_manual_teams] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score ManualTeams Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_manual_teams] at @s run data merge storage settings:selected {manual_teams:"已啟用"}

#Stamina 0 - 1
execute if score Stamina Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_stamina] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score Stamina Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_stamina] at @s run data merge storage settings:selected {stamina:"已禁用"}

execute if score Stamina Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_stamina] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score Stamina Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_stamina] at @s run data merge storage settings:selected {stamina:"已啟用"}

#MinigameOnly 0 - 1
execute if score MinigameOnly Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_minigame_only] at @s run data merge entity @s {item:{id:"minecraft:vex_armor_trim_smithing_template",Count:1b}}
execute if score MinigameOnly Settings matches 0 run execute as @e[tag=!recorder,type=item_display,tag=setting_minigame_only] at @s run data merge storage settings:selected {minigame_only:"已禁用"}

execute if score MinigameOnly Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_minigame_only] at @s run data merge entity @s {item:{id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}}
execute if score MinigameOnly Settings matches 1 run execute as @e[tag=!recorder,type=item_display,tag=setting_minigame_only] at @s run data merge storage settings:selected {minigame_only:"已啟用"}


##Red = #fa2f2f
##Green = #b2ff40
##Blue = #2f76fa
##Gold = #ffc042
##White = white

##Spawn the selected settings menu
kill @e[tag=!recorder,tag=selected_settings_text]
#Setting
summon text_display 1171.50 -37.0 -55.50 {billboard:"fixed",alignment:"left",Tags:["settings_text","selected_settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.5f,0.0f,-0.49f],scale:[0.8f,0.8f,1f]},text:'[{"translate":"core.functions.files.update_settings.2","color": "#ffc042","bold": true},{"translate":"core.functions.files.update_settings.3","color": "#fa2f2f","bold": true},{"translate":"core.functions.files.update_settings.4","color": "#fa2f2f","bold": true},{"translate":"core.functions.files.update_settings.5","color": "#fa2f2f","bold": true},{"translate":"core.functions.files.update_settings.6","color": "#b2ff40","bold": true},{"translate":"core.functions.files.update_settings.7","color": "#b2ff40","bold": true},{"translate":"core.functions.files.update_settings.8","color": "#b2ff40","bold": true},{"translate":"core.functions.files.update_settings.9","color": "#b2ff40","bold": true},[{"translate":"core.functions.files.update_settings.10","color":"#FFF700","bold":true},{"translate":"core.functions.files.update_settings.11","color":"#B3FF00"},{"translate":"core.functions.files.update_settings.12","color":"#00FF80"},{"translate":"core.functions.files.update_settings.13","color":"#00AAFF"},{"translate":"core.functions.files.update_settings.14","color":"#3300FF"},{"translate":"core.functions.files.update_settings.15","color":"#B300FF","bold":true},{"translate":"core.functions.files.update_settings.16","color":"#FF00D4"},{"translate":"core.functions.files.update_settings.17","color":"#FF006F"},{"translate":"core.functions.files.update_settings.18","color":"#FF0000"},{"translate":"core.functions.files.update_settings.19","color":"#FF5500"},{"translate":"core.functions.files.update_settings.20","color":"#FFBB00"}],[{"translate":"core.functions.files.update_settings.21","color":"#C3FF00","bold":true},{"translate":"core.functions.files.update_settings.22","color":"#55FF00"},{"translate":"core.functions.files.update_settings.23","color":"#00FF88"},{"translate":"core.functions.files.update_settings.24","color":"#03FFEE"},{"translate":"core.functions.files.update_settings.25","color":"#0080FF"},{"translate":"core.functions.files.update_settings.26","color":"#7700FF"},{"translate":"core.functions.files.update_settings.27","color":"#FF00B3"},{"translate":"core.functions.files.update_settings.28","color":"#FF0000"}],[{"translate":"core.functions.files.update_settings.29","color":"#B300FF","bold":true},{"translate":"core.functions.files.update_settings.30","color":"#FF00D4"},{"translate":"core.functions.files.update_settings.31","color":"#FF006F"},{"translate":"core.functions.files.update_settings.32","color":"#FF0000"},{"translate":"core.functions.files.update_settings.33","color":"#FF5500"},{"translate":"core.functions.files.update_settings.34","color": "#2f76fa"}],{"translate":"core.functions.files.update_settings.35","color": "#2f76fa","bold": true},{"translate":"core.functions.files.update_settings.36","color": "#2f76fa","bold": true},{"translate":"core.functions.files.update_settings.37","color": "#2f76fa","bold": true},{"translate":"core.functions.files.update_settings.38","color": "aqua","bold": false,"italic": false},{"translate":"core.functions.files.update_settings.39","color": "#2f76fa","bold": true},{"translate":"core.functions.files.update_settings.40","color": "#2f76fa","bold": true},{"translate":"core.functions.files.update_settings.41","color": "#2f76fa","bold": true},[{"translate":"core.functions.files.update_settings.42","color":"#FFE600","bold":true},{"translate":"core.functions.files.update_settings.43","color":"#FFFF00"},{"translate":"core.functions.files.update_settings.44","color":"#00AAFF"},{"translate":"core.functions.files.update_settings.45","color":"#0455E0"},{"translate":"core.functions.files.update_settings.46","color":"#033EA3"},{"translate":"core.functions.files.update_settings.47","color":"#1E0AA3"},{"translate":"core.functions.files.update_settings.48","color":"#4E39A3"}],[{"translate":"core.functions.files.update_settings.49","color":"#FFE600","bold":true},{"translate":"core.functions.files.update_settings.50","color":"#FFFF00"},{"translate":"core.functions.files.update_settings.51","color":"#033EA3"},{"translate":"core.functions.files.update_settings.52","color":"#1E0AA3"}]]',background:16711680}

#Selected
summon text_display 1171.50 -37.0 -55.50 {billboard:"fixed",alignment:"left",Tags:["settings_text","selected_settings_text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.33f,-0.25f,-0.49f],scale:[0.8f,0.8f,1f]},text:'[{"nbt":"gamemode","storage":"settings:selected","color": "#ffc042"},{"translate":"core.functions.files.update_settings.53"},{"nbt":"max_killers","storage":"settings:selected","color": "#fa2f2f"},{"translate":"core.functions.files.update_settings.54"},{"nbt":"true_deathrun","storage":"settings:selected","color": "#fa2f2f"},{"translate":"core.functions.files.update_settings.55"},{"nbt":"time_death","storage":"settings:selected","color": "#fa2f2f"},{"translate":"core.functions.files.update_settings.56"},{"nbt":"checkpoints","storage":"settings:selected","color": "#b2ff40"},{"translate":"core.functions.files.update_settings.57"},{"nbt":"checkpoints_give_lives","storage":"settings:selected","color": "#b2ff40"},{"translate":"core.functions.files.update_settings.58"},{"nbt":"lives","storage":"settings:selected","color": "#b2ff40"},{"translate":"core.functions.files.update_settings.59"},{"nbt":"match_length","storage":"settings:selected","color": "#b2ff40"},{"translate":"core.functions.files.update_settings.60"},{"nbt":"super_powers","storage":"settings:selected","color": "#951ff0"},{"translate":"core.functions.files.update_settings.61"},{"nbt":"minigame","storage":"settings:selected","color": "#951ff0"},{"translate":"core.functions.files.update_settings.62"},{"nbt":"lobby_music","storage":"settings:selected","color": "#951ff0"},{"translate":"core.functions.files.update_settings.63"},{"nbt":"pvp","storage":"settings:selected","color": "#2f76fa"},{"translate":"core.functions.files.update_settings.64"},{"nbt":"manual_teams","storage":"settings:selected","color": "#2f76fa"},{"translate":"core.functions.files.update_settings.65"},{"nbt":"stamina","storage":"settings:selected","color": "#2f76fa"},{"translate":"core.functions.files.update_settings.66"},{"nbt":"skip_cutscene","storage":"settings:selected","color": "#2f76fa"},{"translate":"core.functions.files.update_settings.67"},{"nbt":"easy_parkour","storage":"settings:selected","color": "#2f76fa"},{"translate":"core.functions.files.update_settings.68"},{"nbt":"collisions","storage":"settings:selected","color": "#2f76fa"},{"translate":"core.functions.files.update_settings.69"},{"nbt":"weather","storage":"settings:selected","color": "gold"},{"translate":"core.functions.files.update_settings.70"},{"nbt":"time","storage":"settings:selected"},{"translate":"core.functions.files.update_settings.71"}]',background:16711680}

                                                                                                                                                                                                                                                                                                                                        