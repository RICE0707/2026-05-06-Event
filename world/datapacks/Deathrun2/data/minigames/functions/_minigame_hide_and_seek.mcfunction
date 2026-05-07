##
 # _minigame_hide_and_seek.mcfunction
 # 
 #
 # Created by Lifeely.
##
# minigame_spectator_runner
# minigame_spectator_killer

scoreboard players add hide_and_seek_game_timer Timer 1
scoreboard players remove timer_countdown Timer 1

##Cutscene start
execute if score hide_and_seek_game_timer Timer matches 1 run scoreboard players set @a Deaths 0
execute if score hide_and_seek_game_timer Timer matches 1 run clone 161 -24 213 162 -22 213 161 -31 215
execute if score hide_and_seek_game_timer Timer matches 1 run tag @a[tag=!recorder,tag=death_runner] add minigame_spectator_runner
execute if score hide_and_seek_game_timer Timer matches 1 run teleport @a[tag=!recorder,tag=minigame_spectator_killer] 162.5 -31 210.5 6 0
execute if score hide_and_seek_game_timer Timer matches 1 run spawnpoint @a[tag=!recorder,tag=minigame_spectator_killer] 162 -31 210 6
execute if score hide_and_seek_game_timer Timer matches 1 run teleport @a[tag=!recorder,tag=minigame_spectator_runner] 130.5 -44 234.5 0 0
execute if score hide_and_seek_game_timer Timer matches 1 run spawnpoint @a[tag=!recorder,tag=minigame_spectator_runner] 130 -44 234 6
execute if score hide_and_seek_game_timer Timer matches 1 run effect clear @a
execute if score hide_and_seek_game_timer Timer matches 1 run effect give @a instant_health 3 200 true
execute if score hide_and_seek_game_timer Timer matches 1 run effect give @a[tag=!recorder,tag=minigame_spectator_killer] resistance infinite 200 true
execute if score hide_and_seek_game_timer Timer matches 1 run effect give @a[tag=!recorder,tag=minigame_spectator_killer] instant_health infinite 200 true
execute if score hide_and_seek_game_timer Timer matches 1 run execute as @a[tag=!recorder,tag=minigame_spectator_killer] at @s run attribute @s generic.attack_damage base set 10
execute if score hide_and_seek_game_timer Timer matches 1 run team join minigame_killers @a[tag=!recorder,tag=minigame_spectator_killer]
execute if score hide_and_seek_game_timer Timer matches 1 run team join minigame_runners @a[tag=!recorder,tag=minigame_spectator_runner]
execute if score hide_and_seek_game_timer Timer matches 15 run title @a times 5 75 5
execute if score hide_and_seek_game_timer Timer matches 15 run execute as @a at @s run playsound item.goat_horn.sound.1 record @s
execute if score hide_and_seek_game_timer Timer matches 15 run title @a title [{"translate":"minigames.functions._minigame_hide_and_seek.1","bold": false}]
execute if score hide_and_seek_game_timer Timer matches 15 run title @a[tag=!recorder,tag=minigame_spectator_killer] subtitle {"translate":"minigames.functions._minigame_hide_and_seek.2","color": "#7aff22","underlined": true}
execute if score hide_and_seek_game_timer Timer matches 15 run title @a[tag=!recorder,tag=minigame_spectator_runner] subtitle {"translate":"minigames.functions._minigame_hide_and_seek.3","color": "#7aff22","underlined": true}

execute if score hide_and_seek_game_timer Timer matches 15.. run scoreboard players add hide_and_seek_game_heartbeat Timer 1
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 40.. run scoreboard players set hide_and_seek_game_heartbeat Timer 0
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 0 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=15..20] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 20 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=15..20] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0

execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 0 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=12..14.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.3
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 10 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=12..14.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.3
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 20 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=12..14.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.3
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 30 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=12..14.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.3

execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 0 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=7..11.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.5
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 10 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=7..11.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.5
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 20 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=7..11.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.5
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 30 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=7..11.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.5

execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 0 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=..6.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.7
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 5 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=..6.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.7
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 10 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=..6.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.7
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 15 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=..6.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.7
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 20 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=..6.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.7
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 25 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=..6.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.7
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 30 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=..6.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.7
execute if score hide_and_seek_game_timer Timer matches 15.. if score hide_and_seek_game_heartbeat Timer matches 35 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run execute if entity @a[tag=!recorder,tag=minigame_spectator_killer,distance=..6.999] run playsound minecraft:block.note_block.basedrum record @s ~ ~ ~ 0.333 0.7



execute if score hide_and_seek_game_timer Timer matches 600 run title @a times 10 40 10
execute if score hide_and_seek_game_timer Timer matches 600 run title @a[tag=!recorder,tag=minigame_spectator_killer] title {"translate":"minigames.functions._minigame_hide_and_seek.4","color": "aqua"}
execute if score hide_and_seek_game_timer Timer matches 600 run title @a[tag=!recorder,tag=minigame_spectator_killer] subtitle {"translate":"minigames.functions._minigame_hide_and_seek.5","color": "gold","bold": true}
execute if score hide_and_seek_game_timer Timer matches 600 run title @a[tag=!recorder,tag=minigame_spectator_runner] title {"translate":"minigames.functions._minigame_hide_and_seek.6","color": "yellow"}
execute if score hide_and_seek_game_timer Timer matches 600 run title @a[tag=!recorder,tag=minigame_spectator_runner] subtitle {"translate":"minigames.functions._minigame_hide_and_seek.7","color": "#ff2c2c","bold": true}
execute if score hide_and_seek_game_timer Timer matches 600 run fill 162 -31 215 161 -29 215 air destroy
execute if score hide_and_seek_game_timer Timer matches 600 run execute as @a at @s run playsound entity.wither.death record @s

execute if score hide_and_seek_game_timer Timer matches 600.. run execute unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,scores={Deaths=..0}] run scoreboard players set Winner= Game 0
execute if score hide_and_seek_game_timer Timer matches 600.. run execute unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,scores={Deaths=..0}] run scoreboard players set GameStarted Game 3
execute if score hide_and_seek_game_timer Timer matches 600 run scoreboard players set timer_countdown Timer 4800
execute if score hide_and_seek_game_timer Timer matches 600 run bossbar set minecraft:end_game_timer max 4800
execute if score hide_and_seek_game_timer Timer matches 600 run bossbar set minecraft:end_game_timer visible true
execute if score hide_and_seek_game_timer Timer matches 600 run bossbar set minecraft:end_game_timer players @a
execute if score hide_and_seek_game_timer Timer matches 600.. run execute store result bossbar end_game_timer value run scoreboard players get timer_countdown Timer


execute if score hide_and_seek_game_timer Timer matches 5400.. run execute unless score _Reload Game matches 1 run scoreboard players set Winner= Game 1
execute if score hide_and_seek_game_timer Timer matches 5400.. run execute unless score _Reload Game matches 1 run scoreboard players set GameStarted Game 3

fill ~ ~ ~ ~ ~ ~ stone replace #underwater_bonemeals







