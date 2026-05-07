##
 # runner_speed_boost.mcfunction
 # 
 #
 # Created by Lifeely.
##
## This function gives its user speed boost for 1 seconds and after that an cooldown of 5 seconds of slowness

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_r_speed_boost
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags
scoreboard players add on_r_speed_boost Powerups 1
execute if score on_r_speed_boost Powerups matches 600.. run function powerups:_clear_powerup
execute if score on_r_speed_boost Powerups matches 600.. run scoreboard players set on_r_speed_boost Powerups 0

execute if score on_r_speed_boost Powerups matches 21 run effect give @s slowness 5 2 true
execute if score on_r_speed_boost Powerups matches 1 run effect give @s speed 1 3 true



