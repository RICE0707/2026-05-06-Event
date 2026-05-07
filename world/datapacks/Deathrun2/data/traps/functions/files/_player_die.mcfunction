##
 # _player_die.mcfunction
 # 
 #
 # Created by Lifeely.
##
##These functions will replace the normal kill command, with an small animation and a corpse

execute unless entity @e[tag=!recorder,tag=corpse_player,distance=..1] run summon item_display ~ ~ ~ {Rotation:[-135f,0f],billboard:"fixed",item_display:"head",Tags:["corpse_player","corpse"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},item:{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:207}}}
particle block redstone_block ~ ~1 ~ 0.5 0.5 0.5 1 30 normal
particle block red_wool ~ ~1 ~ 0.5 0.5 0.5 1 30 normal
particle block red_concrete ~ ~1 ~ 0.5 0.5 0.5 1 30 normal
playsound entity.player.big_fall record @a ~ ~ ~ 2 1
execute as @e[tag=!recorder,type=item_display,tag=corpse,limit=1,sort=nearest] at @s run data modify entity @s Rotation set from entity @e[tag=!recorder,tag=random_rotator,type=armor_stand,limit=1] Rotation
kill @s

