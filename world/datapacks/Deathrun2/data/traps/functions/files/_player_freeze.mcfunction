##
 # _player_freeze.mcfunction
 # 
 #
 # Created by Lifeely.
##
##These functions will replace the normal kill command, with an small animation and a corpse

execute unless entity @e[tag=!recorder,tag=frozen_player,distance=..1] run summon item_display ~ ~ ~ {OnGround:1b,Rotation:[-135f,0f],billboard:"fixed",item_display:"head",Tags:["frozen_player","corpse"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},item:{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:206}}}
particle block ice ~ ~1 ~ 0.5 0.5 0.5 1 30 normal
particle block blue_ice ~ ~1 ~ 0.5 0.5 0.5 1 30 normal
particle block packed_ice ~ ~1 ~ 0.5 0.5 0.5 1 30 normal
playsound entity.player.hurt_freeze record @a ~ ~ ~ 2 1
execute as @e[tag=!recorder,type=item_display,tag=corpse,limit=1,sort=nearest] at @s run data modify entity @s Rotation set from entity @e[tag=!recorder,tag=random_rotator,type=armor_stand,limit=1] Rotation
kill @s

