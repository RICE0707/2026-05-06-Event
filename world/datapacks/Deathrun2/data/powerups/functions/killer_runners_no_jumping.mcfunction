##
 # killer_runners_no_jumping.mcfunction
 # 
 #
 # Created by Lifeely.
##

## This function disables jumping for runners

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_k_no_jumping
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags
scoreboard players add on_k_no_jumping Powerups 1
execute if score on_k_no_jumping Powerups matches 900.. run function powerups:_clear_powerup
execute if score on_k_no_jumping Powerups matches 900.. run scoreboard players set on_k_no_jumping Powerups 0

## Disable jumping
execute if score on_k_no_jumping Powerups matches 1 run title @a[tag=!recorder,tag=!spectator,tag=runner] times 5 196 5
execute if score on_k_no_jumping Powerups matches 1 run title @a[tag=!recorder,tag=!spectator,tag=runner] title {"translate":"wtem.empty"}
execute if score on_k_no_jumping Powerups matches 1 run title @a[tag=!recorder,tag=!spectator,tag=runner] subtitle {"translate":"powerups.functions.killer_runners_no_jumping.2"}
execute if score on_k_no_jumping Powerups matches 1..200 run execute as @a[tag=runner] at @s run execute unless block ~ ~-4 ~ waxed_oxidized_cut_copper run execute if entity @s[y=-39,distance=..1.99,tag=runner] run teleport @s ~ -41 ~
execute if score on_k_no_jumping Powerups matches 1..200 run execute as @a[tag=runner] at @s run execute if block ~ ~-4 ~ waxed_oxidized_cut_copper run execute if entity @s[y=-40.0,distance=..1.99,tag=runner] run teleport @s ~ -42 ~
execute if score on_k_no_jumping Powerups matches 1..200 run execute as @a[tag=runner] at @s run execute if block ~ ~-4 ~ blue_glazed_terracotta run execute if entity @s[y=-40.0,distance=..1.99,tag=runner] run teleport @s ~ -42 ~




