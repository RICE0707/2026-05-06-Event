##
 # killer_runners_slowdown.mcfunction
 # 
 #
 # Created by Lifeely.
##


## This function slow down runners

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_k_slowdown
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags
scoreboard players add on_k_slowdown Powerups 1
execute if score on_k_slowdown Powerups matches 900.. run function powerups:_clear_powerup
execute if score on_k_slowdown Powerups matches 900.. run scoreboard players set on_k_slowdown Powerups 0


execute if score on_k_slowdown Powerups matches 1 run execute as @a[tag=runner,distance=..25] at @s run title @s times 5 30 5
execute if score on_k_slowdown Powerups matches 1 run execute as @a[tag=runner,distance=..25] at @s run title @s title {"translate":"powerups.functions.killer_runners_slowdown.1"}
execute if score on_k_slowdown Powerups matches 1..200 run effect give @a[tag=!recorder,distance=..25,tag=!spectator,tag=!killer] slowness 1 2 true
execute if score on_k_slowdown Powerups matches 1..200 run execute as @a[tag=runner,distance=..25] at @s run particle dust 0 0 0 1 ~ ~0.05 ~ 0.15 0.05 0.15 0 5 normal
