##
 # _minigame_redlight_greenlight.mcfunction
 # 
 #
 # Created by Lifeely.
##

##start cutscene /
##when finished, give players 2 seconds to run /
##when there is no redlight timer selected, then keep adding to timer that when in its primal number, check for if redlight enabled
##redlight enabled = check players for movement (Jump,walk,crawl,swim, ? rotation where is he facing ?)
##players that moved gets redlight kill
##after ~4 secs reset redlight and start from beginning to check for redlight enabled
##when player at the end then reload and text based if killer or runner
##give players 3 lives, and make title actionbar hearts when died clear scoreboard of movement of himself and spawnpoint to beginning

##Start intro until its done
execute unless score rlgl_minigame Timer matches 201.. run scoreboard players add rlgl_minigame Timer 1


##Small intro
execute if score rlgl_minigame Timer matches 1.. run function minigames:_7_rlgl_cityraid
execute if score rlgl_minigame Timer matches 1.. run execute as @a[tag=!recorder,tag=godmode_4sec] at @s run effect give @s invisibility infinite 1 false
execute if score rlgl_minigame Timer matches 1.. run execute as @a[tag=!recorder,tag=!godmode_4sec,nbt={ActiveEffects:[{Id:14}]}] at @s run effect clear @s invisibility
execute if score rlgl_minigame Timer matches 1.. run team join rlgl @a
execute if score rlgl_minigame Timer matches 1.. run team join rlgl @e[tag=!recorder,type=vindicator]
execute if score rlgl_minigame Timer matches 1.. run effect give @a instant_health infinite 200 true
execute if score rlgl_minigame Timer matches 1 run tag @a[tag=!recorder,tag=death_runner] add minigame_spectator_runner
execute if score rlgl_minigame Timer matches 1 run scoreboard players set @a Lives 2
execute if score rlgl_minigame Timer matches 1 run function minigames:_7_rlgl_reset
execute if score rlgl_minigame Timer matches 1 run effect give @a slowness infinite 200 true
execute if score rlgl_minigame Timer matches 1 run team join no_pvp @a
execute if score rlgl_minigame Timer matches 1 run tag @a add godmode_4sec
execute if score rlgl_minigame Timer matches 1 run spawnpoint @a 18 -35 50 96
execute if score rlgl_minigame Timer matches 1 run spreadplayers 15.5 50.5 0 6 under -34 false @a
execute if score rlgl_minigame Timer matches 15 run title @a times 5 75 5
execute if score rlgl_minigame Timer matches 15 run execute as @a at @s run playsound item.goat_horn.sound.1 record @s
execute if score rlgl_minigame Timer matches 15 run title @a title [{"translate":"minigames.functions._minigame_redlight_greenlight.1","bold": false}]
execute if score rlgl_minigame Timer matches 15 run title @a subtitle [{"translate":"wtem.empty"}]
execute if score rlgl_minigame Timer matches 15 run tellraw @a [{"translate":"minigames.functions._minigame_redlight_greenlight.3","bold": true,"color": "#ff3737"},{"translate":"minigames.functions._minigame_redlight_greenlight.4","color": "#66fa3e"},{"translate":"minigames.functions._minigame_redlight_greenlight.5","color": "aqua","bold": false},{"translate":"minigames.functions._minigame_redlight_greenlight.6","color": "dark_red","bold": true}]
execute if score rlgl_minigame Timer matches 100 run title @a times 5 10 5
execute if score rlgl_minigame Timer matches 100 run title @a title {"translate":"wtem.empty"}
execute if score rlgl_minigame Timer matches 100 run title @a subtitle {"translate":"minigames.functions._minigame_redlight_greenlight.8","bold": true,"color": "green"}
execute if score rlgl_minigame Timer matches 100 run execute as @a at @s run playsound ui.button.click record @s
execute if score rlgl_minigame Timer matches 120 run title @a title {"translate":"wtem.empty"}
execute if score rlgl_minigame Timer matches 120 run title @a subtitle {"translate":"minigames.functions._minigame_redlight_greenlight.10","bold": true,"color": "yellow"}
execute if score rlgl_minigame Timer matches 120 run execute as @a at @s run playsound ui.button.click record @s
execute if score rlgl_minigame Timer matches 140 run title @a title {"translate":"wtem.empty"}
execute if score rlgl_minigame Timer matches 140 run title @a subtitle {"translate":"minigames.functions._minigame_redlight_greenlight.12","bold": true,"color": "red"}
execute if score rlgl_minigame Timer matches 140 run execute as @a at @s run playsound ui.button.click record @s
execute if score rlgl_minigame Timer matches 160 run title @a times 5 30 5
execute if score rlgl_minigame Timer matches 160 run execute as @a at @s run playsound entity.player.levelup record @s
execute if score rlgl_minigame Timer matches 160 run title @a title {"translate":"wtem.empty"}
execute if score rlgl_minigame Timer matches 160 run title @a subtitle {"translate":"minigames.functions._minigame_redlight_greenlight.14","bold": true,"color": "aqua"}
execute if score rlgl_minigame Timer matches 160 run effect clear @a slowness
execute if score rlgl_minigame Timer matches 160 run effect clear @a jump_boost
execute if score rlgl_minigame Timer matches 200 run bossbar set minecraft:rlgl_light name {"translate":"minigames.functions._minigame_redlight_greenlight.15"}
execute if score rlgl_minigame Timer matches 200 run bossbar set minecraft:rlgl_light visible true
execute if score rlgl_minigame Timer matches 200 run bossbar set minecraft:rlgl_light players @a
execute if score rlgl_minigame Timer matches 200.. run execute as @e[tag=!recorder,type=vindicator] at @s run execute unless entity @e[tag=!recorder,type=villager,distance=..25] run scoreboard players add @s kill_self 1
execute if score rlgl_minigame Timer matches 200.. run execute as @e[tag=!recorder,type=vindicator] at @s run execute if entity @e[tag=!recorder,type=villager,distance=..25] run scoreboard players set @s kill_self 0
execute if score rlgl_minigame Timer matches 200.. run execute as @e[tag=!recorder,type=vindicator] at @s run execute if score @s kill_self matches 100.. run kill @s


##As players that have godmode_4sec tag let the eye ignore them for 4 seconds so they dont die instantly at the start when they died
execute as @a[tag=!recorder,tag=godmode_4sec] at @s run execute unless score @s godmode matches 80.. run scoreboard players add @s godmode 1
execute as @a at @s run execute if score @s godmode matches 80.. run tag @s remove godmode_4sec
execute as @a at @s run execute if score @s godmode matches 80.. run scoreboard players reset @s godmode


##Add timer and when there is no red light, then place green light
execute if score rlgl_minigame Timer matches 200.. unless score _redlight_chance_select _minigame_rlgl matches 2 unless score _redlight_chance_timer _minigame_rlgl matches 0 run scoreboard players remove _redlight_chance_timer _minigame_rlgl 1
execute if score rlgl_minigame Timer matches 200.. unless score _redlight_chance_select _minigame_rlgl matches 2 run bossbar set minecraft:rlgl_light name {"translate":"minigames.functions._minigame_redlight_greenlight.16"}

##When timer is 0 then check the random number
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 unless score _redlight_chance_select _minigame_rlgl matches 2 run function minigames:_7_rlgl_check

##When redlight randomnumber is selected, then make the light change to yellow and in 0.5 sec to red
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 unless score _redlight_chance_select _minigame_rlgl matches 2 run scoreboard players set _redlight_chance_timer _minigame_rlgl 15
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches 40..65 run bossbar set minecraft:rlgl_light name {"translate":"minigames.functions._minigame_redlight_greenlight.17"}
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches ..39 run bossbar set minecraft:rlgl_light name {"translate":"minigames.functions._minigame_redlight_greenlight.18"}

##Playsound when lamp changes
execute if score rlgl_minigame Timer matches 200.. if score _redlight_cooldown_timer _minigame_rlgl matches 64 run execute as @a at @s run playsound block.lever.click record @s ~ ~ ~ 1 1
execute if score rlgl_minigame Timer matches 200.. if score _redlight_cooldown_timer _minigame_rlgl matches 39 run execute as @a at @s run playsound entity.villager.no record @s ~ ~ ~ 1 0.7
execute if score rlgl_minigame Timer matches 200.. if score _redlight_cooldown_timer _minigame_rlgl matches 1 run execute as @a at @s run playsound entity.villager.celebrate record @s ~ ~ ~ 1 1

##Add scoreboard that checks if player has moved in any way possible during the redlight
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 unless score _redlight_cooldown_timer _minigame_rlgl matches 0 run scoreboard players remove _redlight_cooldown_timer _minigame_rlgl 1
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches 39 run scoreboard objectives add _mg_rlgl_walk_detect custom:walk_one_cm
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches 39 run scoreboard objectives add _mg_rlgl_waterwalk_detect custom:walk_on_water_one_cm
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches 39 run scoreboard objectives add _mg_rlgl_u_waterwalk_detect custom:walk_under_water_one_cm
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches 39 run scoreboard objectives add _mg_rlgl_sprint_detect custom:sprint_one_cm
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches 39 run scoreboard objectives add _mg_rlgl_jump_detect custom:jump
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches 39 run scoreboard objectives add _mg_rlgl_shift_detect custom:crouch_one_cm
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches 39 run scoreboard objectives add _mg_rlgl_swim_detect custom:swim_one_cm
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches 39 run scoreboard objectives add _mg_rlgl_fall_detect custom:fall_one_cm

##When redlight activated and player have moved, make him kill self by eye laser, but ignore godmode players (players that just spawned) for 4 seconds, after that fuck them up!
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches ..39 run execute as @a[tag=!recorder,tag=!godmode_4sec] at @s run execute if score @s[tag=!eye_target,tag=!spectator] _mg_rlgl_walk_detect matches 1.. run function minigames:_7_rlgl_laserkill
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches ..39 run execute as @a[tag=!recorder,tag=!godmode_4sec] at @s run execute if score @s[tag=!eye_target,tag=!spectator] _mg_rlgl_waterwalk_detect matches 1.. run function minigames:_7_rlgl_laserkill
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches ..39 run execute as @a[tag=!recorder,tag=!godmode_4sec] at @s run execute if score @s[tag=!eye_target,tag=!spectator] _mg_rlgl_u_waterwalk_detect matches 1.. run function minigames:_7_rlgl_laserkill
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches ..39 run execute as @a[tag=!recorder,tag=!godmode_4sec] at @s run execute if score @s[tag=!eye_target,tag=!spectator] _mg_rlgl_sprint_detect matches 1.. run function minigames:_7_rlgl_laserkill
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches ..39 run execute as @a[tag=!recorder,tag=!godmode_4sec] at @s run execute if score @s[tag=!eye_target,tag=!spectator] _mg_rlgl_jump_detect matches 1.. run function minigames:_7_rlgl_laserkill
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches ..39 run execute as @a[tag=!recorder,tag=!godmode_4sec] at @s run execute if score @s[tag=!eye_target,tag=!spectator] _mg_rlgl_shift_detect matches 1.. run function minigames:_7_rlgl_laserkill
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches ..39 run execute as @a[tag=!recorder,tag=!godmode_4sec] at @s run execute if score @s[tag=!eye_target,tag=!spectator] _mg_rlgl_swim_detect matches 1.. run function minigames:_7_rlgl_laserkill
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches ..39 run execute as @a[tag=!recorder,tag=!godmode_4sec] at @s run execute if score @s[tag=!eye_target,tag=!spectator] _mg_rlgl_fall_detect matches 1.. run function minigames:_7_rlgl_laserkill

##When redlight is done, then remove scoreboards and reset to the randomnumber picking phase
execute if score rlgl_minigame Timer matches 200.. if score _redlight_chance_timer _minigame_rlgl matches 0 if score _redlight_chance_select _minigame_rlgl matches 2 if score _redlight_cooldown_timer _minigame_rlgl matches 0 run function minigames:_7_rlgl_reset

##Show players their lives
execute as @a[tag=!recorder,tag=!debug] at @s run execute if score @s Lives matches ..-1 run title @s actionbar {"translate":"minigames.functions._minigame_redlight_greenlight.19"}
execute as @a[tag=!recorder,tag=!debug] at @s run execute if score @s Lives matches 0 run title @s actionbar {"translate":"minigames.functions._minigame_redlight_greenlight.20"}
execute as @a[tag=!recorder,tag=!debug] at @s run execute if score @s Lives matches 1 run title @s actionbar {"translate":"minigames.functions._minigame_redlight_greenlight.21"}
execute as @a[tag=!recorder,tag=!debug] at @s run execute if score @s Lives matches 2.. run title @s actionbar {"translate":"minigames.functions._minigame_redlight_greenlight.22"}

##When runner/killer went through portal make game end
execute unless entity @a[tag=!recorder,tag=debug] run execute if score rlgl_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute as @a[tag=!recorder,tag=minigame_spectator_killer,tag=!spectator] at @s run execute if block ~ ~ ~ structure_void run scoreboard players set Winner= Game 0
execute unless entity @a[tag=!recorder,tag=debug] run execute if score rlgl_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute as @a[tag=!recorder,tag=minigame_spectator_killer,tag=!spectator] at @s run execute if block ~ ~ ~ structure_void run scoreboard players set GameStarted Game 3

execute unless entity @a[tag=!recorder,tag=debug] run execute if score rlgl_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute as @a[tag=!recorder,tag=minigame_spectator_runner,tag=!spectator] at @s run execute if block ~ ~ ~ structure_void run scoreboard players set Winner= Game 1
execute unless entity @a[tag=!recorder,tag=debug] run execute if score rlgl_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute as @a[tag=!recorder,tag=minigame_spectator_runner,tag=!spectator] at @s run execute if block ~ ~ ~ structure_void run scoreboard players set GameStarted Game 3

##When other team has died reload and give win to the other one
execute unless entity @a[tag=!recorder,tag=debug] run execute if score rlgl_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_killer,tag=!spectator] run scoreboard players set Winner= Game 1
execute unless entity @a[tag=!recorder,tag=debug] run execute if score rlgl_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_killer,tag=!spectator] run scoreboard players set GameStarted Game 3

execute unless entity @a[tag=!recorder,tag=debug] run execute if score rlgl_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,tag=!spectator] run scoreboard players set Winner= Game 0
execute unless entity @a[tag=!recorder,tag=debug] run execute if score rlgl_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,tag=!spectator] run scoreboard players set GameStarted Game 3
