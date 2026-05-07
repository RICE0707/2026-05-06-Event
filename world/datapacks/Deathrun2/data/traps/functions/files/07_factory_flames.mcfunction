##
 # 07_factory_flames.mcfunction
 # 
 #
 # Created by .
##
##Start Loop
scoreboard players set loop_07 loop_trap 1
scoreboard players add factory_flames Timer 1

##Spawn particles in the middle and for among of trap run lava flame
execute if score factory_flames Timer matches 1.. run particle minecraft:lava 143.50 -43.00 50.50 1.5 1 0 3 5 normal
execute if score factory_flames Timer matches 1.. run particle minecraft:lava 138.50 -43.00 50.5 1.5 1 0 3 5 normal
execute if score factory_flames Timer matches 1.. run particle minecraft:flame 138.50 -43.00 50.5 1.5 1 0 0.1 5 normal
execute if score factory_flames Timer matches 1.. run particle minecraft:flame 138.50 -43.00 50.5 1.5 1 0 0.1 5 normal
execute if score factory_flames Timer matches 1 run summon block_display 141.00 -43.00 50.50 {billboard:"fixed",Rotation:[-180F,0F],Tags:["flame_07"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-5f,-1.3f,-1f],scale:[10f,5f,2f]},block_state:{Name:"minecraft:fire"}}
execute if score factory_flames Timer matches 1 run playsound block.lava.extinguish record @a 141.00 -43.00 50.50 1.5 1.5
execute if score factory_flames Timer matches 1 run playsound block.campfire.crackle record @a 141.00 -43.00 50.50 1.5 1.5
execute if score factory_flames Timer matches 61 run playsound block.campfire.crackle record @a 141.00 -43.00 50.50 1.5 1.5
execute if score factory_flames Timer matches 121 run playsound block.campfire.crackle record @a 141.00 -43.00 50.50 1.5 1.5
execute if score factory_flames Timer matches 181 run playsound block.campfire.crackle record @a 141.00 -43.00 50.50 1.5 1.5
execute if score factory_flames Timer matches 200 run playsound block.lava.extinguish record @a 141.00 -43.00 50.50 1.5 1.5

execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-6 ~ blue_glazed_terracotta run particle flame ~ ~ ~ 0.3 0.3 0.3 0 50 normal @a
execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-6 ~ blue_glazed_terracotta run playsound entity.blaze.shoot record @a ~ ~ ~ 1.5 1.3 
execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-6 ~ blue_glazed_terracotta run playsound block.lava.extinguish record @a ~ ~ ~ 1.5 1.3 
execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~-6 ~ blue_glazed_terracotta run kill @s





scoreboard players set trap_07 trap_activated 1

execute if score factory_flames Timer matches 200 run kill @e[tag=!recorder,tag=flame_07]
execute if score factory_flames Timer matches 200 run scoreboard players set loop_07 loop_trap 0
execute if score factory_flames Timer matches 200 run scoreboard players set factory_flames Timer 0