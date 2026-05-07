##
 # runner_power_jump.mcfunction
 # 
 #
 # Created by Lifeely.
##

## This function makes that player makes an power jump that pushes other players around him to side

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_r_power_jump
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags
scoreboard players add on_r_power_jump Powerups 1
execute if score on_r_power_jump Powerups matches 600.. run function powerups:_clear_powerup
execute if score on_r_power_jump Powerups matches 600.. run scoreboard players set on_r_power_jump Powerups 0

execute if score on_r_power_jump Powerups matches 1 run effect give @a[tag=!recorder,tag=!spectator,distance=..7] resistance 1 200 true
execute if score on_r_power_jump Powerups matches 1 run effect give @s[tag=!recorder,tag=!spectator,distance=..7] resistance 3 200 true
execute if score on_r_power_jump Powerups matches 2 run summon fireball ~ ~0.1 ~ {NoGravity:1b,Silent:1b,HasVisualFire:0b,ExplosionPower:2b,power:[0.0,-1.0,0.0],Tags:["power_jumper_fireball"],Item:{id:"minecraft:air",Count:1b}}
execute if score on_r_power_jump Powerups matches 2..13 run particle flame ^-0.1 ^ ^ 0 0 0 0 0 normal
execute if score on_r_power_jump Powerups matches 2..13 run particle flame ^0.1 ^ ^ 0 0 0 0 0 normal







