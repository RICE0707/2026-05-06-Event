##
 # 01_nether_army.mcfunction
 # 
 #
 # Created by Lifeely.
##
##Start loop and the secconds loop
scoreboard players set loop_01 loop_trap 1
scoreboard players add nether_army_timer Timer 1
scoreboard players add nether_army_timer_repeat Timer 1
execute if score nether_army_timer_repeat Timer matches 7.. run scoreboard players set nether_army_timer_repeat Timer 0

##Spawn one time entitys at the beginning
execute if score nether_army_timer Timer matches 1 run summon zombified_piglin 76.5 -41 -7 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 3 run summon piglin 69.5 -41 4.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 3 run summon piglin 68.5 -41 3.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 2 run summon piglin 67.5 -41 2.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 2 run summon piglin_brute 71.5 -41 4.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 3 run summon piglin 70.5 -41 3.5 {IsBaby:1b,OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 4 run summon piglin 69.5 -41 2.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 4 run summon piglin 68.5 -41 1.5 {IsBaby:1b,OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 3 run summon piglin 67.5 -41 0.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1 run summon piglin_brute 72.5 -41 3.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1 run summon piglin 71.5 -41 2.5 {IsBaby:1b,OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 6 run summon piglin 70.5 -41 1.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1 run summon piglin_brute 69.5 -41 0.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 2 run summon piglin_brute 68.5 -41 -1.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 7 run summon piglin 69.5 -41 -2.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 2 run summon piglin 70.5 -41 -1.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 2 run summon piglin 71.5 -41 0.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 4 run summon piglin_brute 72.5 -41 1.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 4 run summon piglin 73.5 -41 2.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 4 run summon piglin 73.5 -41 0.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 5 run summon piglin_brute 72.5 -41 -1.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 5 run summon piglin_brute 71.5 -41 -2.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 5 run summon zoglin 75 -41 -2 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 5 run summon zoglin 73 -41 -4 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 5 run summon zoglin 75 -41 -4 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 5 run summon zoglin 73 -41 -6 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 5 run summon zoglin 77 -41 -2 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}

##As piglins make afraid noises
execute if score nether_army_timer_repeat Timer matches 1 run execute as @e[tag=!recorder,type=piglin,tag=nether_army,limit=5,sort=random] at @s run playsound entity.piglin.retreat record @a ~ ~ ~

##When trap activated loop on spawning the zombified piglins
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 1 run summon zombified_piglin 79.50 -41 -4.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 2 run summon zombified_piglin 78.50 -41 -5.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 3 run summon zombified_piglin 76.50 -41 -6.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 4 run summon zombified_piglin 75.50 -41 -7.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 5 run summon zombified_piglin 79.50 -41 -5.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 1 run summon zombified_piglin 78.50 -41 -6.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 2 run summon zombified_piglin 76.50 -41 -7.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 3 run summon zombified_piglin 76.50 -41 -8.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 4 run summon zombified_piglin 77.50 -41 -7.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 5 run summon zombified_piglin 78.50 -41 -6.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 1 run summon zombified_piglin 79.50 -41 -5.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 2 run summon zombified_piglin 80.50 -41 -6.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 3 run summon zombified_piglin 78.50 -41 -7.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 4 run summon zombified_piglin 77.50 -41 -8.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 5 run summon zombified_piglin 77.50 -41 -9.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 6 run summon zombified_piglin 78.50 -41 -8.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 1 run summon zombified_piglin 79.50 -41 -7.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}
execute if score nether_army_timer Timer matches 1..100 if score nether_army_timer_repeat Timer matches 2 run summon zombified_piglin 80.50 -41 -6.5 {OnGround:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["nether_army"]}

##Make portal particles when piglins leave portal
execute as @e[tag=!recorder,tag=nether_army] at @s run execute if entity @e[tag=!recorder,type=block_display,distance=..2] run particle portal ~ ~1 ~ 0.4 0.7 0.4 0 2 normal


##Teleport Army towards far point so that they walk from one to the other portal
execute if score nether_army_timer Timer matches 1.. run execute as @e[tag=!recorder,tag=nether_army] at @s run teleport @s ^ ^ ^0.95 facing 21 -41 50

##When entity in the middle point, kill self
execute if score nether_army_timer Timer matches 1.. run execute as @e[tag=!recorder,tag=nether_army] at @s run execute if entity @s[x=41,y=-41,z=30,distance=..2.5] run data merge entity @s {Silent:1b}
execute if score nether_army_timer Timer matches 1.. run execute as @e[tag=!recorder,tag=nether_army] at @s run execute if entity @s[x=41,y=-41,z=30,distance=..2.5] run kill @s

##When runners near the army, they get killed
execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,tag=nether_army,distance=..1.5] run function traps:files/_player_die


##Break Loop
execute if score nether_army_timer Timer matches 175.. run kill @e[tag=!recorder,tag=nether_army]
execute if score nether_army_timer Timer matches 175.. run scoreboard players set loop_01 loop_trap 0
execute if score nether_army_timer Timer matches 175.. run scoreboard players set nether_army_timer_repeat Timer 0
execute if score nether_army_timer Timer matches 175.. run scoreboard players set nether_army_timer Timer 0

#41 -41 30


scoreboard players set trap_01 trap_activated 1







