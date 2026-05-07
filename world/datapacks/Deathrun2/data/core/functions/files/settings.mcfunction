##
 # settings.mcfunction
 # 
 #
 # Created by Lifeely.
 
##Only The admin can enter the Settings Room
execute as @a[tag=!recorder,tag=!admin,tag=!ready_to_start] at @s if entity @e[tag=!recorder,tag=admin_only,distance=..2.75] run tellraw @s [{"translate":"core.functions.files.settings.1"},{"translate":"core.functions.files.settings.2","color":"aqua"},{"translate":"core.functions.files.settings.3"},{"translate":"core.functions.files.settings.4","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":[{"translate":"core.functions.files.settings.5","color": "gold","bold": true}]},"clickEvent":{"action":"suggest_command","value":"/tag @s add admin"}},{"translate":"core.functions.files.settings.6"}]
execute as @a[tag=!recorder,tag=!admin,tag=!ready_to_start] at @s if entity @e[tag=!recorder,tag=admin_only,distance=..2.75] run playsound entity.villager.no record @s
execute as @a[tag=!recorder,tag=!admin,tag=!ready_to_start] at @s if entity @e[tag=!recorder,tag=admin_only,distance=..2.75] run teleport @s 1172.5 -37 -46.5 -160 0

## Execute buttons for every setting if button pressed add point if not over the limit

##Gamemode
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] run scoreboard players add Gamemode Settings 1
execute if score Gamemode Settings matches 10.. run scoreboard players set Gamemode Settings 0
##PvP/PvE
execute if block 1158 -37 -48 minecraft:acacia_button[face=wall,facing=east,powered=true] run scoreboard players add PVP Settings 1
execute if score PVP Settings matches 2.. run scoreboard players set PVP Settings 0
##Easy Parkour Mode
execute if block 1158 -37 -52 minecraft:acacia_button[face=wall,facing=east,powered=true] run scoreboard players add EasyParkour Settings 1
execute if score EasyParkour Settings matches 4.. run scoreboard players set EasyParkour Settings 0
##Collisions
execute if block 1156 -37 -48 minecraft:acacia_button[face=wall,facing=west,powered=true] run scoreboard players add Collisions Settings 1
execute if score Collisions Settings matches 2.. run scoreboard players set Collisions Settings 0
##Max.Killer
execute if block 1160 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run scoreboard players add Max.Killer Settings 1
execute if score Max.Killer Settings matches 4.. run scoreboard players set Max.Killer Settings 0
execute if block 1160 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] if score ManualTeams Settings matches 1 run scoreboard players set ManualTeams Settings 0
##SuperPowers
execute if block 1149 -37 -47 minecraft:acacia_button[face=wall,facing=east,powered=true] run scoreboard players add SuperPowers Settings 1
execute if score SuperPowers Settings matches 2.. run scoreboard players set SuperPowers Settings 0
##Death Always follows
execute if block 1158 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run scoreboard players add DeathAlwaysFollow Settings 1
execute if score DeathAlwaysFollow Settings matches 2.. run scoreboard players set DeathAlwaysFollow Settings 0
execute if block 1158 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] if score InstantDeathAfterTimeExpires Settings matches 1 run scoreboard players set InstantDeathAfterTimeExpires Settings 0
execute if block 1158 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] if score InstantDeathAfterTimeExpires Settings matches 1 run scoreboard players set CheckpointsCount Settings 0
##GameOver after time run out
execute if block 1156 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run scoreboard players add InstantDeathAfterTimeExpires Settings 1
execute if score InstantDeathAfterTimeExpires Settings matches 2.. run scoreboard players set InstantDeathAfterTimeExpires Settings 0
execute if block 1156 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] if score DeathAlwaysFollow Settings matches 1 run scoreboard players set DeathAlwaysFollow Settings 0
##Minigame at the end
execute if block 1149 -37 -49 minecraft:acacia_button[face=wall,facing=east,powered=true] run scoreboard players add Minigames Settings 1
execute if score Minigames Settings matches 2.. run scoreboard players set Minigames Settings 0
##How Many Checkpoints
execute if block 1154 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run scoreboard players add CheckpointsCount Settings 1
execute if score CheckpointsCount Settings matches 4.. run scoreboard players set CheckpointsCount Settings 0
##How Long One Match
execute if block 1149 -37 -45 minecraft:acacia_button[face=wall,facing=east,powered=true] run scoreboard players add MatchLength Settings 1
execute if score MatchLength Settings matches 5.. run scoreboard players set MatchLength Settings 0
##Lives
execute if block 1150 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run scoreboard players add Lives Settings 1
execute if score Lives Settings matches 7.. run scoreboard players set Lives Settings 0
##Checkpoint Give Lives
execute if block 1152 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run scoreboard players add CheckpointGiveLives Settings 1
execute if score CheckpointGiveLives Settings matches 2.. run scoreboard players set CheckpointGiveLives Settings 0
##Lobby Music In Game
execute if block 1149 -37 -51 minecraft:acacia_button[face=wall,facing=east,powered=true] run scoreboard players add LobbyMusicInGame Settings 1
execute if score LobbyMusicInGame Settings matches 2.. run scoreboard players set LobbyMusicInGame Settings 0
##Weather
execute if block 1156 -37 -50 minecraft:acacia_button[face=wall,facing=west,powered=true] run scoreboard players add Weather Settings 1
execute if score Weather Settings matches 2.. run scoreboard players set Weather Settings 0
##Time
execute if block 1156 -37 -52 minecraft:acacia_button[face=wall,facing=west,powered=true] run scoreboard players add Time Settings 1
execute if score Time Settings matches 3.. run scoreboard players set Time Settings 0
##Skip Cutscene
execute if block 1150 -37 -56 minecraft:acacia_button[face=wall,facing=south,powered=true] run scoreboard players add SkipCutscene Settings 1
execute if score SkipCutscene Settings matches 2.. run scoreboard players set SkipCutscene Settings 0
##Manual Teams Selection
execute if block 1149 -37 -53 minecraft:acacia_button[face=wall,facing=east,powered=true] run scoreboard players add ManualTeams Settings 1
execute if score ManualTeams Settings matches 2.. run scoreboard players set ManualTeams Settings 0
execute if block 1149 -37 -53 minecraft:acacia_button[face=wall,facing=east,powered=true] if score MinigameOnly Settings matches 1 run scoreboard players set MinigameOnly Settings 0
execute if block 1149 -37 -53 minecraft:acacia_button[face=wall,facing=east,powered=true] if score Max.Killer Settings matches 1..3 run scoreboard players set Max.Killer Settings 0
##Stamina
execute if block 1149 -37 -55 minecraft:acacia_button[face=wall,facing=east,powered=true] run scoreboard players add Stamina Settings 1
execute if score Stamina Settings matches 2.. run scoreboard players set Stamina Settings 0
##Minigame Only
execute if block 1152 -37 -56 minecraft:acacia_button[face=wall,facing=south,powered=true] run scoreboard players add MinigameOnly Settings 1
execute if score MinigameOnly Settings matches 2.. run scoreboard players set MinigameOnly Settings 0
execute if block 1152 -37 -56 minecraft:acacia_button[face=wall,facing=south,powered=true] if score ManualTeams Settings matches 0 run scoreboard players set ManualTeams Settings 1



##Update the update settings after numbers changed
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] run function core:files/update_settings
execute if block 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=true] run setblock 1158 -37 -50 minecraft:acacia_button[face=wall,facing=east,powered=false]

execute if block 1158 -37 -48 minecraft:acacia_button[face=wall,facing=east,powered=true] run function core:files/update_settings
execute if block 1158 -37 -48 minecraft:acacia_button[face=wall,facing=east,powered=true] run setblock 1158 -37 -48 minecraft:acacia_button[face=wall,facing=east,powered=false]

execute if block 1158 -37 -52 minecraft:acacia_button[face=wall,facing=east,powered=true] run function core:files/update_settings
execute if block 1158 -37 -52 minecraft:acacia_button[face=wall,facing=east,powered=true] run setblock 1158 -37 -52 minecraft:acacia_button[face=wall,facing=east,powered=false]

execute if block 1156 -37 -48 minecraft:acacia_button[face=wall,facing=west,powered=true] run function core:files/update_settings
execute if block 1156 -37 -48 minecraft:acacia_button[face=wall,facing=west,powered=true] run setblock 1156 -37 -48 minecraft:acacia_button[face=wall,facing=west,powered=false]

execute if block 1160 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run function core:files/update_settings
execute if block 1160 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run setblock 1160 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=false]

execute if block 1149 -37 -47 minecraft:acacia_button[face=wall,facing=east,powered=true] run function core:files/update_settings
execute if block 1149 -37 -47 minecraft:acacia_button[face=wall,facing=east,powered=true] run setblock 1149 -37 -47 minecraft:acacia_button[face=wall,facing=east,powered=false]

execute if block 1158 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run function core:files/update_settings
execute if block 1158 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run setblock 1158 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=false]

execute if block 1156 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run function core:files/update_settings
execute if block 1156 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run setblock 1156 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=false]

execute if block 1149 -37 -49 minecraft:acacia_button[face=wall,facing=east,powered=true] run function core:files/update_settings
execute if block 1149 -37 -49 minecraft:acacia_button[face=wall,facing=east,powered=true] run setblock 1149 -37 -49 minecraft:acacia_button[face=wall,facing=east,powered=false]

execute if block 1154 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run function core:files/update_settings
execute if block 1154 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run setblock 1154 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=false]

execute if block 1149 -37 -45 minecraft:acacia_button[face=wall,facing=east,powered=true] run function core:files/update_settings
execute if block 1149 -37 -45 minecraft:acacia_button[face=wall,facing=east,powered=true] run setblock 1149 -37 -45 minecraft:acacia_button[face=wall,facing=east,powered=false]

execute if block 1150 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run function core:files/update_settings
execute if block 1150 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run setblock 1150 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=false]

execute if block 1152 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run function core:files/update_settings
execute if block 1152 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=true] run setblock 1152 -37 -44 minecraft:acacia_button[face=wall,facing=north,powered=false]

execute if block 1149 -37 -51 minecraft:acacia_button[face=wall,facing=east,powered=true] run function core:files/update_settings
execute if block 1149 -37 -51 minecraft:acacia_button[face=wall,facing=east,powered=true] run setblock 1149 -37 -51 minecraft:acacia_button[face=wall,facing=east,powered=false]

execute if block 1156 -37 -50 minecraft:acacia_button[face=wall,facing=west,powered=true] run function core:files/update_settings
execute if block 1156 -37 -50 minecraft:acacia_button[face=wall,facing=west,powered=true] run setblock 1156 -37 -50 minecraft:acacia_button[face=wall,facing=west,powered=false]

execute if block 1156 -37 -52 minecraft:acacia_button[face=wall,facing=west,powered=true] run function core:files/update_settings
execute if block 1156 -37 -52 minecraft:acacia_button[face=wall,facing=west,powered=true] run setblock 1156 -37 -52 minecraft:acacia_button[face=wall,facing=west,powered=false]

execute if block 1150 -37 -56 minecraft:acacia_button[face=wall,facing=south,powered=true] run function core:files/update_settings
execute if block 1150 -37 -56 minecraft:acacia_button[face=wall,facing=south,powered=true] run setblock 1150 -37 -56 minecraft:acacia_button[face=wall,facing=south,powered=false]

execute if block 1149 -37 -53 minecraft:acacia_button[face=wall,facing=east,powered=true] run function core:files/update_settings
execute if block 1149 -37 -53 minecraft:acacia_button[face=wall,facing=east,powered=true] run setblock 1149 -37 -53 minecraft:acacia_button[face=wall,facing=east,powered=false]

execute if block 1149 -37 -55 minecraft:acacia_button[face=wall,facing=east,powered=true] run function core:files/update_settings
execute if block 1149 -37 -55 minecraft:acacia_button[face=wall,facing=east,powered=true] run setblock 1149 -37 -55 minecraft:acacia_button[face=wall,facing=east,powered=false]

execute if block 1152 -37 -56 minecraft:acacia_button[face=wall,facing=south,powered=true] run function core:files/update_settings
execute if block 1152 -37 -56 minecraft:acacia_button[face=wall,facing=south,powered=true] run setblock 1152 -37 -56 minecraft:acacia_button[face=wall,facing=south,powered=false]


