##
 # _core_powers.mcfunction
 # 
 #
 # Created by Lifeely.
##

##This function when got activation score on scoreboard, loop the powerup

## How does it need to work.
# 1. When player uses powerup activator gives him tag that he has used the powerup
# 1a. When activated keep the function on looping until its disabled
# 1b. When activated/deactivated give/remove players their powerups when they are currently used/on_cooldown
# 2. When someone has this tag, remove the ability for everyone else to use this powerup
# 3. As player that has this tag for certain time start the powerup function
# 4. After the powerup has been activated start the cooldown timer that shows players when will this powerup be avaible again
# 5. After cooldown is finished !! IMPORTANT COOLDOWN MUST BE LONGER THAN THE POWERUP SELF !! Clear from specific player that activator powerup tag
# 6. Reset the scoreboard of cooldown and powerup activation time

## Carrot on a stick custommodeldata numbers = powers
## 1 = powerup_k_no_jump
## 2 = 
## 3 = 
## 4 = 
## 5 = 
## 6 = 
## 7 = 
## 8 = 
## 9 = 
## 10 = 
## 11 = 
## 12 = 

## # Kill every carrot on a stick on the ground
execute as @e[tag=!recorder,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run kill @s

scoreboard players reset @a[tag=powerup_activated] powerup_carrot_stick

## 1 As killers that have specific carrot on a stick when used, run function of the powerup
execute unless entity @a[tag=!recorder,tag=on_k_no_jumping] as @a[tag=!recorder] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run function powerups:killer_runners_no_jumping
execute unless entity @a[tag=!recorder,tag=on_k_slowdown] as @a[tag=!recorder] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run function powerups:killer_runners_slowdown
execute unless entity @a[tag=!recorder,tag=on_k_small_gary] as @a[tag=!recorder] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run function powerups:killer_small_gary
execute unless entity @a[tag=!recorder,tag=on_k_spinning_runners] as @a[tag=!recorder] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run function powerups:killer_spinning_runners
execute unless entity @a[tag=!recorder,tag=on_k_vex_trio] as @a[tag=!recorder] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}}] run function powerups:killer_vex_trio

## 1 As runners that have specific carrot on a stick when used, run function of the powerup
execute unless entity @a[tag=!recorder,tag=on_r_invisibility] as @a[tag=!recorder,tag=!spawning] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}}] run function powerups:runner_invisibility
execute unless entity @a[tag=!recorder,tag=on_r_speed_boost] as @a[tag=!recorder,tag=!spawning] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}}] run function powerups:runner_speed_boost
execute unless entity @a[tag=!recorder,tag=on_r_trapper_blinder] as @a[tag=!recorder,tag=!spawning] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}}] run function powerups:runner_trapper_blinder
execute unless entity @a[tag=!recorder,tag=on_r_spinning_killers] as @a[tag=!recorder,tag=!spawning] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}}] run function powerups:runner_spinning_killers
execute unless entity @a[tag=!recorder,tag=on_r_power_jump] as @a[tag=!recorder,tag=!spawning] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}}] run function powerups:runner_power_jump
execute unless entity @a[tag=!recorder,tag=on_r_portable_switch] as @a[tag=!recorder,tag=!spawning] at @s unless score @s player_logout matches 1.. unless entity @s[tag=powerup_activated] run execute if score @s powerup_carrot_stick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}}] run function powerups:runner_portable_switch

##1_01 When the player that activated this power disconnected, then set the powerup score to 0

execute if score on_k_no_jumping Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_k_no_jumping] run scoreboard players set on_k_no_jumping Powerups 0
execute if score on_k_slowdown Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_k_slowdown] run scoreboard players set on_k_slowdown Powerups 0
execute if score on_k_small_gary Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_k_small_gary] run scoreboard players set on_k_small_gary Powerups 0
execute if score on_k_spinning_runners Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_k_spinning_runners] run scoreboard players set on_k_spinning_runners Powerups 0
execute if score on_k_vex_trio Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_k_vex_trio] run scoreboard players set on_k_vex_trio Powerups 0

execute if score on_r_invisibility Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_r_invisibility] run scoreboard players set on_r_invisibility Powerups 0
execute if score on_r_speed_boost Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_r_speed_boost] run scoreboard players set on_r_speed_boost Powerups 0
execute if score on_r_trapper_blinder Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_r_trapper_blinder] run scoreboard players set on_r_trapper_blinder Powerups 0
execute if score on_r_spinning_killers Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_r_spinning_killers] run scoreboard players set on_r_spinning_killers Powerups 0
execute if score on_r_power_jump Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_r_power_jump] run scoreboard players set on_r_power_jump Powerups 0
execute if score on_r_portable_switch Powerups matches 1.. unless entity @a[tag=!recorder,tag=on_r_portable_switch] run scoreboard players set on_r_portable_switch Powerups 0

## 1a When there is killer that has activated the powerup, then keep the function on looping until its disabled
execute as @a[tag=!recorder,tag=on_k_no_jumping] at @s if entity @s[tag=on_k_no_jumping] run function powerups:killer_runners_no_jumping
execute as @a[tag=!recorder,tag=on_k_slowdown] at @s if entity @s[tag=on_k_slowdown] run function powerups:killer_runners_slowdown
execute as @a[tag=!recorder,tag=on_k_small_gary] at @s if entity @s[tag=on_k_small_gary] run function powerups:killer_small_gary
execute as @a[tag=!recorder,tag=on_k_spinning_runners] at @s if entity @s[tag=on_k_spinning_runners] run function powerups:killer_spinning_runners
execute as @a[tag=!recorder,tag=on_k_vex_trio] at @s if entity @s[tag=on_k_vex_trio] run function powerups:killer_vex_trio

## 1a When there is runner that has activated the powerup, then keep the function on looping until its disabled
execute as @a[tag=!recorder,tag=on_r_invisibility] at @s if entity @s[tag=on_r_invisibility] run function powerups:runner_invisibility
execute as @a[tag=!recorder,tag=on_r_speed_boost] at @s if entity @s[tag=on_r_speed_boost] run function powerups:runner_speed_boost
execute as @a[tag=!recorder,tag=on_r_trapper_blinder] at @s if entity @s[tag=on_r_trapper_blinder] run function powerups:runner_trapper_blinder
execute as @a[tag=!recorder,tag=on_r_spinning_killers] at @s if entity @s[tag=on_r_spinning_killers] run function powerups:runner_spinning_killers
execute as @a[tag=!recorder,tag=on_r_power_jump] at @s if entity @s[tag=on_r_power_jump] run function powerups:runner_power_jump
execute as @a[tag=!recorder,tag=on_r_portable_switch] at @s if entity @s[tag=on_r_portable_switch] run function powerups:runner_portable_switch


## 1b When activated/disabled give/remove player their powerups + when more than one remove and replace them (Anti bug system)
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_k_no_jumping Powerups matches 1.. if entity @s[tag=killer,tag=!powerup_activated] run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.1","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_k_no_jumping Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]}] run clear @s carrot_on_a_stick{CustomModelData:1}
execute if score on_k_no_jumping Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:1}
execute if score on_k_no_jumping Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=killer,tag=!powerup_activated] hotbar.4 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.2","italic":false,"color": "gold","bold": false}'},CustomModelData:304}

execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_k_slowdown Powerups matches 1.. if entity @s[tag=killer,tag=!powerup_activated] run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.3","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:2} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_k_slowdown Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] run clear @s carrot_on_a_stick{CustomModelData:2}
execute if score on_k_slowdown Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:2}
execute if score on_k_slowdown Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=killer,tag=!powerup_activated] hotbar.5 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.4","italic":false,"color": "gold","bold": false}'},CustomModelData:304}

execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_k_small_gary Powerups matches 1.. if entity @s[tag=killer,tag=!powerup_activated] run item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.5","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:3} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_k_small_gary Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}]}] run clear @s carrot_on_a_stick{CustomModelData:3}
execute if score on_k_small_gary Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:3}
execute if score on_k_small_gary Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=killer,tag=!powerup_activated] hotbar.6 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.6","italic":false,"color": "gold","bold": false}'},CustomModelData:304}

execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_k_spinning_runners Powerups matches 1.. if entity @s[tag=killer,tag=!powerup_activated] run item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.7","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:4} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_k_spinning_runners Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}]}] run clear @s carrot_on_a_stick{CustomModelData:4}
execute if score on_k_spinning_runners Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:4}
execute if score on_k_spinning_runners Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=killer,tag=!powerup_activated] hotbar.7 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.8","italic":false,"color": "gold","bold": false}'},CustomModelData:304}

execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_k_vex_trio Powerups matches 1.. if entity @s[tag=killer,tag=!powerup_activated] run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.9","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:5} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_k_vex_trio Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}]}] run clear @s carrot_on_a_stick{CustomModelData:5}
execute if score on_k_vex_trio Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:5}
execute if score on_k_vex_trio Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=killer,tag=!powerup_activated] hotbar.8 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.10","italic":false,"color": "gold","bold": false}'},CustomModelData:304} 1

execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_invisibility Powerups matches 1.. if entity @s[tag=runner,tag=!powerup_activated] run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.11","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:6} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_invisibility Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}]}] run clear @s carrot_on_a_stick{CustomModelData:6}
execute if score on_r_invisibility Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:6}
execute if score on_r_invisibility Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=runner,tag=!powerup_activated] hotbar.8 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.12","italic":false,"color": "gold","bold": false}'},CustomModelData:304} 1

execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_speed_boost Powerups matches 1.. if entity @s[tag=runner,tag=!powerup_activated] run item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.13","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:7} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_speed_boost Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}]}] run clear @s carrot_on_a_stick{CustomModelData:7}
execute if score on_r_speed_boost Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:7}
execute if score on_r_speed_boost Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=runner,tag=!powerup_activated] hotbar.7 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.14","italic":false,"color": "gold","bold": false}'},CustomModelData:304} 1

execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_trapper_blinder Powerups matches 1.. if entity @s[tag=runner,tag=!powerup_activated] run item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.15","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:8} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_trapper_blinder Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}]}] run clear @s carrot_on_a_stick{CustomModelData:8}
execute if score on_r_trapper_blinder Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:8}
execute if score on_r_trapper_blinder Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=runner,tag=!powerup_activated] hotbar.6 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.16","italic":false,"color": "gold","bold": false}'},CustomModelData:304} 1

execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_spinning_killers Powerups matches 1.. if entity @s[tag=runner,tag=!powerup_activated] run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.17","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:9} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_spinning_killers Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}]}] run clear @s carrot_on_a_stick{CustomModelData:9}
execute if score on_r_spinning_killers Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:9}
execute if score on_r_spinning_killers Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=runner,tag=!powerup_activated] hotbar.5 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.18","italic":false,"color": "gold","bold": false}'},CustomModelData:304} 1

execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_power_jump Powerups matches 1.. if entity @s[tag=runner,tag=!powerup_activated] run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.19","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:10} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_power_jump Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}]}] run clear @s carrot_on_a_stick{CustomModelData:10}
execute if score on_r_power_jump Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:10}
execute if score on_r_power_jump Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=runner,tag=!powerup_activated] hotbar.4 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.20","italic":false,"color": "gold","bold": false}'},CustomModelData:304,} 1

execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_portable_switch Powerups matches 1.. if entity @s[tag=runner,tag=!powerup_activated] run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"translate":"powerups.functions._core_powers.21","color":"white","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:11} 1
execute as @a[tag=!recorder,tag=!spectator] at @s unless score on_r_portable_switch Powerups matches 1.. run execute unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}]}] run clear @s carrot_on_a_stick{CustomModelData:11}
execute if score on_r_portable_switch Powerups matches 1.. run clear @a carrot_on_a_stick{CustomModelData:11}
execute if score on_r_portable_switch Powerups matches 1.. run item replace entity @a[tag=!recorder,tag=runner,tag=!powerup_activated] hotbar.3 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.22","italic":false,"color": "gold","bold": false}'},CustomModelData:304} 1

##When entity has powerup_activated tag, clear its powerups and replace item in the middle to charging item
execute as @a[tag=!recorder,tag=!spectator,tag=powerup_activated,tag=!once_cleared] at @s run clear @s pufferfish{CustomModelData:304}
execute as @a[tag=!recorder,tag=!spectator,tag=powerup_activated,tag=!once_cleared] at @s run tag @s add once_cleared
execute as @a[tag=!recorder,tag=!spectator,tag=powerup_activated] at @s run clear @s carrot_on_a_stick
execute as @a[tag=!recorder,tag=!spectator,tag=powerup_activated] at @s run item replace entity @s hotbar.4 with pufferfish{display:{Name:'{"translate":"powerups.functions._core_powers.23","italic":false,"color": "gold","bold": false}'},CustomModelData:304}


## Scoreboard Powerups Cooldown Timers Variables

## cd = cooldown
## on = activated
## k / r = killer / runner


## Killer
## cd_k_no_jumping
## cd_k_slowdown
## cd_k_small_gary
## cd_k_spinning_runners
## cd_k_vex_trio
# ------------------
## on_k_no_jumping
## on_k_slowdown
## on_k_small_gary
## on_k_spinning_runners
## on_k_vex_trio

## Runner
## cd_r_invisibility
## cd_r_port_backup
## cd_r_port_blackhole
## cd_r_power_jump
## cd_r_speed_boost
## cd_r_spinning_killers
## cd_r_trapper_blinder
# -----------------------
## on_r_invisibility
## on_r_port_backup
## on_r_port_blackhole
## on_r_power_jump
## on_r_speed_boost
## on_r_spinning_killers
## on_r_trapper_blinder

scoreboard players reset @s powerup_carrot_stick