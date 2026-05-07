##
 # _clear_powerup.mcfunction
 # 
 #
 # Created by Lifeely.
##

## This function makes player that launches this function clear its tags and reset its score of scoreboard

##When same entitys has this specific powerup activated, then remove only this power score
execute if entity @s[tag=on_k_no_jumping] run scoreboard players reset on_k_no_jumping Powerups
execute if entity @s[tag=on_k_slowdown] run scoreboard players reset on_k_slowdown Powerups
execute if entity @s[tag=on_k_small_gary] run scoreboard players reset on_k_small_gary Powerups
execute if entity @s[tag=on_k_spinning_runners] run scoreboard players reset on_k_spinning_runners Powerups
execute if entity @s[tag=on_k_vex_trio] run scoreboard players reset on_k_vex_trio Powerups
execute if entity @s[tag=on_r_invisibility] run scoreboard players reset on_r_invisibility Powerups
execute if entity @s[tag=on_r_speed_boost] run scoreboard players reset on_r_speed_boost Powerups
execute if entity @s[tag=on_r_trapper_blinder] run scoreboard players reset on_r_trapper_blinder Powerups
execute if entity @s[tag=on_r_spinning_killers] run scoreboard players reset on_r_spinning_killers Powerups
execute if entity @s[tag=on_r_power_jump] run scoreboard players reset on_r_power_jump Powerups
execute if entity @s[tag=on_r_portable_switch] run scoreboard players reset on_r_portable_switch Powerups


##Remove tags
tag @s remove on_k_no_jumping
tag @s remove on_k_slowdown
tag @s remove on_k_small_gary
tag @s remove on_k_spinning_runners
tag @s remove on_k_vex_trio
tag @s remove on_r_invisibility
tag @s remove on_r_speed_boost
tag @s remove on_r_trapper_blinder
tag @s remove on_r_spinning_killers
tag @s remove on_r_power_jump
tag @s remove on_r_portable_switch
tag @s remove once_cleared

##Clear information about powerups
title @s title {"translate":"wtem.empty"}
title @s subtitle {"translate":"wtem.empty"}

##Remove info that player has powerup activated
tag @s remove powerup_activated

##Reset scoreboard of powerup carrot stick
scoreboard players reset @s powerup_carrot_stick