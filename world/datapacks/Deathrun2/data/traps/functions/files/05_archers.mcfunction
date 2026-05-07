##
 # 05_.mcfunction
 # 
 #
 # Created by .
##
 ##Enable Loop
scoreboard players set loop_05 loop_trap 1
scoreboard players add archer_loop Timer 1

## Make Skeleton one time angry particles and angry sound
execute as @e[tag=!recorder,tag=archer,tag=!angry_s] at @s run tag @s add angry
execute as @e[tag=!recorder,tag=angry,tag=archer,tag=!angry_s] at @s run particle angry_villager ~ ~1.4 ~ 0.2 0.2 0.2 1 3
execute as @e[tag=!recorder,tag=angry,tag=archer,tag=!angry_s] at @s run playsound entity.skeleton.death record @a ~ ~1.4 ~ 1.7 0.8
execute as @e[tag=!recorder,tag=angry,tag=archer,tag=!angry_s] at @s run tag @s add angry_s

##Disable Loop & the one time angry particle/sound check
execute if score archer_loop Timer matches 160.. run scoreboard players set loop_05 loop_trap 0
execute if score archer_loop Timer matches 160.. run tag @e[tag=!recorder,tag=archer] remove angry
execute if score archer_loop Timer matches 160.. run tag @e[tag=!recorder,tag=archer] remove angry_s
execute if score archer_loop Timer matches 160.. run scoreboard players set archer_loop Timer 0

 ##Make skeleton face player
execute as @e[tag=!recorder,tag=archer] at @s run teleport @s ~ ~ ~ facing entity @e[tag=!recorder,limit=1,sort=nearest,tag=runner]

## Delay of the shooting of spawning arrows
scoreboard players add shoot_delay Timer 1
execute if score shoot_delay Timer matches 7.. run scoreboard players set shoot_delay Timer 0
execute if score shoot_delay Timer matches 1 run execute as @e[tag=!recorder,tag=archer] at @s positioned ~ ~ ~ run summon arrow ^ ^1.4 ^0.35 {Tags:["pew"],damage:2d,shake:1b,crit:1b,PierceLevel:5b}

 ## Store position of skeleton
execute as @e[tag=!recorder,tag=archer] at @s store result score @s skel_px run data get entity @s Pos[0] 100
execute as @e[tag=!recorder,tag=archer] at @s store result score @s skel_py run data get entity @s Pos[1] 100
execute as @e[tag=!recorder,tag=archer] at @s store result score @s skel_pz run data get entity @s Pos[2] 100

 ## Store position of nearest to the skeletons arrow
execute as @e[tag=!recorder,tag=archer] at @s store result score @s skel_ax run data get entity @e[tag=!recorder,tag=pew,limit=1,sort=nearest] Pos[0] 100
execute as @e[tag=!recorder,tag=archer] at @s store result score @s skel_ay run data get entity @e[tag=!recorder,tag=pew,limit=1,sort=nearest] Pos[1] 100
execute as @e[tag=!recorder,tag=archer] at @s store result score @s skel_az run data get entity @e[tag=!recorder,tag=pew,limit=1,sort=nearest] Pos[2] 100

 ##Calculate the 3d directional vector

execute as @e[tag=!recorder,tag=archer] at @s run scoreboard players operation @s skel_py -= add_y skel_py

execute as @e[tag=!recorder,tag=archer] at @s run scoreboard players operation @s skel_ax -= @s skel_px
execute as @e[tag=!recorder,tag=archer] at @s run scoreboard players operation @s skel_ay -= @s skel_py
execute as @e[tag=!recorder,tag=archer] at @s run scoreboard players operation @s skel_az -= @s skel_pz



 ##Apply motion to the arrow based on that 3d vector
execute as @e[tag=!recorder,tag=archer] at @s store result entity @e[tag=!recorder,tag=pew,limit=1,sort=nearest] Motion[0] double 0.016 run scoreboard players get @s skel_ax
execute as @e[tag=!recorder,tag=archer] at @s store result entity @e[tag=!recorder,tag=pew,limit=1,sort=nearest] Motion[1] double 0.016 run scoreboard players get @s skel_ay
execute as @e[tag=!recorder,tag=archer] at @s store result entity @e[tag=!recorder,tag=pew,limit=1,sort=nearest] Motion[2] double 0.016 run scoreboard players get @s skel_az
execute as @e[tag=!recorder,tag=pew] at @s run tag @s remove pew
scoreboard players set trap_05 trap_activated 1