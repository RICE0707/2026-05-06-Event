##
 # 11_warden_farts.mcfunction
 # 
 #
 # Created by Lifeely.
##

##Start Loop
scoreboard players set loop_11 loop_trap 1
scoreboard players add warden_timer Timer 1

execute if score warden_timer Timer matches 1 run playsound minecraft:custom.fart01 record @a 67.50 -36.50 75.50 0.4 1
execute if score warden_timer Timer matches 1 run particle note 67.50 -36.50 75.50 0.25 0.25 0.25 0 7 normal
execute if score warden_timer Timer matches 6 run playsound minecraft:custom.fart01 record @a 65.50 -34.50 77.50 0.4 0.9
execute if score warden_timer Timer matches 6 run particle note 65.50 -34.50 77.50 0.25 0.25 0.25 0 7 normal
execute if score warden_timer Timer matches 11 run playsound minecraft:custom.fart01 record @a 64.50 -35.50 74.50 0.4 0.8
execute if score warden_timer Timer matches 11 run particle note 64.50 -35.50 74.50 0.25 0.25 0.25 0 7 normal

execute if score warden_timer Timer matches 12 run summon minecraft:warden 55.5 -40 68.5 {Brain: {memories: {"minecraft:dig_cooldown":{value: {}, ttl: 900L}, "minecraft:is_emerging": {value: {}, ttl: 85L}}},Invulnerable:1b}
execute if score warden_timer Timer matches 15 run tag @e[tag=!recorder,type=warden] add warden
execute if score warden_timer Timer matches 15 run teleport @e[tag=!recorder,tag=warden] 69.5 -42.0 78.5 -40 0

execute if score warden_timer Timer matches 900 run execute as @e[tag=!recorder,tag=warden] at @s run data merge entity @s {NoAI:1b,NoGravity:1b}
execute if score warden_timer Timer matches 900 run execute as @e[tag=!recorder,tag=warden] at @s run playsound entity.warden.emerge record @a ~ ~ ~
execute if score warden_timer Timer matches 900.. run execute as @e[tag=!recorder,tag=warden] at @s run teleport @s ~ ~-0.07 ~ ~ ~1
execute if score warden_timer Timer matches 990 run execute as @e[tag=!recorder,tag=warden] at @s run teleport @s ~ ~-50 ~




scoreboard players set trap_11 trap_activated 1


execute if score warden_timer Timer matches 1000.. run kill @e[tag=!recorder,tag=warden]