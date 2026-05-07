##
 # runner_portable_switch.mcfunction
 # 
 #
 # Created by Lifeely.
##

## This function makes activation player change positions with random player, when no player to change, send an message, no players to tp to.

## Add activator tag of this specific function
execute unless entity @s[tag=powerup_activated] run tag @s add on_r_portable_switch
execute unless entity @s[tag=powerup_activated] run scoreboard players reset @s powerup_carrot_stick
execute unless entity @s[tag=powerup_activated] run tag @s add powerup_activated

## Start the loop timer of this function when timer is done then remove tags
scoreboard players add on_r_portable_switch Powerups 1
execute if score on_r_portable_switch Powerups matches 1000.. run function powerups:_clear_powerup
execute if score on_r_portable_switch Powerups matches 1000.. run scoreboard players set on_r_portable_switch Powerups 0

execute if score on_r_portable_switch Powerups matches 1 run tag @s add primal_switch
execute if score on_r_portable_switch Powerups matches 1 run tag @r[tag=runner,tag=!spectator,tag=!recorder,tag=!primal_switch,tag=!spawning,distance=..27,tag=!killer] add switch_target
execute if score on_r_portable_switch Powerups matches 1 run execute unless entity @a[tag=switch_target,tag=!spectator] run tellraw @s {"translate":"powerups.functions.runner_portable_switch.1","color": "yellow","bold": true}
execute if score on_r_portable_switch Powerups matches 1 run execute unless entity @a[tag=switch_target,tag=!spectator] run scoreboard players set on_r_portable_switch Powerups 940
execute if score on_r_portable_switch Powerups matches 1 run execute if entity @a[tag=switch_target,tag=!spectator] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["primal_point","switch_tp_armorstand"]}
execute if score on_r_portable_switch Powerups matches 1 run execute if entity @a[tag=switch_target,tag=!spectator] run execute as @a[tag=switch_target,tag=!spectator] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["switch_point","switch_tp_armorstand"]}
execute if score on_r_portable_switch Powerups matches 1 run execute if entity @a[tag=switch_target,tag=!spectator] run playsound entity.enderman.teleport record @a ~ ~ ~
execute if score on_r_portable_switch Powerups matches 1 run execute if entity @a[tag=switch_target,tag=!spectator] run summon lightning_bolt ~ ~-30 ~
execute if score on_r_portable_switch Powerups matches 1 run execute if entity @a[tag=switch_target,tag=!spectator] run execute as @a[tag=switch_target,tag=!spectator] run summon lightning_bolt ~ ~-30 ~
execute if score on_r_portable_switch Powerups matches 1 run execute if entity @a[tag=switch_target,tag=!spectator] run execute as @a[tag=switch_target,tag=!spectator] at @s run playsound entity.enderman.teleport record @a ~ ~ ~
execute if score on_r_portable_switch Powerups matches 1 run execute if entity @a[tag=switch_target,tag=!spectator] run function powerups:_switch_tag_transfer
execute if score on_r_portable_switch Powerups matches 2 run execute if entity @a[tag=switch_target,tag=!spectator] run title @s times 5 30 5
execute if score on_r_portable_switch Powerups matches 2 run execute if entity @a[tag=switch_target,tag=!spectator] run title @s title [{"translate":"powerups.functions.runner_portable_switch.2","color": "white"}]
execute if score on_r_portable_switch Powerups matches 2 run execute if entity @a[tag=switch_target,tag=!spectator] run title @s subtitle [{"translate":"powerups.functions.runner_portable_switch.3","color": "white"},{"selector":"@a[tag=switch_target,tag=!spectator]","color": "#69eb3a"},{"translate":"powerups.functions.runner_portable_switch.4","color": "white"}]
execute if score on_r_portable_switch Powerups matches 2 run execute if entity @a[tag=switch_target,tag=!spectator] run title @a[tag=switch_target,tag=!spectator] times 5 30 5
execute if score on_r_portable_switch Powerups matches 2 run execute if entity @a[tag=switch_target,tag=!spectator] run title @a[tag=switch_target,tag=!spectator] title [{"translate":"powerups.functions.runner_portable_switch.5","color": "white"}]
execute if score on_r_portable_switch Powerups matches 2 run execute if entity @a[tag=switch_target,tag=!spectator] run title @a[tag=switch_target,tag=!spectator] subtitle [{"translate":"powerups.functions.runner_portable_switch.6","color": "white"},{"selector":"@a[tag=primal_switch]","color": "#69eb3a"},{"translate":"powerups.functions.runner_portable_switch.7","color": "white"}]
execute if score on_r_portable_switch Powerups matches 2 run execute if entity @a[tag=switch_target,tag=!spectator] run execute as @e[tag=primal_point] at @s run execute rotated as @a[tag=primal_switch,tag=!spectator] run teleport @s ~ ~ ~ ~ ~
execute if score on_r_portable_switch Powerups matches 2 run execute if entity @a[tag=switch_target,tag=!spectator] run execute as @e[tag=switch_point] at @s run execute rotated as @a[tag=switch_target,tag=!spectator] run teleport @s ~ ~ ~ ~ ~
execute if score on_r_portable_switch Powerups matches 2 run execute if entity @a[tag=switch_target,tag=!spectator] run tp @a[tag=primal_switch,tag=!spectator] @e[type=armor_stand,limit=1,tag=switch_point]
execute if score on_r_portable_switch Powerups matches 2 run execute if entity @a[tag=switch_target,tag=!spectator] run tp @a[tag=switch_target,tag=!spectator] @e[type=armor_stand,limit=1,tag=primal_point]
execute if score on_r_portable_switch Powerups matches 2 run tag @a remove primal_switch
execute if score on_r_portable_switch Powerups matches 2 run tag @a remove switch_target
execute if score on_r_portable_switch Powerups matches 2 run kill @e[tag=switch_tp_armorstand]
