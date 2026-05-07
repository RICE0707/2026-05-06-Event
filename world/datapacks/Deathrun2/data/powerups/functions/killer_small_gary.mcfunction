##
 # killer_small_gary.mcfunction
 # 
 #
 # Created by Lifeely.
##


## This function spawns small gary as nearest runner from the killer

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_k_small_gary
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags
scoreboard players add on_k_small_gary Powerups 1
execute if score on_k_small_gary Powerups matches 1200.. run function powerups:_clear_powerup
execute if score on_k_small_gary Powerups matches 1200.. run scoreboard players set on_k_small_gary Powerups 0

execute if score on_k_small_gary Powerups matches 1 unless entity @e[tag=!recorder,type=zombie,tag=small_gary] if score on_k_small_gary Powerups matches 1 run title @s times 5 30 5
execute if score on_k_small_gary Powerups matches 1 unless entity @e[tag=!recorder,type=zombie,tag=small_gary] if score on_k_small_gary Powerups matches 1 run title @s title {"translate":"wtem.empty"}
execute if score on_k_small_gary Powerups matches 1 unless entity @e[tag=!recorder,type=zombie,tag=small_gary] if score on_k_small_gary Powerups matches 1 run title @s subtitle {"translate":"powerups.functions.killer_small_gary.2"}
execute if score on_k_small_gary Powerups matches 1 unless entity @e[tag=!recorder,type=zombie,tag=small_gary] if score on_k_small_gary Powerups matches 1 run playsound entity.zombie.ambient record @s ~ ~ ~ 0.5 2
execute if score on_k_small_gary Powerups matches 1 unless entity @e[tag=!recorder,type=zombie,tag=small_gary] run execute as @p[tag=!recorder,tag=runner] at @s run summon zombie ~ ~ ~ {PersistenceRequired:1b,AbsorptionAmount:500f,Health:500f,IsBaby:1b,Motion:[0.0,0.3,0.0],Tags:["small_gary"],ArmorItems:[{},{},{},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:25}}],Attributes:[{Name:generic.max_health,Base:500},{Name:generic.knockback_resistance,Base:5},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:7}]}











