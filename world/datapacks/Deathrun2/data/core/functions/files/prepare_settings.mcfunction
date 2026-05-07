##
 # prepare_settings.mcfunction
 # 
 #
 # Created by Lifeely.
##

##In this function based on selected settings, they will be applied at the end of lobby_startup function

#Set the PVP Setting
execute if score PVP Settings matches 0 run team modify player friendlyFire false
execute if score PVP Settings matches 1 run team modify player friendlyFire true

#Set the Easy Parkour Mode
##These are effects and they are controlled at the bottom of the main function

#Set Collisions
execute if score Collisions Settings matches 0 run team modify player collisionRule never
execute if score Collisions Settings matches 1 run team modify player collisionRule always

#Set max killers
##Max.Killer 0 is when there is only one survivor
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 0 run tag @r[tag=!recorder,tag=!debug] add runner
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 0 run tag @a[tag=!recorder,tag=!runner,tag=!debug] add killer

##Make sure that there are enough players for 2 / 3 killers, else change settings to one lower, when still not enough then change again to one.
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 3 unless score PlayersOnline Game matches 4.. run tellraw @a {"translate":"core.functions.files.prepare_settings.1","color": "yellow"}
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 3 unless score PlayersOnline Game matches 4.. run scoreboard players set Max.Killer Settings 2
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 3 unless score PlayersOnline Game matches 4.. run function core:files/update_settings
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 2 unless score PlayersOnline Game matches 3.. run tellraw @a {"translate":"core.functions.files.prepare_settings.2","color": "aqua"}
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 2 unless score PlayersOnline Game matches 3.. run scoreboard players set Max.Killer Settings 1
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 2 unless score PlayersOnline Game matches 3.. run function core:files/update_settings


execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 1 run tag @r[tag=!recorder,tag=!killer,tag=!debug] add killer

execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 2 run tag @r[tag=!recorder,tag=!killer,tag=!debug] add killer
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 2 run tag @r[tag=!recorder,tag=!killer,tag=!debug] add killer

execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 3 run tag @r[tag=!recorder,tag=!killer,tag=!debug] add killer
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 3 run tag @r[tag=!recorder,tag=!killer,tag=!debug] add killer
execute unless score Gamemode Settings matches 8 unless score ManualTeams Settings matches 1 if score Max.Killer Settings matches 3 run tag @r[tag=!recorder,tag=!killer,tag=!debug] add killer

execute if score Gamemode Settings matches 8 run tag @a[tag=!recorder,tag=!runner,tag=!debug] add runner


##When manual Teams selected, give players that have selected their selection role, their role
execute if score ManualTeams Settings matches 1 run tag @a[tag=!recorder,tag=selected_killer] add killer
execute if score ManualTeams Settings matches 1 run tag @a[tag=!recorder,tag=selected_runner] add runner

##Make the bossbar set to everyone but still invisible
bossbar set minecraft:end_game_timer players @a
bossbar set minecraft:end_game_timer visible false

#Select runners
##Make any other player that is not an killer an runner
tag @a[tag=!recorder,tag=!killer,tag=!debug,tag=!runner] add runner


#When super powers done they need to be added here

#True deathrun
##This is automated in the death spawn system

#Match time
##Depends on how long does on match last + the lenght how long does it take for the death to reach the end (Time + 2200 tick (1:50 min))
##Boss Bar (Time left)
execute unless score DeathAlwaysFollow Settings matches 1 if score MatchLength Settings matches 0 run scoreboard players set time_left Game 5800
execute unless score DeathAlwaysFollow Settings matches 1 if score MatchLength Settings matches 0 run scoreboard players set max_time_left Game 5800
execute unless score DeathAlwaysFollow Settings matches 1 if score MatchLength Settings matches 1 run scoreboard players set time_left Game 8200
execute unless score DeathAlwaysFollow Settings matches 1 if score MatchLength Settings matches 1 run scoreboard players set max_time_left Game 8200
execute unless score DeathAlwaysFollow Settings matches 1 if score MatchLength Settings matches 2 run scoreboard players set time_left Game 10600
execute unless score DeathAlwaysFollow Settings matches 1 if score MatchLength Settings matches 2 run scoreboard players set max_time_left Game 10600
execute unless score DeathAlwaysFollow Settings matches 1 if score MatchLength Settings matches 3 run scoreboard players set time_left Game 13000
execute unless score DeathAlwaysFollow Settings matches 1 if score MatchLength Settings matches 3 run scoreboard players set max_time_left Game 13000
execute unless score DeathAlwaysFollow Settings matches 1 if score MatchLength Settings matches 4 run scoreboard players set time_left Game 15400
execute unless score DeathAlwaysFollow Settings matches 1 if score MatchLength Settings matches 4 run scoreboard players set max_time_left Game 15400

execute if score DeathAlwaysFollow Settings matches 1 run scoreboard players set time_left Game 300
execute if score DeathAlwaysFollow Settings matches 1 run scoreboard players set max_time_left Game 300
execute store result bossbar end_game_timer max run scoreboard players get max_time_left Game


#Lives amount
##Needs to be activated after player gets their roles
execute if score Lives Settings matches 0 run scoreboard players set @a[tag=!recorder,tag=runner,tag=!debug] Lives 0
execute if score Lives Settings matches 1 run scoreboard players set @a[tag=!recorder,tag=runner,tag=!debug] Lives 1
execute if score Lives Settings matches 2 run scoreboard players set @a[tag=!recorder,tag=runner,tag=!debug] Lives 2
execute if score Lives Settings matches 3 run scoreboard players set @a[tag=!recorder,tag=runner,tag=!debug] Lives 3
execute if score Lives Settings matches 4 run scoreboard players set @a[tag=!recorder,tag=runner,tag=!debug] Lives 4
execute if score Lives Settings matches 5 run scoreboard players set @a[tag=!recorder,tag=runner,tag=!debug] Lives 5
execute if score Lives Settings matches 6 run scoreboard players set @a[tag=!recorder,tag=runner,tag=!debug] Lives 9

execute as @a at @s run attribute @s generic.max_health base set 20
execute as @a at @s run attribute @s generic.attack_damage base set 1
execute as @a at @s run attribute @s generic.attack_speed base set 4

#Time and weather
execute if score Weather Settings matches 0 run weather clear
execute if score Weather Settings matches 1 run weather rain

execute if score Time Settings matches 0 run time set 6000
execute if score Time Settings matches 1 run time set 15000
execute if score Time Settings matches 2 run time set 0

##Remove player tags Just for sure
tag @a remove spectral_backwards
tag @a remove checkpoint1_player
tag @a remove checkpoint2_player
tag @a remove checkpoint3_player
tag @a remove has_bomb_hat
tag @a remove change_bomb_hat
tag @a remove teleport_cell
tag @a remove swamp_toilet
tag @a remove frog_eaten
tag @a remove quicksand
tag @a remove spectator
tag @a remove bomb_hat_text
tag @s remove remove_ready_to_start
tag @a remove blue_team
tag @a remove red_team
tag @a remove started
tag @a remove has_block
tag @a remove place
tag @a remove out_of_lives
tag @a remove death_runner

execute as @a at @s run attribute @s minecraft:generic.max_health base set 20
