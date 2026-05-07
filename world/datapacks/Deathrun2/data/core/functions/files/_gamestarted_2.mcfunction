##
 # _gamestarted_2.mcfunction
 # 
 #
 # Created by Lifeely.
##

# Minigames 1
forceload remove 29 282 -188 5
# Minigames 2
forceload remove 34 311 388 168
# Deathrun
forceload remove 281 -58 27 164


# No gravity arrow
# execute as @e[tag=!recorder,type=arrow] at @s run data merge entity @s {NoGravity:1b,shake:0b,crit:1b,Tags:["no_gravity_arrow"]}

##In this function when there is player that has first_deathrunner tag (tag that ment he has finished the deathrun), start the chouse minigame 

## Lava kills instanly
execute as @a[tag=!recorder,tag=!spectator] at @s run execute if block ~ ~0.1 ~ lava run function traps:files/_player_explode


execute unless score first_deathrunner Timer matches 7.. run scoreboard players add first_deathrunner Timer 1
execute unless score MinigameSelected Game matches 0 unless score first_deathrunner Timer matches 19.. run scoreboard players add first_deathrunner Timer 1

execute if score first_deathrunner Timer matches 6 run execute as @a[tag=!recorder,tag=death_runner] at @s run teleport @s 192.0 -41.05 125.0 -90 -15
execute if score first_deathrunner Timer matches 1 run function core:files/structure_load
execute if score first_deathrunner Timer matches 1 run function core:files/_entity_loader
execute if score first_deathrunner Timer matches 1 run bossbar set minecraft:end_game_timer visible false
execute if score first_deathrunner Timer matches 1 run clear @a pufferfish
execute if score first_deathrunner Timer matches 1 run execute as @a at @s run attribute @s minecraft:generic.movement_speed base set 0.11000000149011612
execute if score first_deathrunner Timer matches 1 run xp set @a 0 points
execute if score first_deathrunner Timer matches 1 run xp set @a 0 levels
execute if score first_deathrunner Timer matches 1 run scoreboard players set @a Deaths 0
execute if score first_deathrunner Timer matches 1 run tag @a[tag=!recorder,tag=spectator,tag=!debug,tag=!death_runner] add minigame_spectator_runner
execute if score first_deathrunner Timer matches 1 run tag @a[tag=!recorder,tag=runner,tag=!debug,tag=!death_runner] add minigame_spectator_runner
execute if score first_deathrunner Timer matches 1 run tag @a[tag=!recorder,tag=killer,tag=!debug,tag=!death_runner] add minigame_spectator_killer
execute if score first_deathrunner Timer matches 1 run team modify death friendlyFire true
execute if score first_deathrunner Timer matches 1 run team modify player friendlyFire true
execute if score first_deathrunner Timer matches 1 run team modify death collisionRule pushOtherTeams
execute if score first_deathrunner Timer matches 1 run team modify player collisionRule always
execute if score first_deathrunner Timer matches 1 run scoreboard players set @a Lives 0
execute if score first_deathrunner Timer matches 1 run clear @a pufferfish{CustomModelData:304}
execute if score first_deathrunner Timer matches 1 run clear @a carrot_on_a_stick


##Anti bug system for players not geting adventure mode  **Might be an bug from server side by forcegamemode after death**
execute if score first_deathrunner Timer matches 1.. run execute as @a[tag=!recorder,tag=!debug] at @s run execute if score @s Lives matches 0.. unless entity @s[tag=spectator] run gamemode adventure @s

##Give players firework crossbow and when shoted, remove the crossbow (Deleting is automated in main mcfunciton)
execute unless score MinigameSelected Game matches 1 unless score MinigameSelected Game matches 4 run scoreboard players add crossbow_timer Timer 1
execute unless score MinigameSelected Game matches 1 unless score MinigameSelected Game matches 4 if score crossbow_timer Timer matches 1 run execute as @a[tag=!recorder,tag=!debug] at @s run item replace entity @s weapon.offhand with crossbow{HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:piercing",lvl:20s}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:0,Colors:[I;880383],FadeColors:[I;16712552]}]}}},{},{}],Charged:1b} 1
execute unless score MinigameSelected Game matches 1 unless score MinigameSelected Game matches 4 run execute as @a[tag=!recorder,tag=!debug] at @s run execute store result score @s crossbow_count run clear @s crossbow 0
execute unless score MinigameSelected Game matches 1 unless score MinigameSelected Game matches 4 run execute as @a[tag=!recorder,tag=!debug] at @s run execute if score @s crossbow_count matches 2.. run clear @s crossbow
execute unless score MinigameSelected Game matches 1 unless score MinigameSelected Game matches 4 if score crossbow_timer Timer matches 100.. run scoreboard players set crossbow_timer Timer 0
execute unless score MinigameSelected Game matches 1 unless score MinigameSelected Game matches 4 run execute as @a[tag=!recorder,tag=!death_runner,tag=!debug] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b}}},{},{}],Charged:1b}}]}] run clear @s crossbow
execute unless score MinigameSelected Game matches 1 unless score MinigameSelected Game matches 4 run execute as @a[tag=!recorder,tag=!debug] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b}}},{},{}],Charged:1b}}]}] run clear @s crossbow

##As spectator play particle behind them *Make spectator active in minigame()
execute unless score MinigameSelected Game matches 0 run execute as @a[tag=!recorder,tag=spectator,gamemode=spectator] at @s unless entity @a[tag=!recorder,distance=0.6..1.75,tag=runner] unless entity @a[tag=!recorder,distance=0.6..2.75,tag=killer] run particle dust 0.561 0.055 0.855 1 ~ ~2.2 ~ 0 0 0 0 2 normal
execute unless score MinigameSelected Game matches 0 unless score MinigameSelected Game matches 7 unless score MinigameSelected Game matches 1 unless score MinigameSelected Game matches 4 run execute as @a[tag=!recorder,scores={Deaths=1..}] at @s run tag @s add spectator
execute unless score MinigameSelected Game matches 0 if score MinigameSelected Game matches 7 run execute as @a[tag=!recorder,scores={Deaths=3..}] at @s run tag @s add spectator
execute unless score MinigameSelected Game matches 0 if score MinigameSelected Game matches 1 run execute as @a[tag=!recorder,scores={Lives=..-1}] at @s run tag @s add spectator
execute unless score MinigameSelected Game matches 0 if score MinigameSelected Game matches 4 run execute as @a[tag=!recorder,scores={Lives=..-1}] at @s run tag @s add spectator
execute unless score MinigameSelected Game matches 0 run execute as @a[tag=!recorder,tag=spectator,tag=!debug,tag=!runner] at @s run gamemode spectator @s

##Give players saturation
effect give @a[tag=!recorder,nbt=!{ActiveEffects:[{Id:23}]},tag=!debug] saturation infinite 255 true

##Remove tags of players and give adventure to everyone
execute if score first_deathrunner Timer matches 1 run tag @a[tag=!recorder,tag=!debug] remove checkpoint1_player
execute if score first_deathrunner Timer matches 1 run tag @a[tag=!recorder,tag=!debug] remove checkpoint2_player
execute if score first_deathrunner Timer matches 1 run tag @a[tag=!recorder,tag=!debug] remove checkpoint3_player
execute if score first_deathrunner Timer matches 1 run tag @a[tag=!recorder,tag=!debug] remove killer
execute if score first_deathrunner Timer matches 1 run tag @a[tag=!recorder,tag=!debug] remove runner
execute if score first_deathrunner Timer matches 1 run tag @a[tag=!recorder,tag=!debug] remove spectator
execute if score first_deathrunner Timer matches 6 run gamemode adventure @a[tag=!recorder,tag=!debug]

#Teleport runners and killers into their spectator towers
execute if score first_deathrunner Timer matches 6 run teleport @a[tag=!recorder,tag=minigame_spectator_runner] 214.5 -24.0 141.5 facing entity @p[tag=!recorder,tag=death_runner]
execute if score first_deathrunner Timer matches 6 run teleport @a[tag=!recorder,tag=minigame_spectator_killer] 215.5 -30 107.5 facing entity @p[tag=!recorder,tag=death_runner]

##Effect for everyone
execute if score MinigameSelected Game matches 0 run effect give @a[tag=!recorder,tag=!debug] instant_health infinite 200 true
execute if score MinigameSelected Game matches 0 run effect give @a[tag=!recorder,tag=!debug] resistance infinite 2 true
execute if score MinigameSelected Game matches 0 run effect give @a[tag=!recorder,tag=!debug] fire_resistance infinite 0 true

##Detect system when player jumping in the tunnel
# - 1  =  Castle Snipers
# - 2  =  Steve Says
# - 3  =  Hide and Seek
# - 4  =  Crossy Market
# - 5  =  Reload
# - 6  =  TNT Run
# - 7  =  Redlight greenlight

##Based on tunel entered, and if structure void inside player then teleport
execute as @a[tag=!recorder,tag=death_runner] at @s run execute if entity @s[x=246.5,z=125.5,distance=..3] if block ~ ~ ~ structure_void run scoreboard players set MinigameSelected Game 1
execute as @a[tag=!recorder,tag=death_runner] at @s run execute if entity @s[x=235.5,z=109.5,distance=..3] if block ~ ~ ~ structure_void run scoreboard players set MinigameSelected Game 2
execute as @a[tag=!recorder,tag=death_runner] at @s run execute if entity @s[x=246.5,z=117.5,distance=..3] if block ~ ~ ~ structure_void run scoreboard players set MinigameSelected Game 3
execute as @a[tag=!recorder,tag=death_runner] at @s run execute if entity @s[x=242.5,z=131.5,distance=..3] if block ~ ~ ~ structure_void run scoreboard players set MinigameSelected Game 4

execute as @a[tag=!recorder,tag=death_runner] at @s run execute if entity @s[x=242.5,z=111.5,distance=..3] if block ~ ~ ~ structure_void run scoreboard players set MinigameSelected Game 6
execute as @a[tag=!recorder,tag=death_runner] at @s run execute if entity @s[x=235.5,z=133.5,distance=..3] if block ~ ~ ~ structure_void run scoreboard players set MinigameSelected Game 7

##When game selected then fade screen and start the teleport to the right one and loop the minigame function
execute unless score MinigameSelected Game matches 0 if score first_deathrunner Timer matches 8 run function core:files/_entity_loader
execute unless score MinigameSelected Game matches 0 if score first_deathrunner Timer matches 8 run title @a times 10 20 10
execute unless score MinigameSelected Game matches 0 if score first_deathrunner Timer matches 8 run title @a title {"translate":"core.functions.files._gamestarted_2.1"}

execute unless score _Reload Game matches 1 if score first_deathrunner Timer matches 19.. if score MinigameSelected Game matches 1 run function minigames:_minigame_snipers
execute unless score _Reload Game matches 1 if score first_deathrunner Timer matches 19.. if score MinigameSelected Game matches 2 run function minigames:_minigame_simon_says
execute unless score _Reload Game matches 1 if score first_deathrunner Timer matches 19.. if score MinigameSelected Game matches 3 run function minigames:_minigame_hide_and_seek
execute unless score _Reload Game matches 1 if score first_deathrunner Timer matches 19.. if score MinigameSelected Game matches 4 run function minigames:_minigame_crossy_market
execute unless score _Reload Game matches 1 if score first_deathrunner Timer matches 19.. if score MinigameSelected Game matches 5 run scoreboard players set _Reload Game 1
execute unless score _Reload Game matches 1 if score first_deathrunner Timer matches 19.. if score MinigameSelected Game matches 6 run function minigames:_minigame_tnt_run
execute unless score _Reload Game matches 1 if score first_deathrunner Timer matches 19.. if score MinigameSelected Game matches 7 run function minigames:_minigame_redlight_greenlight


##When reload enabled then make "safe structureload and entity kill"
execute if score _Reload Game matches 1 unless score MinigameFinished Game matches 1 run function core:files/structure_load
execute if score _Reload Game matches 1 unless score MinigameFinished Game matches 1 run kill @e[tag=!recorder,tag=rlgl_raid]
execute if score _Reload Game matches 1 unless score MinigameFinished Game matches 1 run scoreboard players set MinigameFinished Game 1




##Spectators teleport to areans and keep them there as long as the minigame is on

execute if score MinigameSelected Game matches 7 run execute as @a[tag=!recorder,tag=spectator] at @s run execute unless entity @s[x=-71,z=63.5,distance=..110] run tp @s -6.5 -21 38.5 36 45
execute if score MinigameSelected Game matches 6 run execute as @a[tag=!recorder,tag=spectator] at @s run execute unless entity @s[x=344.5,z=212.5,distance=..50] run teleport @s 336.9 -33.5 203.5 -45 45

execute if score MinigameSelected Game matches 4 run execute as @a[tag=!recorder,tag=spectator] at @s run execute unless entity @s[x=-113.5,z=199.5,distance=..115] run teleport @s -113.5 -9.5 199.5 70 30
execute if score MinigameSelected Game matches 3 run execute as @a[tag=!recorder,tag=spectator] at @s run execute unless entity @s[x=130.5,z=234.5,distance=..67] run tp @s 117.0 -14.5 247.5 -134 59
execute if score MinigameSelected Game matches 3 run execute as @a[tag=!recorder,tag=spectator] at @s run execute unless entity @s[y=-14.5,distance=..4] run tp @s 117.0 -14.5 247.5 -134 59
execute if score MinigameSelected Game matches 2 run execute as @a[tag=!recorder,tag=spectator] at @s run execute unless entity @s[x=5.5,z=218.5,distance=..40] run tp @s 5.5 -25.8 231.5 -180 50
execute if score MinigameSelected Game matches 1 run execute as @a[tag=!recorder,tag=spectator] at @s run execute unless entity @s[x=-24.5,z=-790,distance=..155] run tp @s 15.5 24 -791.5 90 30


