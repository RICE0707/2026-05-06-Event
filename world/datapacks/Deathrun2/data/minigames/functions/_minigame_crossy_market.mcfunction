##
 # _minigame_crossy_market.mcfunction
 # 
 #
 # Created by Lifeely.
##

##Start intro until its done
execute unless score crossy_minigame Timer matches 201.. run scoreboard players add crossy_minigame Timer 1

##Small intro
execute if score crossy_minigame Timer matches 1.. run effect give @a instant_health infinite 200 true
execute if score crossy_minigame Timer matches 1.. run function minigames:_4_crossy_spawn
execute if score crossy_minigame Timer matches 1 run tag @a[tag=!recorder,tag=death_runner] add minigame_spectator_runner
execute if score crossy_minigame Timer matches 1 run clear @a crossbow
execute if score crossy_minigame Timer matches 1 run scoreboard players set @a Lives 2
execute if score crossy_minigame Timer matches 1 run effect give @a slowness infinite 200 true
execute if score crossy_minigame Timer matches 1 run spawnpoint @a -105 -34 129 45
execute if score crossy_minigame Timer matches 1 run spreadplayers -110.5 132.5 0 3 under -33 false @a
execute if score crossy_minigame Timer matches 5 run fill -108 -30 146 -114 -34 146 barrier
execute if score crossy_minigame Timer matches 15 run title @a times 5 75 5
execute if score crossy_minigame Timer matches 15 run execute as @a at @s run playsound item.goat_horn.sound.1 record @s
execute if score crossy_minigame Timer matches 15 run title @a title [{"translate":"minigames.functions._minigame_crossy_market.1","bold": false}]
execute if score crossy_minigame Timer matches 15 run title @a subtitle [{"translate":"wtem.empty"}]
execute if score crossy_minigame Timer matches 15 run tellraw @a [{"translate":"minigames.functions._minigame_crossy_market.3","bold": true,"color": "aqua"},{"translate":"minigames.functions._minigame_crossy_market.4","color": "white"},{"translate":"minigames.functions._minigame_crossy_market.5","color": "aqua","bold": false}]
execute if score crossy_minigame Timer matches 100 run title @a times 5 10 5
execute if score crossy_minigame Timer matches 100 run title @a title {"translate":"wtem.empty"}
execute if score crossy_minigame Timer matches 100 run title @a subtitle {"translate":"minigames.functions._minigame_crossy_market.7","bold": true,"color": "green"}
execute if score crossy_minigame Timer matches 100 run execute as @a at @s run playsound ui.button.click record @s
execute if score crossy_minigame Timer matches 120 run title @a title {"translate":"wtem.empty"}
execute if score crossy_minigame Timer matches 120 run title @a subtitle {"translate":"minigames.functions._minigame_crossy_market.9","bold": true,"color": "yellow"}
execute if score crossy_minigame Timer matches 120 run execute as @a at @s run playsound ui.button.click record @s
execute if score crossy_minigame Timer matches 140 run title @a title {"translate":"wtem.empty"}
execute if score crossy_minigame Timer matches 140 run title @a subtitle {"translate":"minigames.functions._minigame_crossy_market.11","bold": true,"color": "red"}
execute if score crossy_minigame Timer matches 140 run execute as @a at @s run playsound ui.button.click record @s
execute if score crossy_minigame Timer matches 160 run title @a times 5 30 5
execute if score crossy_minigame Timer matches 160 run execute as @a at @s run playsound entity.player.levelup record @s
execute if score crossy_minigame Timer matches 160 run title @a title {"translate":"wtem.empty"}
execute if score crossy_minigame Timer matches 160 run title @a subtitle {"translate":"minigames.functions._minigame_crossy_market.13","bold": true,"color": "aqua"}
execute if score crossy_minigame Timer matches 160 run fill -108 -30 146 -114 -34 146 air
execute if score crossy_minigame Timer matches 160 run item replace entity @a[tag=!recorder] hotbar.0 with stick{display:{Name:'{"translate":"minigames.functions._minigame_crossy_market.14","color":"yellow","bold":true,"italic":false}'},HideFlags:255,CustomModelData:1,Enchantments:[{id:"minecraft:knockback",lvl:2s}]} 1
execute if score crossy_minigame Timer matches 160 run effect clear @a slowness

##Show players their lives
execute if score crossy_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s Lives matches -1 run title @s actionbar {"translate":"wtem.empty"}
execute if score crossy_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s Lives matches 0 run title @s actionbar {"translate":"minigames.functions._minigame_crossy_market.16"}
execute if score crossy_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s Lives matches 1 run title @s actionbar {"translate":"minigames.functions._minigame_crossy_market.17"}
execute if score crossy_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s Lives matches 2 run title @s actionbar {"translate":"minigames.functions._minigame_crossy_market.18"}

##Villager randomness professions
execute as @e[tag=!recorder,type=villager,tag=_crossy,tag=!has_profession] at @s run function minigames:_4_random_profession

##When runner/killer went through portal make game end
execute unless entity @a[tag=!recorder,tag=debug] run execute if score crossy_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute as @a[tag=!recorder,tag=minigame_spectator_killer,tag=!spectator] at @s run execute if block ~ ~ ~ structure_void run scoreboard players set Winner= Game 0
execute unless entity @a[tag=!recorder,tag=debug] run execute if score crossy_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute as @a[tag=!recorder,tag=minigame_spectator_killer,tag=!spectator] at @s run execute if block ~ ~ ~ structure_void run scoreboard players set GameStarted Game 3

execute unless entity @a[tag=!recorder,tag=debug] run execute if score crossy_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute as @a[tag=!recorder,tag=minigame_spectator_runner,tag=!spectator] at @s run execute if block ~ ~ ~ structure_void run scoreboard players set Winner= Game 1
execute unless entity @a[tag=!recorder,tag=debug] run execute if score crossy_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute as @a[tag=!recorder,tag=minigame_spectator_runner,tag=!spectator] at @s run execute if block ~ ~ ~ structure_void run scoreboard players set GameStarted Game 3

##When other team has died reload and give win to the other one
execute unless entity @a[tag=!recorder,tag=debug] run execute if score crossy_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_killer,tag=!spectator] run scoreboard players set Winner= Game 1
execute unless entity @a[tag=!recorder,tag=debug] run execute if score crossy_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_killer,tag=!spectator] run scoreboard players set GameStarted Game 3

execute unless entity @a[tag=!recorder,tag=debug] run execute if score crossy_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,tag=!spectator] run scoreboard players set Winner= Game 0
execute unless entity @a[tag=!recorder,tag=debug] run execute if score crossy_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,tag=!spectator] run scoreboard players set GameStarted Game 3
