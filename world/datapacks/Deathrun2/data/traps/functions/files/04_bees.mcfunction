##
 # 04_.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set trap_04 trap_activated 1
scoreboard players set loop_04 loop_trap 1

##Bee dies after stung player
execute as @e[tag=!recorder,type=bee,tag=killer_bee,nbt={HasStung:1b}] at @s run kill @s

##Detail after bee spawns, playsound and make particle
execute as @e[tag=!recorder,tag=spawn,type=bee] at @s run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute as @e[tag=!recorder,tag=spawn,type=bee] at @s run playsound block.beehive.exit record @a ~ ~ ~ 1 1
execute as @e[tag=!recorder,tag=spawn,type=bee] at @s run teleport @s ~ ~ ~ facing entity @p
execute as @e[tag=!recorder,tag=spawn,type=bee] at @s run tag @s remove spawn

##Start the Bee Spawn loop
scoreboard players add bee_timer Timer 1
execute if score bee_timer Timer matches 4.. run scoreboard players add bee_timer_s Timer 1
execute if score bee_timer Timer matches 4.. run scoreboard players set bee_timer Timer 0

##End the Bee spawn loop
execute if score bee_timer_s Timer matches 5.. run scoreboard players set loop_04 loop_trap 0
execute if score bee_timer_s Timer matches 5.. run scoreboard players set bee_timer Timer 0
execute if score bee_timer_s Timer matches 5.. run scoreboard players set bee_timer_s Timer 0

##Spawn bees in front of their beehive
execute if score bee_timer Timer matches 1 run summon bee 108.51 -39.51 22.69 {Invulnerable:1b,PersistenceRequired:1b,HasStung:0b,CannotEnterHiveTicks:99999,AngerTime:99999,Tags:["killer_bee","spawn"],Attributes:[{Name:generic.follow_range,Base:90},{Name:generic.attack_damage,Base:300}]}
execute if score bee_timer Timer matches 2 run summon bee 105.54 -39.49 21.69 {Invulnerable:1b,PersistenceRequired:1b,HasStung:0b,CannotEnterHiveTicks:99999,AngerTime:99999,Tags:["killer_bee","spawn"],Attributes:[{Name:generic.follow_range,Base:90},{Name:generic.attack_damage,Base:300}]}
execute if score bee_timer Timer matches 3 run summon bee 105.48 -39.51 15.31 {Invulnerable:1b,PersistenceRequired:1b,HasStung:0b,CannotEnterHiveTicks:99999,AngerTime:99999,Tags:["killer_bee","spawn"],Attributes:[{Name:generic.follow_range,Base:90},{Name:generic.attack_damage,Base:300}]}
execute if score bee_timer Timer matches 2 run summon bee 110.51 -39.49 16.31 {Invulnerable:1b,PersistenceRequired:1b,HasStung:0b,CannotEnterHiveTicks:99999,AngerTime:99999,Tags:["killer_bee","spawn"],Attributes:[{Name:generic.follow_range,Base:90},{Name:generic.attack_damage,Base:300}]}
execute if score bee_timer Timer matches 1 run summon bee 115.52 -39.49 15.31 {Invulnerable:1b,PersistenceRequired:1b,HasStung:0b,CannotEnterHiveTicks:99999,AngerTime:99999,Tags:["killer_bee","spawn"],Attributes:[{Name:generic.follow_range,Base:90},{Name:generic.attack_damage,Base:300}]}
execute if score bee_timer Timer matches 1 run summon bee 115.69 -39.49 17.51 {Invulnerable:1b,PersistenceRequired:1b,HasStung:0b,CannotEnterHiveTicks:99999,AngerTime:99999,Tags:["killer_bee","spawn"],Attributes:[{Name:generic.follow_range,Base:90},{Name:generic.attack_damage,Base:300}]}
execute if score bee_timer Timer matches 2 run summon bee 116.69 -39.50 20.50 {Invulnerable:1b,PersistenceRequired:1b,HasStung:0b,CannotEnterHiveTicks:99999,AngerTime:99999,Tags:["killer_bee","spawn"],Attributes:[{Name:generic.follow_range,Base:90},{Name:generic.attack_damage,Base:300}]}
execute if score bee_timer Timer matches 1 run summon bee 115.52 -39.50 22.69 {Invulnerable:1b,PersistenceRequired:1b,HasStung:0b,CannotEnterHiveTicks:99999,AngerTime:99999,Tags:["killer_bee","spawn"],Attributes:[{Name:generic.follow_range,Base:90},{Name:generic.attack_damage,Base:300}]}
execute if score bee_timer Timer matches 3 run summon bee 112.49 -39.50 21.69 {Invulnerable:1b,PersistenceRequired:1b,HasStung:0b,CannotEnterHiveTicks:99999,AngerTime:99999,Tags:["killer_bee","spawn"],Attributes:[{Name:generic.follow_range,Base:90},{Name:generic.attack_damage,Base:300}]}



