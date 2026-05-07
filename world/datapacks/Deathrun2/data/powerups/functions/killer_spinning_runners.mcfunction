##
 # killer_spinning_runners.mcfunction
 # 
 #
 # Created by Lifeely.
##
##PLAY SOUND RICKROLL MINECRAFT NOTEBLOCK EDITION WHILE SPINNING! xD

## This function spawns small gary as nearest runner from the killer

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_k_spinning_runners
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags
scoreboard players add on_k_spinning_runners Powerups 1
execute if score on_k_spinning_runners Powerups matches 1400.. run function powerups:_clear_powerup
execute if score on_k_spinning_runners Powerups matches 1400.. run scoreboard players set on_k_spinning_runners Powerups 0

execute if score on_k_spinning_runners Powerups matches 1 run title @s times 5 30 5
execute if score on_k_spinning_runners Powerups matches 1 run title @s title {"translate":"wtem.empty"}
execute if score on_k_spinning_runners Powerups matches 1 run title @s subtitle {"translate":"powerups.functions.killer_spinning_runners.2"}

execute if score on_k_spinning_runners Powerups matches 1..150 run effect give @a[tag=runner,distance=..32] nausea 6 5 true

execute if score on_k_spinning_runners Powerups matches 1..25 run execute as @a[tag=!recorder,tag=runner,distance=..32] at @s run teleport @s ~ ~ ~ ~6.5 ~2.1
execute if score on_k_spinning_runners Powerups matches 26..50 run execute as @a[tag=!recorder,tag=runner,distance=..32] at @s run teleport @s ~ ~ ~ ~-6.5 ~-2.1
execute if score on_k_spinning_runners Powerups matches 51..75 run execute as @a[tag=!recorder,tag=runner,distance=..32] at @s run teleport @s ~ ~ ~ ~6.5 ~-2.1
execute if score on_k_spinning_runners Powerups matches 76..100 run execute as @a[tag=!recorder,tag=runner,distance=..32] at @s run teleport @s ~ ~ ~ ~-6.5 ~2.1
execute if score on_k_spinning_runners Powerups matches 101..125 run execute as @a[tag=!recorder,tag=runner,distance=..32] at @s run teleport @s ~ ~ ~ ~-6.5 ~-2.1
execute if score on_k_spinning_runners Powerups matches 126..150 run execute as @a[tag=!recorder,tag=runner,distance=..32] at @s run teleport @s ~ ~ ~ ~6.5 ~-2.1

