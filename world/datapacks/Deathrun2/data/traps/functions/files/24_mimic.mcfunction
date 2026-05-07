##
 # 24_.mcfunction
 # 
 #
 # Created by .
##

##Start Loop
scoreboard players set loop_24 loop_trap 1
scoreboard players add mimic_timer Timer 1

##Break the loop
execute if score mimic_timer Timer matches 13.. run scoreboard players set loop_24 loop_trap 0
execute if score mimic_timer Timer matches 13.. run scoreboard players set mimic_timer Timer 0

##Teleport mimic towards the player in an motion type way.
execute if score mimic_timer Timer matches 1 run execute as @e[tag=!recorder,tag=mimic] at @s run playsound entity.ghast.hurt record @a ~ ~ ~ 1 2
execute if score mimic_timer Timer matches 1 run execute as @e[tag=!recorder,tag=mimic] at @s run data merge entity @s {item:{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:301}}}
execute if score mimic_timer Timer matches 1..12 run execute as @e[tag=!recorder,tag=mimic] at @s run teleport @s ^ ^0.22 ^0.6 facing entity @p[tag=!recorder,tag=runner]


##When in player distance kill player and play some fance sound/particles
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,tag=mimic,distance=..0.75] run stopsound @a record entity.ghast.hurt
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,tag=mimic,distance=..0.75] run playsound entity.player.burp record @a ~ ~ ~ 1.5 1.5
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,tag=mimic,distance=..0.75] run particle explosion ~ ~ ~ 0 0 0 0 1 normal
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,tag=mimic,distance=..0.75] run function traps:files/_player_die
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,tag=mimic,distance=..0.75] run kill @e[tag=!recorder,tag=mimic]


##When didn't catch player in time.. kill mimic and some sounds/particles
execute if score mimic_timer Timer matches 12.. run execute as @e[tag=!recorder,tag=mimic] at @s run stopsound @a record entity.ghast.hurt
execute if score mimic_timer Timer matches 12.. run execute as @e[tag=!recorder,tag=mimic] at @s run playsound entity.ghast.shoot record @a ~ ~ ~ 1.5 1.8
execute if score mimic_timer Timer matches 12.. run execute as @e[tag=!recorder,tag=mimic] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 normal
execute if score mimic_timer Timer matches 12.. run kill @e[tag=!recorder,tag=mimic]


execute as @e[tag=!recorder,tag=mimic] at @s run particle block chest ~ ~ ~ 0.1 0.1 0.1 0 2



scoreboard players set trap_24 trap_activated 1