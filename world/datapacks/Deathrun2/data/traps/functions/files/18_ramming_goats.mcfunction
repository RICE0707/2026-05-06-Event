##
 # 18_.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set trap_18 trap_activated 1
##Start Loop
scoreboard players set loop_18 loop_trap 1
scoreboard players add goat_timer Timer 1

execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,tag=ramming_goat,distance=..2.75] run playsound entity.goat.ram_impact record @a ~ ~ ~ 1
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,tag=ramming_goat,distance=..2.75] run function traps:files/_player_die

execute if score goat_timer Timer matches 1 run summon goat 121.5 -27 115.5 {Tags:["ramming_goat"],Invulnerable:1b,PersistenceRequired:1b,IsScreamingGoat:1b,HasLeftHorn:1b,HasRightHorn:1b,Motion:[0.3525,0.45,0.3925],Rotation:[-45F,0F]}
execute if score goat_timer Timer matches 3 run summon goat 120.5 -27 116.5 {Tags:["ramming_goat"],Invulnerable:1b,PersistenceRequired:1b,IsScreamingGoat:1b,HasLeftHorn:1b,HasRightHorn:1b,Motion:[0.3525,0.45,0.3925],Rotation:[-45F,0F]}
execute if score goat_timer Timer matches 5 run summon goat 119.5 -27 117.5 {Tags:["ramming_goat"],Invulnerable:1b,PersistenceRequired:1b,IsScreamingGoat:1b,HasLeftHorn:1b,HasRightHorn:1b,Motion:[0.3525,0.45,0.3925],Rotation:[-45F,0F]}
execute if score goat_timer Timer matches 7 run summon goat 118.5 -27 118.5 {Tags:["ramming_goat"],Invulnerable:1b,PersistenceRequired:1b,IsScreamingGoat:1b,HasLeftHorn:1b,HasRightHorn:1b,Motion:[0.3525,0.45,0.3925],Rotation:[-45F,0F]}
execute if score goat_timer Timer matches 9 run summon goat 117.5 -27 119.5 {Tags:["ramming_goat"],Invulnerable:1b,PersistenceRequired:1b,IsScreamingGoat:1b,HasLeftHorn:1b,HasRightHorn:1b,Motion:[0.3525,0.45,0.3925],Rotation:[-45F,0F]}
execute if score goat_timer Timer matches 11 run summon goat 116.5 -27 120.5 {Tags:["ramming_goat"],Invulnerable:1b,PersistenceRequired:1b,IsScreamingGoat:1b,HasLeftHorn:1b,HasRightHorn:1b,Motion:[0.3525,0.45,0.3925],Rotation:[-45F,0F]}
execute if score goat_timer Timer matches 13 run summon goat 115.5 -27 121.5 {Tags:["ramming_goat"],Invulnerable:1b,PersistenceRequired:1b,IsScreamingGoat:1b,HasLeftHorn:1b,HasRightHorn:1b,Motion:[0.3525,0.45,0.3925],Rotation:[-45F,0F]}
execute as @e[tag=!recorder,type=goat] at @s run execute if entity @s[nbt={OnGround:1b}] run particle block snow_block ~ ~0.1 ~ 0.25 0 0.25 1 5 normal

execute as @e[tag=!recorder,type=goat,tag=ramming_goat] at @s run scoreboard players add @s kill_self 1
execute as @e[tag=!recorder,type=goat,tag=ramming_goat] at @s run execute if score @s kill_self matches 18 run data merge entity @s {Motion:[0.15,-2.0,0.15],Rotation:[-45F,0F]}
execute as @e[tag=!recorder,type=goat,tag=ramming_goat] at @s run execute if score @s kill_self matches 30.. run particle cloud ~ ~ ~ 0.25 0.25 0.25 0.08 3 normal

execute if score goat_timer Timer matches 14.. run execute as @e[tag=!recorder,tag=ramming_goat] at @s run execute unless block ~ ~-3 ~ yellow_concrete if entity @s[nbt={OnGround:1b}] run data merge entity @s {Motion:[0.6,0.2,0.6],Rotation:[-45F,0F]}
execute if score goat_timer Timer matches 14.. run execute as @e[tag=!recorder,tag=ramming_goat] at @s run execute if block ~ ~-3 ~ yellow_concrete run data merge entity @s {Motion:[0.8,5.0,0.8],Rotation:[-45F,0F]}
execute if score goat_timer Timer matches 14.. run execute as @e[tag=!recorder,tag=ramming_goat] at @s run execute if block ~ ~-3 ~ yellow_concrete run playsound entity.goat.long_jump record @a ~ ~ ~ 1.5

execute if score goat_timer Timer matches 90 run execute as @e[tag=!recorder,tag=ramming_goat] at @s run data merge entity @s {Motion:[3.0,0.8,3.0],Rotation:[-45F,0F]}

execute if score goat_timer Timer matches 110 run kill @e[tag=!recorder,tag=ramming_goat]
execute if score goat_timer Timer matches 110 run scoreboard players set loop_18 loop_trap 0
execute if score goat_timer Timer matches 110 run scoreboard players set goat_timer Timer 0