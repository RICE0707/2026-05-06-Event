##
 # runner_invisibility.mcfunction
 # 
 #
 # Created by Lifeely.
##
## This function gives its user invisibility for 3 seconds

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_r_invisibility
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags
scoreboard players add on_r_invisibility Powerups 1
execute if score on_r_invisibility Powerups matches 1..60 run tag @s[tag=!invisibility] add invisibility
execute if score on_r_invisibility Powerups matches 600.. run function powerups:_clear_powerup
execute if score on_r_invisibility Powerups matches 600.. run scoreboard players set on_r_invisibility Powerups 0
execute if score on_r_invisibility Powerups matches 1..60 run item replace entity @s armor.head with air
execute if score on_r_invisibility Powerups matches 61.. run tag @s[tag=invisibility] remove invisibility
execute if score on_r_invisibility Powerups matches 1 run effect give @s invisibility 3 2 true










