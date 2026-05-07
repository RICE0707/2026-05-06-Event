##
 # _reload_animation_server.mcfunction
 # 
 #
 # Created by Lifeely.
##

##In this function instead of just reload and teleport all players make an small animation that makes the screen black and then teleport
scoreboard players add reload_timer Timer 1
execute if score reload_timer Timer matches 1 run title @a times 10 400 10
execute if score reload_timer Timer matches 1 run title @a title {"translate":"core.functions.files._reload_animation_server.1"}
execute if score reload_timer Timer matches 1 run title @a subtitle {"translate":"wtem.empty"}
execute if score reload_timer Timer matches 1 run execute as @a at @s run playsound ui.toast.in record @s ~ ~ ~ 0.6
execute if score reload_timer Timer matches 10.. run reload



