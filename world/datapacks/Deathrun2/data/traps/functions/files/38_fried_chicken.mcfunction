##
 # 38_.mcfunction
 # 
 #
 # Created by .
##

##Start the loop cycle
scoreboard players set loop_38 loop_trap 1
scoreboard players add flame38_timer Timer 1

scoreboard players set trap_38 trap_activated 1

execute if score flame38_timer Timer matches 1 run playsound minecraft:entity.ender_dragon.growl record @a 171.02 -37.19 136.00 6 0.9
execute if score flame38_timer Timer matches 1 run summon fireball 171.50 -37.50 135.50 {ExplosionPower:4b,power:[0.0,-0.006,-0.2],Tags:["dragon_fireflame_fireball"],Passengers:[{id:"minecraft:block_display",Tags:["dragon_fireflame"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.5f,-1.5f,-1f],scale:[4f,4f,4f]},block_state:{Name:"minecraft:magma_block"}}],Item:{id:"minecraft:magma_block",Count:1b}}
execute if score flame38_timer Timer matches 1 run playsound minecraft:entity.ender_dragon.growl record @a 171.04 -36.59 136.00
execute unless entity @e[tag=!recorder,type=fireball,tag=dragon_fireflame] as @e[tag=!recorder,type=block_display,tag=dragon_fireflame] at @s run kill @s
execute as @e[tag=!recorder,tag=dragon_fireflame_fireball] at @s run particle lava ~ ~-1.5 ~ 1.5 2 1.5 0 20 normal
execute as @e[tag=!recorder,tag=dragon_fireflame_fireball] at @s run particle smoke ~ ~-1.5 ~0.5 1.5 2 1.5 0 20 normal

execute as @e[tag=!recorder,tag=dragon_fireflame_fireball] at @s run execute as @a[tag=!recorder,tag=runner,distance=..6.1] at @s run function traps:files/_player_die

execute if score flame38_timer Timer matches 60.. run scoreboard players set loop_38 loop_trap 0
execute if score flame38_timer Timer matches 60.. run scoreboard players set flame38_timer Timer 0