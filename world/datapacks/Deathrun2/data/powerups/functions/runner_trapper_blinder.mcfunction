##
 # runner_trapper_blinder.mcfunction
 # 
 #
 # Created by Lifeely.
##


## This function makes all trapers blind for some time

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_r_trapper_blinder
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags
scoreboard players add on_r_trapper_blinder Powerups 1
execute if score on_r_trapper_blinder Powerups matches 600.. run function powerups:_clear_powerup
execute if score on_r_trapper_blinder Powerups matches 600.. run scoreboard players set on_r_trapper_blinder Powerups 0

execute if score on_r_trapper_blinder Powerups matches 1 run effect give @a[tag=!recorder,distance=..30,tag=!spectator,tag=killer] blindness 5 50 true
execute if score on_r_trapper_blinder Powerups matches 1..100 run execute as @a[tag=killer,nbt={ActiveEffects:[{Id:15}]}] at @s run particle dust 0 0 0 3 ~ ~1.5 ~ 0.2 0.2 0.2 0 3 normal








