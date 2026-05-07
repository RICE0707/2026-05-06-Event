##
 # killer_vex_trio.mcfunction
 # 
 #
 # Created by Lifeely.
##

## This function spawns small gary as nearest runner from the killer

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_k_vex_trio
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags
scoreboard players add on_k_vex_trio Powerups 1
execute if score on_k_vex_trio Powerups matches 1800.. run function powerups:_clear_powerup
execute if score on_k_vex_trio Powerups matches 1800.. run scoreboard players set on_k_vex_trio Powerups 0

execute if score on_k_vex_trio Powerups matches 1 run title @s times 5 30 5
execute if score on_k_vex_trio Powerups matches 1 run title @s title {"translate":"wtem.empty"}
execute if score on_k_vex_trio Powerups matches 1 run title @s subtitle {"translate":"powerups.functions.killer_vex_trio.2"}

execute unless entity @e[tag=!recorder,type=vex,tag=vex_trio_1] run execute as @a[tag=runner,limit=1,sort=nearest] at @s run summon vex ~ ~1.5 ~ {Team:KILLER,PersistenceRequired:1b,AbsorptionAmount:500f,Health:500f,Tags:["vex_trio_1","vex_trio"],Attributes:[{Name:generic.max_health,Base:500},{Name:generic.knockback_resistance,Base:5},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:4}]}
execute unless entity @e[tag=!recorder,type=vex,tag=vex_trio_2] run execute as @a[tag=runner,limit=1,sort=nearest] at @s run summon vex ~ ~1.5 ~ {Team:KILLER,PersistenceRequired:1b,AbsorptionAmount:500f,Health:500f,Tags:["vex_trio_2","vex_trio"],Attributes:[{Name:generic.max_health,Base:500},{Name:generic.knockback_resistance,Base:5},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:4}]}
execute unless entity @e[tag=!recorder,type=vex,tag=vex_trio_3] run execute as @a[tag=runner,limit=1,sort=nearest] at @s run summon vex ~ ~1.5 ~ {Team:KILLER,PersistenceRequired:1b,AbsorptionAmount:500f,Health:500f,Tags:["vex_trio_3","vex_trio"],Attributes:[{Name:generic.max_health,Base:500},{Name:generic.knockback_resistance,Base:5},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:4}]}









