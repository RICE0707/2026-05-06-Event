##
 # _4_crossy_spawn.mcfunction
 # 
 #
 # Created by Lifeely.
##

##Start timer for spawn crossy entity
scoreboard players add crossy_spawn_timer Timer 1
scoreboard players add crossy_move_timer Timer 1
execute if score crossy_spawn_timer Timer matches 15.. run scoreboard players set crossy_spawn_timer Timer 0 
execute if score crossy_move_timer Timer matches 2.. run scoreboard players set crossy_move_timer Timer 0 

##Random number select for entity group spawn 0..2
execute if score crossy_spawn_timer Timer matches 1 run kill @e[tag=!recorder,tag=random_crossy_uuid]
execute if score crossy_spawn_timer Timer matches 1 run summon area_effect_cloud -121.21 -19.00 212.24 {Tags:["random_crossy_uuid"]}
execute if score crossy_spawn_timer Timer matches 1 run execute store result score _crossy_chance_select_calc _minigame_crossy run data get entity @e[tag=!recorder,type=area_effect_cloud,tag=random_crossy_uuid,limit=1] UUID[0] 1
execute if score crossy_spawn_timer Timer matches 1 run scoreboard players operation _crossy_chance_select_calc _minigame_crossy %= _crossy_chance _minigame_crossy
execute if score crossy_spawn_timer Timer matches 1 run scoreboard players operation _crossy_chance_select _minigame_crossy = _crossy_chance_select_calc _minigame_crossy
execute if score crossy_spawn_timer Timer matches 1 run kill @e[tag=!recorder,tag=random_crossy_uuid]

##Spawn Villagers at their locations
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 0 run summon villager -120 -33 156 {Tags:["_crossy","crossy_x+"],Invulnerable:1b,Rotation:[-90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 1 run summon villager -110 -34 172 {Tags:["_crossy","crossy_x+"],Invulnerable:1b,Rotation:[-90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 2 run summon villager -115 -34 190 {Tags:["_crossy","crossy_x+"],Invulnerable:1b,Rotation:[-90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 1 run summon villager -119 -33 165 {Tags:["_crossy","crossy_x+"],Invulnerable:1b,Rotation:[-90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 0 run summon villager -83 -34 175 {Tags:["_crossy","crossy_x-"],Invulnerable:1b,Rotation:[90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 1 run summon villager -68 -34 232 {Tags:["_crossy","crossy_x-"],Invulnerable:1b,Rotation:[90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 2 run summon villager -68 -34 233 {Tags:["_crossy","crossy_x-"],Invulnerable:1b,Rotation:[90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 1 run summon villager -68 -34 236 {Tags:["_crossy","crossy_x-"],Invulnerable:1b,Rotation:[90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 0 run summon villager -68 -34 237 {Tags:["_crossy","crossy_x-"],Invulnerable:1b,Rotation:[90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 1 run summon villager -68 -34 238 {Tags:["_crossy","crossy_x-"],Invulnerable:1b,Rotation:[90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 2 run summon villager -87 -34 220 {Tags:["_crossy","crossy_x-"],Invulnerable:1b,Rotation:[90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 2 run summon villager -117 -34 162 {Tags:["_crossy","crossy_x+"],Invulnerable:1b,Rotation:[-90f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 1 run summon villager -134 -31 196 {Tags:["_crossy","crossy_z+"],Invulnerable:1b,Rotation:[0f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 0 run summon villager -150 -32 196 {Tags:["_crossy","crossy_z+"],Invulnerable:1b,Rotation:[0f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 1 run summon villager -184 -28 201 {Tags:["_crossy","crossy_z+"],Invulnerable:1b,Rotation:[0f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 2 run summon villager -148 -32 196 {Tags:["_crossy","crossy_z+"],Invulnerable:1b,Rotation:[0f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 1 run summon villager -196 -25 201 {Tags:["_crossy","crossy_z+"],Invulnerable:1b,Rotation:[0f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 0 run summon villager -162 -29 236 {Tags:["_crossy","crossy_z-"],Invulnerable:1b,Rotation:[180f,0f]}
execute if score crossy_spawn_timer Timer matches 1 if score _crossy_chance_select _minigame_crossy matches 1 run summon villager -160 -29 236 {Tags:["_crossy","crossy_z-"],Invulnerable:1b,Rotation:[180f,0f]}

##Teleport crossy +/- x/z forward as them (With cooldown so it does not lag too much)
execute if score crossy_move_timer Timer matches 0 as @e[tag=!recorder,tag=crossy_x+] at @s run teleport @s ~0.5 ~ ~ -90 0
execute if score crossy_move_timer Timer matches 1 as @e[tag=!recorder,tag=crossy_x-] at @s run teleport @s ~-0.5 ~ ~ 90 0
execute if score crossy_move_timer Timer matches 0 as @e[tag=!recorder,tag=crossy_z+] at @s run teleport @s ~ ~ ~0.5 0 0
execute if score crossy_move_timer Timer matches 1 as @e[tag=!recorder,tag=crossy_z-] at @s run teleport @s ~ ~ ~-0.5 180 0

##As villagers run check functions
execute as @e[tag=!recorder,tag=_crossy] at @s run function minigames:_4_crossy_brain

##When player inside villager, then make text hey!
execute as @a[tag=!recorder,tag=!spectator] at @s run execute if entity @e[tag=!recorder,type=villager,distance=..1.125] run scoreboard players remove @s Lives 1
execute as @a[tag=!recorder,tag=!spectator] at @s run execute if entity @e[tag=!recorder,type=villager,distance=..1.125] run function traps:files/_player_die

##As villagers make running particles
execute as @e[tag=!recorder,tag=_crossy] at @s run particle block gravel ^ ^ ^-0.5 0.3 0.2 0.3 0.3 0 normal