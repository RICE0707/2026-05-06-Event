##
 # 17_.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set trap_17 trap_activated 1
##Start Loop
scoreboard players set loop_17 loop_trap 1
scoreboard players add push_timer Timer 1

##As armorstand when player near ride one player only
execute if score push_timer Timer matches 1 run summon armor_stand 113.50 -40.00 128.30 {Small:1b,Invisible:1b,PersistenceRequired:1b,Motion:[0.01,0.1,2.50],Tags:["push_player"],DisabledSlots:4144959}
execute if score push_timer Timer matches 2 run summon armor_stand 113.70 -40.00 128.30 {Small:1b,Invisible:1b,PersistenceRequired:1b,Motion:[0.02,0.1,2.55],Tags:["push_player"],DisabledSlots:4144959}
execute if score push_timer Timer matches 3 run summon armor_stand 113.40 -40.00 128.30 {Small:1b,Invisible:1b,PersistenceRequired:1b,Motion:[-0.01,0.125,2.50],Tags:["push_player"],DisabledSlots:4144959}
execute if score push_timer Timer matches 4 run summon armor_stand 113.6 -40.00 128.30 {Small:1b,Invisible:1b,PersistenceRequired:1b,Motion:[-0.01,0.125,2.52],Tags:["push_player"],DisabledSlots:4144959}
execute if score push_timer Timer matches 5 run summon armor_stand 113.50 -40.00 128.30 {Small:1b,Invisible:1b,PersistenceRequired:1b,Motion:[-0.05,0.1,2.50],Tags:["push_player"],DisabledSlots:4144959}
execute if score push_timer Timer matches 6 run summon armor_stand 113.40 -40.00 128.30 {Small:1b,Invisible:1b,PersistenceRequired:1b,Motion:[0.05,0.1,2.50],Tags:["push_player"],DisabledSlots:4144959}
execute if score push_timer Timer matches 7 run summon armor_stand 113.75 -40.00 128.30 {Small:1b,Invisible:1b,PersistenceRequired:1b,Motion:[-0.03,0.1,2.50],Tags:["push_player"],DisabledSlots:4144959}
execute if score push_timer Timer matches 1 run playsound entity.player.attack.sweep record @a 113.50 -40.00 128.30 1.5 0.7
execute if score push_timer Timer matches 1 run particle sweep_attack 113.50 -39.50 128.30 1.7 1 0 0 10

execute if score push_timer Timer matches 1..80 run execute as @e[tag=!recorder,type=armor_stand,tag=push_player] at @s run ride @a[tag=!recorder,distance=..4,tag=runner,limit=1,sort=nearest] mount @s

execute if score push_timer Timer matches 80.. run execute as @e[tag=!recorder,type=armor_stand,tag=push_player] at @s run kill @s
execute if score push_timer Timer matches 80.. run scoreboard players set loop_17 loop_trap 0
execute if score push_timer Timer matches 80.. run scoreboard players set push_timer Timer 0