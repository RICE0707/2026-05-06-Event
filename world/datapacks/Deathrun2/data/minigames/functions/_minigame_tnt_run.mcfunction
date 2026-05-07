##
 # _minigame_tnt_run.mcfunction
 # 
 #
 # Created by Lifeely.
##
##Make that markers on the right hight after certain time will break block inside them and kill self

execute unless score cooldown_startup_tnt_run Timer matches 81.. run scoreboard players add cooldown_startup_tnt_run Timer 1
execute if score cooldown_startup_tnt_run Timer matches 20 run effect clear @a
execute if score cooldown_startup_tnt_run Timer matches 20 run tag @a[tag=!recorder,tag=death_runner] add minigame_spectator_runner
execute if score cooldown_startup_tnt_run Timer matches 20 run tp @a[tag=!recorder,tag=minigame_spectator_runner] 344.5 -43 232.5 180 0
execute if score cooldown_startup_tnt_run Timer matches 20 run tp @a[tag=!recorder,tag=minigame_spectator_killer] 344.5 -43 192.5 0 0
execute if score cooldown_startup_tnt_run Timer matches 20.. run effect give @a[tag=!recorder,tag=!spectator] instant_health infinite 200 true

execute if score cooldown_startup_tnt_run Timer matches 20 run title @a times 5 70 5
execute if score cooldown_startup_tnt_run Timer matches 20 run title @a title {"translate":"minigames.functions._minigame_tnt_run.1","bold": false}
execute if score cooldown_startup_tnt_run Timer matches 20 run title @a subtitle {"translate":"minigames.functions._minigame_tnt_run.2","color": "green","bold": true}
execute if score cooldown_startup_tnt_run Timer matches 20 run execute as @a at @s run playsound ui.button.click record @s ~ ~ ~ 0.5 1.5
execute if score cooldown_startup_tnt_run Timer matches 40 run title @a subtitle {"translate":"minigames.functions._minigame_tnt_run.3","color": "yellow","bold": true}
execute if score cooldown_startup_tnt_run Timer matches 40 run execute as @a at @s run playsound ui.button.click record @s ~ ~ ~ 0.5 1.2
execute if score cooldown_startup_tnt_run Timer matches 60 run title @a subtitle {"translate":"minigames.functions._minigame_tnt_run.4","color": "dark_red","bold": true}
execute if score cooldown_startup_tnt_run Timer matches 60 run execute as @a at @s run playsound ui.button.click record @s ~ ~ ~ 0.5 1.0
execute if score cooldown_startup_tnt_run Timer matches 80 run title @a subtitle {"translate":"minigames.functions._minigame_tnt_run.5","color": "aqua","bold": true}
execute if score cooldown_startup_tnt_run Timer matches 80 run execute as @a at @s run playsound entity.player.levelup record @s
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @e[tag=!recorder,type=marker,tag=tnt_run_blockbreaker] at @s run scoreboard players add @s kill_self 1

execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if entity @s[y=-43,distance=..2.5] run execute if block ~ ~-2 ~ white_concrete run summon marker ~ -45 ~ {Tags:["tnt_run_blockbreaker"]}
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @e[tag=!recorder,type=marker,tag=tnt_run_blockbreaker] at @s run execute if score @s kill_self matches 1 run setblock ~ ~ ~ gray_concrete
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @e[tag=!recorder,type=marker,tag=tnt_run_blockbreaker] at @s run execute if score @s kill_self matches 4.. run fill ~ ~ ~ ~ ~1 ~ air destroy
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @e[tag=!recorder,type=marker,tag=tnt_run_blockbreaker] at @s run execute if score @s kill_self matches 4.. run kill @s
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if entity @s[y=-43,distance=..2.5] run execute if block ~ ~-3 ~ white_concrete run summon marker ~ -45 ~ {Tags:["tnt_run_blockbreaker"]}

execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if entity @s[y=-50,distance=..2.5] run execute if block ~ ~-2 ~ white_concrete run summon marker ~ -52 ~ {Tags:["tnt_run_blockbreaker"]}
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @e[tag=!recorder,type=marker,tag=tnt_run_blockbreaker] at @s run execute if score @s kill_self matches 1 run setblock ~ ~ ~ gray_concrete
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @e[tag=!recorder,type=marker,tag=tnt_run_blockbreaker] at @s run execute if score @s kill_self matches 4.. run fill ~ ~ ~ ~ ~1 ~ air destroy
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @e[tag=!recorder,type=marker,tag=tnt_run_blockbreaker] at @s run execute if score @s kill_self matches 4.. run kill @s
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if entity @s[y=-50,distance=..2.5] run execute if block ~ ~-3 ~ white_concrete run summon marker ~ -52 ~ {Tags:["tnt_run_blockbreaker"]}

execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if entity @s[y=-56,distance=..2.5] run execute if block ~ ~-2 ~ white_concrete run summon marker ~ -58 ~ {Tags:["tnt_run_blockbreaker"]}
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @e[tag=!recorder,type=marker,tag=tnt_run_blockbreaker] at @s run execute if score @s kill_self matches 1 run setblock ~ ~ ~ gray_concrete
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @e[tag=!recorder,type=marker,tag=tnt_run_blockbreaker] at @s run execute if score @s kill_self matches 4.. run fill ~ ~ ~ ~ ~1 ~ air destroy
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @e[tag=!recorder,type=marker,tag=tnt_run_blockbreaker] at @s run execute if score @s kill_self matches 4.. run kill @s
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if entity @s[y=-56,distance=..2.5] run execute if block ~ ~-3 ~ white_concrete run summon marker ~ -58 ~ {Tags:["tnt_run_blockbreaker"]}

##Anti player freeze in place for more than 2 sec
execute if score cooldown_startup_tnt_run Timer matches 80.. run scoreboard players remove @a _minigame_tnt_run 1



execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if score @s anti_freeze_tnt_run_walk matches 1.. run scoreboard players set @s _minigame_tnt_run 40
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if score @s anti_freeze_tnt_run_sprint matches 1.. run scoreboard players set @s _minigame_tnt_run 40

execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if score @s _minigame_tnt_run matches ..0 run effect give @s instant_damage 1 0 true
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if score @s _minigame_tnt_run matches ..0 run scoreboard players set @s _minigame_tnt_run 40

execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if score @s anti_freeze_tnt_run_sprint matches 1.. run scoreboard players set @s anti_freeze_tnt_run_sprint 0
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute as @a at @s run execute if score @s anti_freeze_tnt_run_walk matches 1.. run scoreboard players set @s anti_freeze_tnt_run_walk 0




execute if score cooldown_startup_tnt_run Timer matches 80.. run execute unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_killer,scores={Deaths=..0}] run scoreboard players set Winner= Game 1
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_killer,scores={Deaths=..0}] run scoreboard players set GameStarted Game 3

execute if score cooldown_startup_tnt_run Timer matches 80.. run execute unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,scores={Deaths=..0}] run scoreboard players set Winner= Game 0
execute if score cooldown_startup_tnt_run Timer matches 80.. run execute unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,scores={Deaths=..0}] run scoreboard players set GameStarted Game 3


