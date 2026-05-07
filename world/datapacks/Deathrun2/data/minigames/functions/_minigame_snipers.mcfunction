##
 # _minigame_snipers.mcfunction
 # 
 #
 # Created by Lifeely.
##

##Start intro until its done
execute unless score snipers_minigame Timer matches 201.. run scoreboard players add snipers_minigame Timer 1

##Small intro
execute if score snipers_minigame Timer matches 1.. run execute as @e[tag=!recorder,type=arrow] at @s run data merge entity @s {NoGravity:1b,damage:8d}
execute if score snipers_minigame Timer matches 1.. run execute as @a at @s run attribute @s minecraft:generic.max_health base set 10
execute if score snipers_minigame Timer matches 1.. run effect give @a[tag=!recorder,tag=!spectator] saturation infinite 200 true
execute if score snipers_minigame Timer matches 1 run scoreboard players reset @a Deaths
execute if score snipers_minigame Timer matches 1 run tag @a[tag=!recorder,tag=death_runner] add minigame_spectator_runner
execute if score snipers_minigame Timer matches 1 run clear @a crossbow
execute if score snipers_minigame Timer matches 1 run tag @a remove live_block_gone
execute if score snipers_minigame Timer matches 1 run team join minigame_killers @a[tag=!recorder,tag=minigame_spectator_killer]
execute if score snipers_minigame Timer matches 1 run team join minigame_runners @a[tag=!recorder,tag=minigame_spectator_runner]
execute if score snipers_minigame Timer matches 1.. run scoreboard players set @a[tag=!recorder,tag=!spectator,tag=!live_block_gone] Lives 2
execute if score snipers_minigame Timer matches 1 run spawnpoint @a[tag=!recorder,tag=!minigame_spectator_runner,tag=!minigame_spectator_killer] -15 6 -787 90
execute if score snipers_minigame Timer matches 1 run spawnpoint @a[tag=!recorder,tag=minigame_spectator_runner] -15 6 -787 90
execute if score snipers_minigame Timer matches 1 run spawnpoint @a[tag=!recorder,tag=minigame_spectator_killer] -33 6 -818 -90
execute if score snipers_minigame Timer matches 1 run spreadplayers -23.5 -787.5 0 1 under 12 false @a[tag=!recorder,tag=!minigame_spectator_runner,tag=!minigame_spectator_killer]
execute if score snipers_minigame Timer matches 1 run spreadplayers -23.5 -787.5 0 1 under 12 false @a[tag=!recorder,tag=minigame_spectator_runner]
execute if score snipers_minigame Timer matches 1 run spreadplayers -23.5 -816.5 0 1 under 12 false @a[tag=!recorder,tag=minigame_spectator_killer]
execute if score snipers_minigame Timer matches 2 run effect give @a instant_damage 1 0 true
execute if score snipers_minigame Timer matches 2 run execute as @a[tag=!recorder,tag=minigame_spectator_runner] at @s run teleport @s ~ ~ ~ 180 0
execute if score snipers_minigame Timer matches 2 run execute as @a[tag=!recorder,tag=minigame_spectator_killer] at @s run teleport @s ~ ~ ~ 0 0
execute if score snipers_minigame Timer matches 2 run setblock -24 13 -815 respawn_anchor
execute if score snipers_minigame Timer matches 2 run setblock -24 13 -790 netherite_block
execute if score snipers_minigame Timer matches 3 run effect give @a instant_health 1 200 true
execute if score snipers_minigame Timer matches 15 run title @a times 5 75 5
execute if score snipers_minigame Timer matches 15 run execute as @a at @s run playsound item.goat_horn.sound.1 record @s
execute if score snipers_minigame Timer matches 15 run title @a title {"translate":"minigames.functions._minigame_snipers.1","bold": false}
execute if score snipers_minigame Timer matches 15 run title @a subtitle {"translate":"wtem.empty"}
execute if score snipers_minigame Timer matches 15 run tellraw @a [{"translate":"minigames.functions._minigame_snipers.3","bold": true,"color": "#27a9fa"},{"translate":"minigames.functions._minigame_snipers.4","bold":true,"color":"#FE1725"},{"translate":"minigames.functions._minigame_snipers.5","color":"white","bold": false},{"translate":"minigames.functions._minigame_snipers.6","bold":true,"color":"#FF25F6"},{"translate":"minigames.functions._minigame_snipers.7"},{"translate":"minigames.functions._minigame_snipers.8","color":"white","bold": false},{"translate":"minigames.functions._minigame_snipers.9","bold":true,"color":"gold"},{"translate":"minigames.functions._minigame_snipers.10","color":"white","bold": false}]
execute if score snipers_minigame Timer matches 100 run title @a times 5 10 5
execute if score snipers_minigame Timer matches 100 run title @a title {"translate":"wtem.empty"}
execute if score snipers_minigame Timer matches 100 run title @a subtitle {"translate":"minigames.functions._minigame_snipers.12","bold": true,"color": "green"}
execute if score snipers_minigame Timer matches 100 run execute as @a at @s run playsound ui.button.click record @s
execute if score snipers_minigame Timer matches 120 run title @a title {"translate":"wtem.empty"}
execute if score snipers_minigame Timer matches 120 run title @a subtitle {"translate":"minigames.functions._minigame_snipers.14","bold": true,"color": "yellow"}
execute if score snipers_minigame Timer matches 120 run execute as @a at @s run playsound ui.button.click record @s
execute if score snipers_minigame Timer matches 140 run title @a title {"translate":"wtem.empty"}
execute if score snipers_minigame Timer matches 140 run title @a subtitle {"translate":"minigames.functions._minigame_snipers.16","bold": true,"color": "red"}
execute if score snipers_minigame Timer matches 140 run execute as @a at @s run playsound ui.button.click record @s
execute if score snipers_minigame Timer matches 160 run title @a times 5 30 5
execute if score snipers_minigame Timer matches 160 run execute as @a at @s run playsound entity.player.levelup record @s
execute if score snipers_minigame Timer matches 160 run title @a title {"translate":"wtem.empty"}
execute if score snipers_minigame Timer matches 160 run title @a subtitle {"translate":"minigames.functions._minigame_snipers.18","bold": true,"color": "aqua"}
execute if score snipers_minigame Timer matches 160 run effect clear @a

##Give runners and killers their armor/weapons
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_runner] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"}]}] run item replace entity @s armor.chest with leather_chestplate{display:{color:37375},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:quartz",pattern:"minecraft:vex"}} 1
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_runner] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings"}]}] run item replace entity @s armor.legs with leather_leggings{display:{color:37375},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_runner] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_boots"}]}] run item replace entity @s armor.feet with leather_boots{display:{color:37375},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:quartz",pattern:"minecraft:silence"}} 1
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_runner] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run item replace entity @s hotbar.0 with wooden_sword{HideFlags:255,Unbreakable:1b,CustomModelData:1,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:knockback",lvl:5s},{id:"minecraft:sweeping",lvl:3s}]}
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_runner] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"}]}] run item replace entity @s weapon.offhand with shield{HideFlags:255,Unbreakable:1b,CustomModelData:1,Enchantments:[{id:"minecraft:protection",lvl:5s}]}
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_runner] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run item replace entity @s hotbar.1 with crossbow{HideFlags:255,Unbreakable:1b,CustomModelData:1,Enchantments:[{id:"minecraft:power",lvl:7s},{id:"minecraft:punch",lvl:7s},{id:"minecraft:quick_charge",lvl:3s}],Charged:0b}
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_runner] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] run give @s diamond_pickaxe{CanDestroy:["minecraft:respawn_anchor"],Unbreakable:1b,CustomModelData:1,Enchantments:[{id:"minecraft:efficiency",lvl:3s}],display:{Name:'[{"translate":"minigames.functions._minigame_snipers.19","color":"#FF25F6","bold":true,"italic":false},{"translate":"minigames.functions._minigame_snipers.20","color":"gold","bold":true,"italic":false}]',Lore:['[{"translate":"wtem.empty"},{"translate":"minigames.functions._minigame_snipers.22","color":"white","bold":false,"italic":false},{"translate":"minigames.functions._minigame_snipers.23","color":"#FF0000","bold":false,"italic":false}]','[{"translate":"minigames.functions._minigame_snipers.24","color":"#FF0000","bold":false,"italic": false},{"translate":"minigames.functions._minigame_snipers.25","color":"#FF25F6","bold":false,"italic":false}]']},HideFlags:255} 1

##At the start of game give once arrows to players
execute if score snipers_minigame Timer matches 200 run execute as @a[tag=!recorder,tag=!spectator] at @s run item replace entity @a inventory.9 with arrow 12

execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_killer] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"}]}] run item replace entity @s armor.chest with leather_chestplate{display:{color:16711680},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:quartz",pattern:"minecraft:vex"}} 1
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_killer] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings"}]}] run item replace entity @s armor.legs with leather_leggings{display:{color:16711680},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_killer] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_boots"}]}] run item replace entity @s armor.feet with leather_boots{display:{color:16711680},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:quartz",pattern:"minecraft:silence"}} 1
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_killer] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run item replace entity @s hotbar.0 with wooden_sword{HideFlags:255,Unbreakable:1b,CustomModelData:2,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:knockback",lvl:5s},{id:"minecraft:sweeping",lvl:3s}]}
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_killer] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"}]}] run item replace entity @s weapon.offhand with shield{HideFlags:255,Unbreakable:1b,CustomModelData:2,Enchantments:[{id:"minecraft:protection",lvl:5s}]}
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_killer] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run item replace entity @s hotbar.1 with crossbow{HideFlags:255,Unbreakable:1b,CustomModelData:2,Enchantments:[{id:"minecraft:power",lvl:7s},{id:"minecraft:punch",lvl:7s},{id:"minecraft:quick_charge",lvl:3s}],Charged:0b}
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator,tag=minigame_spectator_killer] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] run give @s diamond_pickaxe{CanDestroy:["minecraft:netherite_block"],Unbreakable:1b,CustomModelData:2,Enchantments:[{id:"minecraft:efficiency",lvl:3s}],display:{Name:'[{"translate":"minigames.functions._minigame_snipers.26","color":"#FF25F6","bold":true,"italic":false},{"translate":"minigames.functions._minigame_snipers.27","color":"gold","bold":true,"italic":false}]',Lore:['[{"translate":"wtem.empty"},{"translate":"minigames.functions._minigame_snipers.29","color":"white","bold":false,"italic":false},{"translate":"minigames.functions._minigame_snipers.30","color":"#FF0000","bold":false,"italic":false}]','[{"translate":"minigames.functions._minigame_snipers.31","color":"#2680ff","bold":false,"italic": false},{"translate":"minigames.functions._minigame_snipers.32","color":"#FF25F6","bold":false,"italic":false}]']},HideFlags:255} 1

##When player in void, kill instant
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if entity @s[y=-60,distance=..20] run kill @s

##Store amount of items in players inventory when more than 2 clear them
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute store result score @s crossbow_count run clear @s crossbow 0
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute store result score @s wooden_sword_count run clear @s wooden_sword 0
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute store result score @s leather_helmet_count run clear @s leather_helmet 0
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute store result score @s leather_chestplate_count run clear @s leather_chestplate 0
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute store result score @s leather_leggings_count run clear @s leather_leggings 0
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute store result score @s diamond_pickaxe_count run clear @s diamond_pickaxe 0
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute store result score @s shield_count run clear @s shield 0


execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s crossbow_count matches 2.. run clear @s crossbow 1
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s wooden_sword_count matches 2.. run clear @s wooden_sword 1
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s leather_helmet_count matches 2.. run clear @s leather_helmet 1
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s leather_chestplate_count matches 2.. run clear @s leather_chestplate 1
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s leather_leggings_count matches 2.. run clear @s leather_leggings 1
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s diamond_pickaxe_count matches 2.. run clear @s diamond_pickaxe 1
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s shield_count matches 2.. run clear @s shield 1

##Kill swords,crossbows and arrows that are on the ground (anti clonning)
execute if score snipers_minigame Timer matches 200.. run kill @e[tag=!recorder,type=item,nbt={Item:{id:"minecraft:crossbow"}}]
execute if score snipers_minigame Timer matches 200.. run kill @e[tag=!recorder,type=item,nbt={Item:{id:"minecraft:wooden_sword"}}]
execute if score snipers_minigame Timer matches 200.. run kill @e[tag=!recorder,type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute if score snipers_minigame Timer matches 200.. run kill @e[tag=!recorder,type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}]
execute if score snipers_minigame Timer matches 200.. run kill @e[tag=!recorder,type=item,nbt={Item:{id:"minecraft:shield"}}]

##Store players amount of arrows in scoreboard
execute if score snipers_minigame Timer matches 200.. run execute as @a at @s run execute store result score @s arrow_count run clear @s arrow 0

##When players block destroyed give them title that they are vulnerable again (Only 3 Lives left)
execute if score snipers_minigame Timer matches 50.. run execute if block -24 13 -790 air run execute as @a[tag=!live_block_gone,tag=minigame_spectator_runner] at @s run title @s times 5 50 5
execute if score snipers_minigame Timer matches 50.. run execute if block -24 13 -790 air run execute as @a[tag=!live_block_gone,tag=minigame_spectator_runner] at @s run title @s title [{"translate":"minigames.functions._minigame_snipers.33","color": "#FF25F6","bold": true},{"translate":"minigames.functions._minigame_snipers.34","color": "#fc1b1b","bold": true}]
execute if score snipers_minigame Timer matches 50.. run execute if block -24 13 -790 air run execute as @a[tag=!live_block_gone,tag=minigame_spectator_runner] at @s run title @s subtitle [{"translate":"minigames.functions._minigame_snipers.35","color": "white","bold": false},{"translate":"minigames.functions._minigame_snipers.36","color": "#fc1b1b","bold": true},{"translate":"minigames.functions._minigame_snipers.37","color": "white","bold": false}]
execute if score snipers_minigame Timer matches 50.. run execute if block -24 13 -790 air run execute as @a[tag=!live_block_gone,tag=minigame_spectator_runner] at @s run tag @s add live_block_gone

execute if score snipers_minigame Timer matches 50.. run execute if block -24 13 -815 air run execute as @a[tag=!live_block_gone,tag=minigame_spectator_killer] at @s run title @s times 5 50 5
execute if score snipers_minigame Timer matches 50.. run execute if block -24 13 -815 air run execute as @a[tag=!live_block_gone,tag=minigame_spectator_killer] at @s run title @s title [{"translate":"minigames.functions._minigame_snipers.38","color": "#FF25F6","bold": true},{"translate":"minigames.functions._minigame_snipers.39","color": "#fc1b1b","bold": true}]
execute if score snipers_minigame Timer matches 50.. run execute if block -24 13 -815 air run execute as @a[tag=!live_block_gone,tag=minigame_spectator_killer] at @s run title @s subtitle [{"translate":"minigames.functions._minigame_snipers.40","color": "white","bold": false},{"translate":"minigames.functions._minigame_snipers.41","color": "#fc1b1b","bold": true},{"translate":"minigames.functions._minigame_snipers.42","color": "white","bold": false}]
execute if score snipers_minigame Timer matches 50.. run execute if block -24 13 -815 air run execute as @a[tag=!live_block_gone,tag=minigame_spectator_killer] at @s run tag @s add live_block_gone


##Show players their lives (Based on if live block is active) + ammunition
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!live_block_gone] at @s run execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:0b}}]},tag=!spectator] if score @s Lives matches 2.. run title @s actionbar [{"translate":"minigames.functions._minigame_snipers.43"},{"score":{"name":"@s","objective":"arrow_count"},"color": "white","bold": true},{"translate":"minigames.functions._minigame_snipers.44","bold": true},{"translate":"minigames.functions._minigame_snipers.45","bold": false}]
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=!live_block_gone] at @s run execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]},tag=!spectator] if score @s Lives matches 2.. run title @s actionbar [{"translate":"minigames.functions._minigame_snipers.46"},{"score":{"name":"@s","objective":"arrow_count"},"color": "white","bold": true},{"translate":"minigames.functions._minigame_snipers.47","bold": true},{"translate":"minigames.functions._minigame_snipers.48","bold": true},{"translate":"minigames.functions._minigame_snipers.49","bold": false}]

execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=live_block_gone] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]},tag=spectator] if score @s Lives matches ..-1 run title @s actionbar [{"translate":"minigames.functions._minigame_snipers.50"},{"score":{"name":"@s","objective":"arrow_count"},"color": "white","bold": true},{"translate":"minigames.functions._minigame_snipers.51","bold": true},{"translate":"minigames.functions._minigame_snipers.52","bold": false}]
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=live_block_gone] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]},tag=spectator] if score @s Lives matches 0 run title @s actionbar [{"translate":"minigames.functions._minigame_snipers.53"},{"score":{"name":"@s","objective":"arrow_count"},"color": "white","bold": true},{"translate":"minigames.functions._minigame_snipers.54","bold": true},{"translate":"minigames.functions._minigame_snipers.55","bold": false}]
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=live_block_gone] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]},tag=spectator] if score @s Lives matches 1 run title @s actionbar [{"translate":"minigames.functions._minigame_snipers.56"},{"score":{"name":"@s","objective":"arrow_count"},"color": "white","bold": true},{"translate":"minigames.functions._minigame_snipers.57","bold": true},{"translate":"minigames.functions._minigame_snipers.58","bold": false}]
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=live_block_gone] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]},tag=spectator] if score @s Lives matches 2.. run title @s actionbar [{"translate":"minigames.functions._minigame_snipers.59"},{"score":{"name":"@s","objective":"arrow_count"},"color": "white","bold": true},{"translate":"minigames.functions._minigame_snipers.60","bold": true},{"translate":"minigames.functions._minigame_snipers.61","bold": false}]

execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=live_block_gone] at @s run execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]},tag=!spectator] run execute if score @s Lives matches ..-1 run title @s actionbar [{"translate":"minigames.functions._minigame_snipers.62"},{"score":{"name":"@s","objective":"arrow_count"},"color": "white","bold": true},{"translate":"minigames.functions._minigame_snipers.63","bold": true},{"translate":"minigames.functions._minigame_snipers.64","bold": true},{"translate":"minigames.functions._minigame_snipers.65","bold": false}]
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=live_block_gone] at @s run execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]},tag=!spectator] run execute if score @s Lives matches 0 run title @s actionbar [{"translate":"minigames.functions._minigame_snipers.66"},{"score":{"name":"@s","objective":"arrow_count"},"color": "white","bold": true},{"translate":"minigames.functions._minigame_snipers.67","bold": true},{"translate":"minigames.functions._minigame_snipers.68","bold": true},{"translate":"minigames.functions._minigame_snipers.69","bold": false}]
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=live_block_gone] at @s run execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]},tag=!spectator] run execute if score @s Lives matches 1 run title @s actionbar [{"translate":"minigames.functions._minigame_snipers.70"},{"score":{"name":"@s","objective":"arrow_count"},"color": "white","bold": true},{"translate":"minigames.functions._minigame_snipers.71","bold": true},{"translate":"minigames.functions._minigame_snipers.72","bold": true},{"translate":"minigames.functions._minigame_snipers.73","bold": false}]
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!recorder,tag=live_block_gone] at @s run execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]},tag=!spectator] run execute if score @s Lives matches 2.. run title @s actionbar [{"translate":"minigames.functions._minigame_snipers.74"},{"score":{"name":"@s","objective":"arrow_count"},"color": "white","bold": true},{"translate":"minigames.functions._minigame_snipers.75","bold": true},{"translate":"minigames.functions._minigame_snipers.76","bold": true},{"translate":"minigames.functions._minigame_snipers.77","bold": false}]

##As player execute if they pressed barrel for arrows when score matches 1.. clear arrows and give 12 arrows + armor equip sound
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if score @s refill_ammo matches 1.. run clear @s arrow
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if score @s refill_ammo matches 1.. run item replace entity @s inventory.9 with arrow 12
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if score @s refill_ammo matches 1.. run scoreboard players reset @s refill_ammo

##Portals for castles
#4Team red
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=8,z=-821,distance=..5] if block ~ ~ ~ structure_void run particle reverse_portal ~ ~1 ~ 0 0 0 0.5 30 normal
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=8,z=-821,distance=..5] if block ~ ~ ~ structure_void run particle reverse_portal ~ ~-11 ~4 0 0 0 0.5 30 normal
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=8,z=-821,distance=..5] if block ~ ~ ~ structure_void run playsound entity.enderman.teleport record @a ~ ~1 ~ 
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=8,z=-821,distance=..5] if block ~ ~ ~ structure_void run playsound entity.enderman.teleport record @a ~ ~-11 ~4 
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=8,z=-821,distance=..5] if block ~ ~ ~ structure_void run tp @s ~ ~-12 ~4 ~180 ~

execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=-4,z=-819,distance=..5] if block ~ ~ ~ structure_void run particle reverse_portal ~ ~1 ~ 0 0 0 0.5 30 normal
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=-4,z=-819,distance=..5] if block ~ ~ ~ structure_void run particle reverse_portal ~ ~13 ~ 0 0 0 0.5 30 normal
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=-4,z=-819,distance=..5] if block ~ ~ ~ structure_void run playsound entity.enderman.teleport record @a ~ ~1 ~ 
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=-4,z=-819,distance=..5] if block ~ ~ ~ structure_void run playsound entity.enderman.teleport record @a ~ ~13 ~
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=-4,z=-819,distance=..5] if block ~ ~ ~ structure_void run tp @s ~ ~12 ~ ~-180 ~

#9Team blue
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=7,z=-784,distance=..5] if block ~ ~ ~ structure_void run particle reverse_portal ~ ~1 ~ 0 0 0 0.5 30 normal
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=7,z=-784,distance=..5] if block ~ ~ ~ structure_void run particle reverse_portal ~ ~-11 ~-4 0 0 0 0.5 30 normal
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=7,z=-784,distance=..5] if block ~ ~ ~ structure_void run playsound entity.enderman.teleport record @a ~ ~1 ~ 
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=7,z=-784,distance=..5] if block ~ ~ ~ structure_void run playsound entity.enderman.teleport record @a ~ ~-11 ~-4 
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=7,z=-784,distance=..5] if block ~ ~ ~ structure_void run tp @s ~ ~-12 ~-4 ~180 ~

execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=-4,z=-786,distance=..5] if block ~ ~ ~ structure_void run particle reverse_portal ~ ~1 ~ 0 0 0 0.5 30 normal
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=-4,z=-786,distance=..5] if block ~ ~ ~ structure_void run particle reverse_portal ~ ~13 ~ 0 0 0 0.5 30 normal
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=-4,z=-786,distance=..5] if block ~ ~ ~ structure_void run playsound entity.enderman.teleport record @a ~ ~1 ~ 
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=-4,z=-786,distance=..5] if block ~ ~ ~ structure_void run playsound entity.enderman.teleport record @a ~ ~13 ~
execute if score snipers_minigame Timer matches 200.. run execute as @a[tag=!spectator] at @s run execute if entity @s[x=-24,y=-4,z=-786,distance=..5] if block ~ ~ ~ structure_void run tp @s ~ ~12 ~ ~-180 ~

##When other team has died reload and give win to the other one
execute if score snipers_minigame Timer matches 200.. run execute unless entity @a[tag=!recorder,tag=debug] run execute if score snipers_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_killer,tag=!spectator] run scoreboard players set Winner= Game 1
execute if score snipers_minigame Timer matches 200.. run execute unless entity @a[tag=!recorder,tag=debug] run execute if score snipers_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_killer,tag=!spectator] run scoreboard players set GameStarted Game 3

execute if score snipers_minigame Timer matches 200.. run execute unless entity @a[tag=!recorder,tag=debug] run execute if score snipers_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,tag=!spectator] run scoreboard players set Winner= Game 2
execute if score snipers_minigame Timer matches 200.. run execute unless entity @a[tag=!recorder,tag=debug] run execute if score snipers_minigame Timer matches 200.. unless score _Reload Game matches 1 run execute unless entity @a[tag=!recorder,tag=minigame_spectator_runner,tag=!spectator] run scoreboard players set GameStarted Game 3

##When player dies remove one Life
execute if score snipers_minigame Timer matches 200.. run execute as @a at @s run execute if score @s Deaths matches 1.. run scoreboard players remove @s Lives 1
execute if score snipers_minigame Timer matches 200.. run execute as @a at @s run execute if score @s Deaths matches 1.. run effect give @s instant_damage 1 0 true
execute if score snipers_minigame Timer matches 200.. run execute as @a at @s run execute if score @s Deaths matches 1.. run effect give @s regeneration 2 200 true
execute if score snipers_minigame Timer matches 200.. run execute as @a at @s run execute if score @s Deaths matches 1.. run scoreboard players reset @s Deaths











##To do add title actionbar near hearts, where there will be arrow icon and amount of arrows count arrows of players, when 0 make !!! symbol blinking that player does not have arrows!






