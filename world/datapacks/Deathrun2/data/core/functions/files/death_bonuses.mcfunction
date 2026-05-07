##
 # death.mcfunction
 # 
 #
 # Created by Lifeely.
##

 ## SpeedWalk Path
execute as @a[tag=!recorder,tag=killer] at @s run execute if block ~ ~-0.25 ~ magenta_glazed_terracotta run effect give @s speed 1 2 true
execute as @a[tag=!recorder,tag=killer] at @s run effect give @s regeneration infinite 200 true
execute as @a[tag=!recorder,tag=killer] at @s run effect give @s resistance infinite 200 true
execute as @a[tag=!recorder,tag=killer] at @s run effect give @s fire_resistance infinite 200 true
execute as @a[tag=!recorder,tag=killer] at @s run effect give @s instant_health infinite 200 true
execute as @a[tag=!recorder,tag=killer] at @s run effect clear @s darkness

execute as @a[tag=!recorder,tag=killer] at @s run attribute @s minecraft:generic.movement_speed base set 0.16400000149011612
scoreboard players add cooldown_player_position_particle Timer 1

## Death message if player is further than him

execute if score cooldown_player_position_particle Timer matches 5 run execute as @a[tag=!recorder,tag=runner,nbt=!{ActiveEffects:[{Id:14}]}] at @s run execute if entity @a[tag=!recorder,tag=killer,distance=..20] run particle bubble_pop ~ ~5 ~ 0 0 0 10 0 force @a[tag=!recorder,tag=killer,distance=..20]
execute if score cooldown_player_position_particle Timer matches 5 run execute as @a[tag=!recorder,tag=runner] at @s run particle bubble_pop ~ ~5 ~ 0 0 0 10 0 force @a[tag=!recorder,tag=spectator,distance=..35]
execute if score cooldown_player_position_particle Timer matches 5.. run scoreboard players set cooldown_player_position_particle Timer 0