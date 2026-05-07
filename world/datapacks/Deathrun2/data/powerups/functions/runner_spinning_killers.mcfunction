##
 # runner_spinning_killers.mcfunction
 # 
 #
 # Created by Lifeely.
##
## This function makes killers confused

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_r_spinning_killers
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags

scoreboard players add on_r_spinning_killers Powerups 1
execute if score on_r_spinning_killers Powerups matches 1400.. run function powerups:_clear_powerup
execute if score on_r_spinning_killers Powerups matches 1400.. run scoreboard players set on_r_spinning_killers Powerups 0

execute if score on_r_spinning_killers Powerups matches 1..150 run effect give @a[tag=killer,distance=..32] nausea 6 5 true

execute if score on_r_spinning_killers Powerups matches 1..25 run execute as @a[tag=!recorder,tag=killer,distance=..32] at @s run teleport @s ~ ~ ~ ~6.5 ~2.1
execute if score on_r_spinning_killers Powerups matches 26..50 run execute as @a[tag=!recorder,tag=killer,distance=..32] at @s run teleport @s ~ ~ ~ ~-6.5 ~-2.1
execute if score on_r_spinning_killers Powerups matches 51..75 run execute as @a[tag=!recorder,tag=killer,distance=..32] at @s run teleport @s ~ ~ ~ ~6.5 ~-2.1
execute if score on_r_spinning_killers Powerups matches 76..100 run execute as @a[tag=!recorder,tag=killer,distance=..32] at @s run teleport @s ~ ~ ~ ~-6.5 ~2.1
execute if score on_r_spinning_killers Powerups matches 101..125 run execute as @a[tag=!recorder,tag=killer,distance=..32] at @s run teleport @s ~ ~ ~ ~-6.5 ~-2.1
execute if score on_r_spinning_killers Powerups matches 126..150 run execute as @a[tag=!recorder,tag=killer,distance=..32] at @s run teleport @s ~ ~ ~ ~6.5 ~-2.1


