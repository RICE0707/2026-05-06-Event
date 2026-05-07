##
 # _minigame_simon_says.mcfunction
 # 
 #
 # Created by Lifeely.
##
##Start intro until its done
execute unless score simon_says_minigame Timer matches 201.. run scoreboard players add simon_says_minigame Timer 1

##What to do in line

## * Get a random number (what block will be selected).
## * Start a countdown to the disappearance of blocks (Blocks that have not been selected).
## * Break up the unselected blocks.
## * Start countdown to reappearance of blocks.
## * Reappearance of all blocks.

##Small intro
execute if score simon_says_minigame Timer matches 1 run team join no_pvp @a
execute if score simon_says_minigame Timer matches 1 run spawnpoint @a 5 -30 230 -180
execute if score simon_says_minigame Timer matches 1 run tag @a[tag=!recorder,tag=death_runner] add minigame_spectator_runner
execute if score simon_says_minigame Timer matches 1 run spreadplayers 5.5 218.5 0 9 under -37 false @a
execute if score simon_says_minigame Timer matches 1 run effect give @a[tag=!recorder,tag=!spectator] instant_health infinite 200 true
execute if score simon_says_minigame Timer matches 15 run title @a times 5 75 5
execute if score simon_says_minigame Timer matches 15 run execute as @a at @s run playsound item.goat_horn.sound.1 record @s
execute if score simon_says_minigame Timer matches 15 run title @a title {"translate":"minigames.functions._minigame_simon_says.1","bold": false}
execute if score simon_says_minigame Timer matches 15 run title @a subtitle {"translate":"wtem.empty"}
execute if score simon_says_minigame Timer matches 15 run tellraw @a [{"translate":"minigames.functions._minigame_simon_says.3","bold": true,"color": "#66f243"},{"translate":"minigames.functions._minigame_simon_says.4","color": "aqua","bold": false}]
execute if score simon_says_minigame Timer matches 100 run title @a times 5 10 5
execute if score simon_says_minigame Timer matches 100 run title @a title {"translate":"wtem.empty"}
execute if score simon_says_minigame Timer matches 100 run title @a subtitle {"translate":"minigames.functions._minigame_simon_says.6","bold": true,"color": "green"}
execute if score simon_says_minigame Timer matches 100 run execute as @a at @s run playsound ui.button.click record @s
execute if score simon_says_minigame Timer matches 120 run title @a title {"translate":"wtem.empty"}
execute if score simon_says_minigame Timer matches 120 run title @a subtitle {"translate":"minigames.functions._minigame_simon_says.8","bold": true,"color": "yellow"}
execute if score simon_says_minigame Timer matches 120 run execute as @a at @s run playsound ui.button.click record @s
execute if score simon_says_minigame Timer matches 140 run title @a title {"translate":"wtem.empty"}
execute if score simon_says_minigame Timer matches 140 run title @a subtitle {"translate":"minigames.functions._minigame_simon_says.10","bold": true,"color": "red"}
execute if score simon_says_minigame Timer matches 140 run execute as @a at @s run playsound ui.button.click record @s
execute if score simon_says_minigame Timer matches 160 run title @a times 5 30 5
execute if score simon_says_minigame Timer matches 160 run execute as @a at @s run playsound entity.player.levelup record @s
execute if score simon_says_minigame Timer matches 160 run title @a title {"translate":"wtem.empty"}
execute if score simon_says_minigame Timer matches 160 run title @a subtitle {"translate":"minigames.functions._minigame_simon_says.12","bold": true,"color": "aqua"}


##When intro is done start to countdown the timer, unless blocks appeared remove time for next dissapear
execute if score simon_says_minigame Timer matches 200 run function minigames:_2_simon_check
##Play music on boomboxes
execute if score simon_says_minigame Timer matches 200 run playsound music_disc.blocks record @a 24.00 -31.43 218.46 2 1
execute if score simon_says_minigame Timer matches 200 run playsound music_disc.blocks record @a 23.00 -29.94 204.68 2 1
execute if score simon_says_minigame Timer matches 200 run playsound music_disc.blocks record @a 18.58 -28.51 201.00 2 1
execute if score simon_says_minigame Timer matches 200 run playsound music_disc.blocks record @a -11.61 -30.51 202.00 2 1
execute if score simon_says_minigame Timer matches 200 run playsound music_disc.blocks record @a -15.00 -32.50 216.50 2 1
execute if score simon_says_minigame Timer matches 200 run playsound music_disc.blocks record @a -19.53 -28.46 235.00 2 1
execute if score simon_says_minigame Timer matches 200 run playsound music_disc.blocks record @a 3.55 -33.44 246.00 2 1
execute if score simon_says_minigame Timer matches 200 run playsound music_disc.blocks record @a 17.00 -29.47 232.47 2 1


execute if score simon_says_minigame Timer matches 200.. unless score cooldown_disappear _minigame_simon_says >= difficulty _minigame_simon_says run scoreboard players add cooldown_disappear _minigame_simon_says 1
execute if score simon_says_minigame Timer matches 200.. if score cooldown_disappear _minigame_simon_says >= difficulty _minigame_simon_says run function minigames:_2_simon_breakfloor
execute if score simon_says_minigame Timer matches 200.. if score cooldown_disappear _minigame_simon_says >= difficulty _minigame_simon_says run execute unless score cooldown_next _minigame_simon_says matches ..0 run scoreboard players remove cooldown_next _minigame_simon_says 1 

execute if score simon_says_minigame Timer matches 200.. if score cooldown_next _minigame_simon_says matches ..0 run scoreboard players set cooldown_disappear _minigame_simon_says 0
execute if score simon_says_minigame Timer matches 200.. if score cooldown_next _minigame_simon_says matches ..0 run scoreboard players remove difficulty _minigame_simon_says 1
execute if score simon_says_minigame Timer matches 200.. if score cooldown_next _minigame_simon_says matches ..0 run function minigames:_2_simon_check
execute if score simon_says_minigame Timer matches 200.. if score cooldown_next _minigame_simon_says matches ..0 run scoreboard players set cooldown_next _minigame_simon_says 40


##When no runners/killers reload
execute unless entity @a[tag=!recorder,tag=debug] run execute if score simon_says_minigame Timer matches 200.. run execute unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_killer,scores={Deaths=..0}] run scoreboard players set Winner= Game 1
execute unless entity @a[tag=!recorder,tag=debug] run execute if score simon_says_minigame Timer matches 200.. run execute unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_killer,scores={Deaths=..0}] run scoreboard players set GameStarted Game 3

execute unless entity @a[tag=!recorder,tag=debug] run execute if score simon_says_minigame Timer matches 200.. run execute unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,scores={Deaths=..0}] run scoreboard players set Winner= Game 0
execute unless entity @a[tag=!recorder,tag=debug] run execute if score simon_says_minigame Timer matches 200.. run execute unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,scores={Deaths=..0}] run scoreboard players set GameStarted Game 3

##Calculate the last 3 secconds near the end
execute if score simon_says_minigame Timer matches 200.. run scoreboard players operation -20 _minigame_simon_says = difficulty _minigame_simon_says
execute if score simon_says_minigame Timer matches 200.. run scoreboard players operation -20 _minigame_simon_says -= -20_ _minigame_simon_says

execute if score simon_says_minigame Timer matches 200.. run scoreboard players operation -40 _minigame_simon_says = difficulty _minigame_simon_says
execute if score simon_says_minigame Timer matches 200.. run scoreboard players operation -40 _minigame_simon_says -= -40_ _minigame_simon_says

execute if score simon_says_minigame Timer matches 200.. run scoreboard players operation -60 _minigame_simon_says = difficulty _minigame_simon_says
execute if score simon_says_minigame Timer matches 200.. run scoreboard players operation -60 _minigame_simon_says -= -60_ _minigame_simon_says

execute if score simon_says_minigame Timer matches 200.. if score cooldown_disappear _minigame_simon_says = -20 _minigame_simon_says run playsound ui.button.click record @a 5 -32 205 0.5 0.8 0.5
execute if score simon_says_minigame Timer matches 200.. if score cooldown_disappear _minigame_simon_says = -40 _minigame_simon_says run playsound ui.button.click record @a 5 -32 205 0.5 1 0.5
execute if score simon_says_minigame Timer matches 200.. if score cooldown_disappear _minigame_simon_says = -60 _minigame_simon_says run playsound ui.button.click record @a 5 -32 205 0.5 1.2 0.5


##Make villagers look at nearest player to marker underground with villager_looktarget_marker
execute as @e[tag=!recorder,tag=villager_looktarget_marker] at @s run tag @p[tag=!recorder,tag=!spectator] add villager_look_target 
execute as @e[tag=!recorder,type=villager,x=-5,z=221,distance=..50] at @s run teleport @s ~ ~ ~ facing entity @p[tag=!recorder,tag=!spectator]
tag @a remove villager_look_target

##Water Kill system
execute run execute as @a at @s run execute if block ~ ~0.1 ~ water run kill @s
execute run execute as @a at @s run execute if block ~ ~0.1 ~ #underwater_bonemeals run kill @s
execute run execute as @a at @s run execute if block ~ ~0.1 ~ tall_seagrass run kill @s



