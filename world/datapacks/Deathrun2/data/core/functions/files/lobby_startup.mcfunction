##
 # lobby_startup.mcfunction
 # 
 #
 # Created by .
##

##Count the players on the server and then title them into the action bar, but when music changet stop to show it and then reshow it
execute store result score PlayersOnline Game if entity @e[tag=!recorder,type=player,tag=!debug]
execute unless score Gamemode Settings matches 8 unless score music_timer Music matches 1..40 unless score intro_timer Timer matches 1.. if score PlayersOnline Game matches ..1 run execute as @a[tag=!recorder,tag=!ready_to_start,tag=!debug] at @s unless block ~ ~-1.5 ~ purple_concrete_powder unless score _Reload Game matches 1 run title @s actionbar ["",{"translate":"core.functions.files.lobby_startup.1","color":"#368DF8"},{"translate":"wtem.space"},{"score":{"name":"PlayersOnline","objective":"Game"},"color":"#FF1C53"},{"translate":"core.functions.files.lobby_startup.3","color":"#368DF8"}]
execute unless score Gamemode Settings matches 8 unless score music_timer Music matches 1..40 unless score intro_timer Timer matches 1.. unless score PlayersOnline Game matches ..1 run execute as @a[tag=!recorder,tag=!ready_to_start,tag=!debug] at @s unless block ~ ~-1.5 ~ purple_concrete_powder unless score _Reload Game matches 1 run title @s actionbar ["",{"translate":"core.functions.files.lobby_startup.4","color":"#368DF8"},{"translate":"wtem.space"},{"score":{"name":"PlayersOnline","objective":"Game"},"color":"#FF1C53"},{"translate":"core.functions.files.lobby_startup.6","color":"#368DF8"}]
execute unless score Gamemode Settings matches 8 unless score intro_timer Timer matches 1.. if score PlayersOnline Game matches ..1 run execute as @a[tag=!recorder,tag=!ready_to_start,tag=!debug] at @s if block ~ ~-1.5 ~ purple_concrete_powder unless score _Reload Game matches 1 run title @s actionbar ["",{"translate":"core.functions.files.lobby_startup.7","color":"#ff2252"},{"translate":"core.functions.files.lobby_startup.8","color": "#ffaf47"}]

execute if score Gamemode Settings matches 8 unless score music_timer Music matches 1..40 unless score intro_timer Timer matches 1.. if score PlayersOnline Game matches ..1 run execute as @a[tag=!recorder,tag=!ready_to_start,tag=!debug] at @s unless block ~ ~-1.5 ~ purple_concrete_powder unless score _Reload Game matches 1 run title @s actionbar ["",{"translate":"core.functions.files.lobby_startup.9","color":"#368DF8"},{"translate":"wtem.space"},{"score":{"name":"PlayersOnline","objective":"Game"},"color":"#FF1C53"},{"translate":"core.functions.files.lobby_startup.11","color":"#368DF8"}]

execute unless score _Reload Game matches 1 if score intro_timer Timer matches 1.. unless score PlayersReady Game = PlayersOnline Game run title @a times 5 50 20
execute unless score _Reload Game matches 1 if score intro_timer Timer matches 1.. unless score PlayersReady Game = PlayersOnline Game run execute as @a at @s run playsound entity.villager.no record @s
execute unless score _Reload Game matches 1 if score intro_timer Timer matches 1.. unless score PlayersReady Game = PlayersOnline Game run title @a title {"translate":"core.functions.files.lobby_startup.12","color": "yellow"}
execute unless score _Reload Game matches 1 if score intro_timer Timer matches 1.. unless score PlayersReady Game = PlayersOnline Game run title @a subtitle {"translate":"core.functions.files.lobby_startup.13","color": "white"}
execute unless score _Reload Game matches 1 if score intro_timer Timer matches 1.. unless score PlayersReady Game = PlayersOnline Game run scoreboard players set _Reload Game 1




##Count the amount of ready players
execute store result score PlayersReady Game if entity @e[tag=!recorder,type=player,tag=ready_to_start]

##When game is starting and someone left, cancel the game
execute unless score Gamemode Settings matches 8 if score PlayersOnline Game matches ..1 run title @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]}] title {"translate":"core.functions.files.lobby_startup.14","color": "yellow"}
execute unless score Gamemode Settings matches 8 if score PlayersOnline Game matches ..1 run title @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]}] subtitle {"translate":"core.functions.files.lobby_startup.15","color": "red"}
execute unless score Gamemode Settings matches 8 if score PlayersOnline Game matches ..1 run effect clear @a levitation




##When enough players, then make players that are on purple concrete fly up and give them tag ready_to_start
execute unless score Gamemode Settings matches 8 if score PlayersOnline Game matches 2.. run execute as @a[tag=!recorder,tag=!ready_to_start,tag=!debug] at @s if block ~ ~-2 ~ purple_concrete_powder run effect give @s minecraft:levitation 12 6 true
execute if score Gamemode Settings matches 8 if score PlayersOnline Game matches 1.. run execute as @a[tag=!recorder,tag=!ready_to_start,tag=!debug] at @s if block ~ ~-2 ~ purple_concrete_powder run effect give @s minecraft:levitation 12 6 true
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]},tag=!debug,tag=!flying] at @s run teleport @s 1204.5 -26.0 -45.5
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]},tag=!debug] at @s run tag @s add flying
execute as @a[tag=!recorder,nbt=!{ActiveEffects:[{Id:25}]},tag=!debug,tag=flying] at @s run tag @s remove flying
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]},tag=!debug] at @s if block ~ ~ ~ structure_void run particle explosion_emitter 1204.47 3.31 -44.58 1 0.1 1 1 5 normal
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]},tag=!debug] at @s if block ~ ~ ~ structure_void run playsound entity.illusioner.prepare_mirror record @a 1204.47 3.31 -44.58 4
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]},tag=!debug] at @s if block ~ ~ ~ structure_void run tag @s add ready_to_start
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]},tag=!debug] at @s if block ~ ~ ~ structure_void run teleport @s ~ ~-27 ~

##When player have ready tag then make them spectator and force them to spectate middle section
gamemode spectator @a[tag=!recorder,tag=ready_to_start,tag=!titled_ready]
execute as @a[tag=!recorder,tag=ready_to_start,tag=!titled_ready] at @s run title @s times 20 100 20
execute as @a[tag=!recorder,tag=ready_to_start,tag=!titled_ready] at @s run title @s title ["",{"translate":"core.functions.files.lobby_startup.16","bold":true},{"translate":"core.functions.files.lobby_startup.17","bold":true,"color":"#86EF27"},{"translate":"core.functions.files.lobby_startup.18","bold":true}]
execute as @a[tag=!recorder,tag=ready_to_start,tag=!titled_ready] at @s run title @s subtitle {"translate":"core.functions.files.lobby_startup.19","color":"#FF2544"}
execute as @a[tag=!recorder,tag=ready_to_start,tag=!titled_ready] at @s run effect clear @s levitation
execute as @a[tag=!recorder,tag=ready_to_start,tag=!titled_ready] at @s run tag @s add titled_ready
execute as @a[tag=!recorder,tag=ready_to_start,gamemode=spectator] at @s unless entity @a[tag=!recorder,distance=0.6..2,tag=!ready_to_start] unless score intro_timer Timer matches 62.. run particle dust 0.561 0.055 0.855 1 ~ ~1.75 ~ 0 0 0 0 2 normal

##Keep the specators in the spawn area
execute as @a[tag=!recorder,tag=ready_to_start] at @s unless entity @s[x=1204.5,z=-45.5,distance=..100] unless score intro_timer Timer matches 20.. run teleport @s 1208.5 -19.0 -34.5 167 13


##When PlayersReady Game = PlayersOnline Start the intro
execute if score ManualTeams Settings matches 0 if score PlayersReady Game = PlayersOnline Game unless score PlayersOnline Game matches 0 run scoreboard players add intro_timer Timer 1
execute if score ManualTeams Settings matches 1 unless score intro_timer Timer matches 100 if score PlayersReady Game = PlayersOnline Game unless score PlayersOnline Game matches 0 run scoreboard players add intro_timer Timer 1
execute if score ManualTeams Settings matches 0 if score intro_timer Timer matches 62 run fill 100 -25 107 100 -22 103 barrier
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 62 run execute if block 100 -25 107 barrier run fill 100 -25 107 100 -22 103 air

##When standing in killer area, select killer
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 run execute as @a[tag=!recorder,tag=!debug,tag=selected_runner] at @s run execute if block ~ ~-3 ~ red_concrete run tag @s remove selected_runner
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 run execute as @a[tag=!recorder,tag=!debug] at @s run execute if block ~ ~-3 ~ red_concrete run tag @s remove selected_nothing
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 run execute as @a[tag=!recorder,tag=!debug] at @s run execute if block ~ ~-3 ~ red_concrete run tag @s add selected_killer

##When standing in runner area, select runner
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 run execute as @a[tag=!recorder,tag=!debug,tag=selected_killer] at @s run execute if block ~ ~-3 ~ light_blue_concrete run tag @s remove selected_killer
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 run execute as @a[tag=!recorder,tag=!debug] at @s run execute if block ~ ~-3 ~ light_blue_concrete run tag @s remove selected_nothing
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 run execute as @a[tag=!recorder,tag=!debug] at @s run execute if block ~ ~-3 ~ light_blue_concrete run tag @s add selected_runner
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 run execute as @a[tag=!recorder,tag=!debug] at @s run execute unless block ~ ~-3 ~ light_blue_concrete unless block ~ ~-3 ~ red_concrete run tag @s remove selected_killer
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 run execute as @a[tag=!recorder,tag=!debug] at @s run execute unless block ~ ~-3 ~ light_blue_concrete unless block ~ ~-3 ~ red_concrete run tag @s remove selected_runner
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 run execute as @a[tag=!recorder,tag=!debug] at @s run execute unless block ~ ~-3 ~ light_blue_concrete unless block ~ ~-3 ~ red_concrete run tag @s add selected_nothing

##Make Small cooldown when players have selected their teams instead of just starting
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 unless entity @a[tag=!recorder,tag=selected_nothing] unless score cooldown_team_select Timer matches 60.. run scoreboard players add cooldown_team_select Timer 1
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if entity @a[tag=!recorder,tag=selected_nothing] if score cooldown_team_select Timer matches 1.. run execute as @a at @s run playsound entity.villager.no record @s
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if entity @a[tag=!recorder,tag=selected_nothing] if score cooldown_team_select Timer matches 1.. run scoreboard players reset cooldown_team_select Timer 
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 1 run title @a times 5 10 5
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 1 run execute as @a at @s run playsound ui.button.click record @s ~ ~ ~ 0.7 0.7
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 1 run title @a title {"translate":"wtem.empty"}
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 1 run title @a subtitle {"translate":"core.functions.files.lobby_startup.21","bold": true,"color": "#7bff43"}
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 21 run execute as @a at @s run playsound ui.button.click record @s ~ ~ ~ 0.7 1
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 21 run title @a title {"translate":"wtem.empty"}
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 21 run title @a subtitle {"translate":"core.functions.files.lobby_startup.23","bold": true,"color": "yellow"}
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 41 run execute as @a at @s run playsound ui.button.click record @s ~ ~ ~ 0.7 1.3
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 41 run title @a title {"translate":"wtem.empty"}
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 41 run title @a subtitle {"translate":"core.functions.files.lobby_startup.25","bold": true,"color": "#ff2929"}
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 59 unless entity @a[tag=selected_nothing] unless entity @a[tag=selected_runner] if entity @a[tag=selected_killer] run title @a times 5 30 5
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 59 unless entity @a[tag=selected_nothing] unless entity @a[tag=selected_runner] if entity @a[tag=selected_killer] run playsound minecraft:block.anvil.place record @a ~ ~ ~ 0.2 0.5
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 59 unless entity @a[tag=selected_nothing] unless entity @a[tag=selected_runner] if entity @a[tag=selected_killer] run title @a title {"translate":"wtem.empty"}
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 59 unless entity @a[tag=selected_nothing] unless entity @a[tag=selected_runner] if entity @a[tag=selected_killer] run title @a subtitle [{"translate":"core.functions.files.lobby_startup.27","color": "white"},{"translate":"core.functions.files.lobby_startup.28","bold": true,"color": "#2679f5"}]
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 59 unless entity @a[tag=selected_nothing] unless entity @a[tag=selected_killer] if entity @a[tag=selected_runner] run title @a times 5 30 5
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 59 unless entity @a[tag=selected_nothing] unless entity @a[tag=selected_killer] if entity @a[tag=selected_runner] run playsound minecraft:block.anvil.place record @a ~ ~ ~ 0.2 0.5
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 59 unless entity @a[tag=selected_nothing] unless entity @a[tag=selected_killer] if entity @a[tag=selected_runner] run title @a title {"translate":"wtem.empty"}
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 if score cooldown_team_select Timer matches 59 unless entity @a[tag=selected_nothing] unless entity @a[tag=selected_killer] if entity @a[tag=selected_runner] run title @a subtitle [{"translate":"core.functions.files.lobby_startup.30","color": "white"},{"translate":"core.functions.files.lobby_startup.31","bold": true,"color": "#eb1b1b"}]
##When all players have selected their team, continue the startup
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 100 run execute if entity @a[tag=!recorder,tag=selected_killer] if entity @a[tag=!recorder,tag=selected_runner] unless entity @a[tag=!recorder,tag=selected_nothing] unless score cooldown_team_select Timer matches ..59 unless score intro_timer Timer matches 101.. run scoreboard players add intro_timer Timer 1

## Intro animation (Make black screen and small mdlosci effect)
execute if score intro_timer Timer matches 1 run clear @a wheat_seeds
execute if score intro_timer Timer matches 1 run scoreboard players set crossbow_timer Timer 0
execute if score intro_timer Timer matches 1 run clear @a crossbow
execute if score intro_timer Timer matches 1 run title @a times 60 5 10
execute if score intro_timer Timer matches 1 run effect give @a nausea 6 10 true
execute if score intro_timer Timer matches 1 run title @a[tag=!recorder,tag=!debug] title {"translate":"core.functions.files.lobby_startup.32"}
execute if score intro_timer Timer matches 1 run title @a[tag=!recorder,tag=!debug] subtitle {"translate":"wtem.empty"}
execute if score intro_timer Timer matches 1 run execute as @a at @s run playsound entity.illusioner.prepare_blindness record @s 

##Teleport into first map loading zone and after that into next one
execute if score intro_timer Timer matches 61 run spreadplayers 92.5 105.5 0 4 under -22 false @a[tag=!recorder,tag=!debug]
execute if score intro_timer Timer matches 61 run gamemode adventure @a[tag=!recorder,tag=!debug]

execute if score intro_timer Timer matches 101 run tag @a remove red_team
execute if score intro_timer Timer matches 101 run tag @a remove blue_team
execute if score intro_timer Timer matches 101 run title @a[tag=!recorder,tag=!debug] times 10 5 10
execute if score intro_timer Timer matches 101 run title @a[tag=!recorder,tag=!debug] title {"translate":"core.functions.files.lobby_startup.34"}
execute if score ManualTeams Settings matches 0 if score intro_timer Timer matches 111 run execute as @a[tag=!recorder,tag=!debug] at @s run tp @s ~110 ~-19 ~-8
execute if score ManualTeams Settings matches 1 if score intro_timer Timer matches 111 run spreadplayers 202.5 97.5 0 4 under -43 false @a[tag=!recorder,tag=!debug]
execute if score intro_timer Timer matches 171 run title @a[tag=!recorder,tag=!debug] times 10 5 10
execute if score intro_timer Timer matches 171 run title @a[tag=!recorder,tag=!debug] title {"translate":"core.functions.files.lobby_startup.35"}
execute if score intro_timer Timer matches 181 run execute as @a[tag=!recorder,tag=!debug] at @s run teleport @s ~-4 ~1 ~-114
execute if score intro_timer Timer matches 241 run title @a[tag=!recorder,tag=!debug] title {"translate":"core.functions.files.lobby_startup.36"}
execute if score intro_timer Timer matches 251 run execute as @a[tag=!recorder,tag=!debug] at @s run teleport @s ~-109 ~16 ~11

##Make countdown sound
execute if score intro_timer Timer matches 81 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 0.9
execute if score intro_timer Timer matches 101 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 1.0
execute if score intro_timer Timer matches 121 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 1.1
execute if score intro_timer Timer matches 141 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 1.2
execute if score intro_timer Timer matches 141 run execute as @a at @s run forceload add 281 -58 27 164
execute if score intro_timer Timer matches 161 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 1.3
execute if score intro_timer Timer matches 181 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 1.4
execute if score intro_timer Timer matches 181 run function core:files/structure_load
execute if score intro_timer Timer matches 181 run function core:files/_entity_loader
execute if score intro_timer Timer matches 201 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 1.5
execute if score intro_timer Timer matches 221 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 1.6
execute if score intro_timer Timer matches 241 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 1.7
execute if score intro_timer Timer matches 261 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 1.8
execute if score intro_timer Timer matches 281 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 1.9
execute if score intro_timer Timer matches 301 run execute as @a at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.6 2.0

##Set the settings into the game after the map loading is done, when cutscene deactivated just start the game, when activated teleport to cutscene place and after that do the same.
execute if score intro_timer Timer matches 301 run function core:files/prepare_settings
execute if score intro_timer Timer matches 302 run title @a[tag=!recorder,tag=!debug] title {"translate":"core.functions.files.lobby_startup.37"}

##When Skip Cutscene
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 if score MinigameOnly Settings matches 1 run tag @r[tag=!recorder,tag=runner] add death_runner
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run scoreboard players set @a Deaths 0
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run scoreboard players set @a Spawned 0
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run team join player @a[tag=!killer]
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run team join death @a[tag=killer]
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run gamemode adventure @a[tag=!recorder,tag=!debug]
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run tp @a[tag=!recorder,tag=killer] 58.2 -37.0 -0.5 -45 0
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run spreadplayers 47.5 3 0 5 under -40 false @a[tag=!recorder,tag=runner]
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run effect give @a[tag=!recorder,tag=runner] slowness 3 255 true
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run spawnpoint @a[tag=!recorder,tag=runner] 42 -35 -3 -45
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run spawnpoint @a[tag=!recorder,tag=killer] 58 -37 -0 -45
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run tag @a[tag=!recorder,tag=!debug] remove titled_ready
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run tag @a[tag=!recorder,tag=!debug] remove ready_to_start
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run scoreboard objectives remove player_logout
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run scoreboard objectives add player_logout custom:leave_game
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run scoreboard players set @a anti_speedrun 100
execute if score SkipCutscene Settings matches 1 run execute if score intro_timer Timer matches 312 run scoreboard players set GameStarted Game 1

##When does not skip the cutscene
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 312 run scoreboard players set @a Deaths 0
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 312 run scoreboard players set @a Spawned 0
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 312..509 run gamemode spectator @a[tag=!recorder,tag=!debug]
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 312..509 run execute as @a[tag=!recorder,tag=!debug] at @s run teleport @s @e[tag=!recorder,tag=cutscene_marker,limit=1]
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 327 run execute as @a at @s run playsound item.goat_horn.sound.0 record @s
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 327 run team join player @a[tag=!killer]
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 327 run team join death @a[tag=killer]
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 327 run title @a[tag=!recorder,tag=!debug] times 60 25 28
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 327 run title @a[tag=!recorder,tag=!debug] title {"translate":"core.functions.files.lobby_startup.38"}
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 377 run title @a[tag=!recorder,tag=!debug] subtitle {"translate":"core.functions.files.lobby_startup.39","color":"#ffdc30"}
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 377 run execute as @a at @s run playsound item.goat_horn.sound.1 record @s
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 if score MinigameOnly Settings matches 1 run tag @r[tag=!recorder,tag=runner] add death_runner
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 440 run title @a[tag=!recorder,tag=!debug] times 10 5 10
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 440 run title @a[tag=!recorder,tag=!debug] title {"translate":"core.functions.files.lobby_startup.40"}
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run gamemode adventure @a[tag=!recorder,tag=!debug]
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run tp @a[tag=!recorder,tag=killer] 58.2 -37.0 -0.5 -45 0
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run spreadplayers 47.5 3 0 5 under -40 false @a[tag=!recorder,tag=runner]
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run effect give @a[tag=!recorder,tag=runner] slowness 2 255 true
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run spawnpoint @a[tag=!recorder,tag=runner] 42 -35 -3 -45
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run spawnpoint @a[tag=!recorder,tag=killer] 58 -37 -0 -45
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run tag @a[tag=!recorder,tag=!debug] remove titled_ready
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run tag @a[tag=!recorder,tag=!debug] remove ready_to_start
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run scoreboard objectives remove player_logout
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run scoreboard objectives add player_logout custom:leave_game
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run scoreboard players set @a anti_speedrun 100
execute if score SkipCutscene Settings matches 0 run execute if score intro_timer Timer matches 450 run scoreboard players set GameStarted Game 1



