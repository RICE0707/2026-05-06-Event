##
 # checkpoints_activator.mcfunction
 # 
 #
 # Created by Lifeely.
##

##In this function when player gets on its checkpoint give him an animation in from of him and tell them they have checkpoint activated


#Checkpoint 1
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run item replace entity @s weapon.offhand with totem_of_undying
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run effect give @s instant_damage 5 200 true
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run title @s title {"translate":"wtem.empty"}
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run title @s subtitle {"translate":"core.functions.files.checkpoints_activator.2"}
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run effect give @s instant_health 5 200 true
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run spawnpoint @s 145 -25 67 45
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run scoreboard players set @s anti_speedrun 100
execute if score CheckpointGiveLives Settings matches 1 run execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run title @s title [{"translate":"core.functions.files.checkpoints_activator.3","bold": true},{"translate":"core.functions.files.checkpoints_activator.4","bold": false}]
execute if score CheckpointGiveLives Settings matches 1 run execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run scoreboard players add @s Lives 1
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run effect give @s regeneration 3 100 true
execute as @a[tag=runner,tag=!recorder,tag=!checkpoint1_player] at @s unless block ~ ~-3 ~ budding_amethyst unless block ~ ~-3 ~ bamboo_mosaic run execute if entity @s[nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run clear @s totem_of_undying
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ budding_amethyst unless entity @s[tag=checkpoint1_player] run tag @s add checkpoint1_player

#Checkpoint 2
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run item replace entity @s weapon.offhand with totem_of_undying
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run effect give @s instant_damage 5 200 true
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run title @s title {"translate":"wtem.empty"}
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run title @s subtitle {"translate":"core.functions.files.checkpoints_activator.6"}
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run effect give @s instant_health 5 200 true
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run scoreboard players set @s anti_speedrun 100
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run spawnpoint @s 158 -15 109 -175
execute if score CheckpointGiveLives Settings matches 1 run execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run title @s title [{"translate":"core.functions.files.checkpoints_activator.7","bold": true},{"translate":"core.functions.files.checkpoints_activator.8","bold": false}]
execute if score CheckpointGiveLives Settings matches 1 run execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run scoreboard players add @s Lives 1
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run effect give @s regeneration 3 100 true
execute as @a[tag=runner,tag=!recorder,tag=!checkpoint2_player] at @s unless block ~ ~-3 ~ bamboo_mosaic unless block ~ ~-3 ~ budding_amethyst run execute if entity @s[nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run clear @s totem_of_undying
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~-3 ~ bamboo_mosaic unless entity @s[tag=checkpoint2_player] run tag @s add checkpoint2_player
