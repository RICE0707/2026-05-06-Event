##
 # 16_.mcfunction
 # 
 #
 # Created by .
##

##Start Loop
scoreboard players set loop_16 loop_trap 1
scoreboard players add gorge_timer Timer 1

##Break loop when done
execute if score gorge_timer Timer matches 50.. run scoreboard players set loop_16 loop_trap 0
execute if score gorge_timer Timer matches 50.. run scoreboard players set gorge_timer Timer 0



##Summon gorges on the bridge and make them jump down & playsound
   ##Front
execute if score gorge_timer Timer matches 1 run summon vindicator 98.3 -0.5 137.5 {Team:"death",Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,Motion:[0.7,0.8,-0.3],Rotation:[90F,0F],Tags:["gorge"],CustomName:'{"translate":"traps.functions.files.16_gorge.1","color":"#B0B0B0","bold":true}',HandItems:[{id:"minecraft:netherite_axe",Count:1b,tag:{Unbreakable:1b}},{}],Attributes:[{Name:generic.follow_range,Base:60},{Name:generic.attack_damage,Base:11},{Name:generic.movement_speed,Base:0.33}]}
execute if score gorge_timer Timer matches 1 run summon vindicator 98.7 3.1 124.8 {Team:"death",Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,Motion:[0.7,0.8,0.3],Rotation:[90F,0F],Tags:["gorge"],CustomName:'{"translate":"traps.functions.files.16_gorge.2","color":"#B0B0B0","bold":true}',HandItems:[{id:"minecraft:netherite_axe",Count:1b,tag:{Unbreakable:1b}},{}],Attributes:[{Name:generic.follow_range,Base:60},{Name:generic.attack_damage,Base:11},{Name:generic.movement_speed,Base:0.33}]}
   ##Behind
execute if score gorge_timer Timer matches 1 run summon vindicator 97.1 4 121.5 {Team:"death",Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,Motion:[-0.3,0.8,0.5],Rotation:[-90F,0F],Tags:["gorge"],CustomName:'{"translate":"traps.functions.files.16_gorge.3","color":"#B0B0B0","bold":true}',HandItems:[{id:"minecraft:netherite_axe",Count:1b,tag:{Unbreakable:1b}},{}],Attributes:[{Name:generic.follow_range,Base:60},{Name:generic.attack_damage,Base:11},{Name:generic.movement_speed,Base:0.33}]}
execute if score gorge_timer Timer matches 1 run summon vindicator 96.7 2 129.5 {Team:"death",Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,Motion:[-0.3,0.8,0.1],Rotation:[-90F,0F],Tags:["gorge"],CustomName:'{"translate":"traps.functions.files.16_gorge.4","color":"#B0B0B0","bold":true}',HandItems:[{id:"minecraft:netherite_axe",Count:1b,tag:{Unbreakable:1b}},{}],Attributes:[{Name:generic.follow_range,Base:60},{Name:generic.attack_damage,Base:11},{Name:generic.movement_speed,Base:0.33}]}

execute if score gorge_timer Timer matches 5 run playsound minecraft:item.goat_horn.sound.2 record @a 97.64 3.00 121.77 10 1
execute if score gorge_timer Timer matches 1 run playsound minecraft:item.goat_horn.sound.2 record @a 97.73 1.50 131.44 10 1.3


execute if score gorge_timer Timer matches 40 run fill 97 -41 135 100 -37 136 air destroy
execute if score gorge_timer Timer matches 40 run clone 101 -64 131 95 -53 138 95 -45 131
execute if score gorge_timer Timer matches 41 run execute as @e[tag=!recorder,tag=gorge_ravenger] at @s run data merge entity @s {Silent:0b,NoAI:0b,Motion:[0.0,0.6,-0.6],Attributes:[{Name:generic.movement_speed,Base:1.6}]}
execute if score gorge_timer Timer matches 49.. run tag @e[tag=!recorder,tag=gorge_ravenger] add gorge

scoreboard players set trap_16 trap_activated 1



##Default
##clone 93 -64 131 87 -53 138 95 -45 131

##Open
##clone 101 -64 131 95 -53 138 95 -45 131





