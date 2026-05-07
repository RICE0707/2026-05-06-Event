##
 # _gamestarted_3.mcfunction
 # 
 #
 # Created by Lifeely.
##

##This function is an small function where players can see the winner of the Second Deathrunner


## Ways to win/lose/tie the game
##Runner walk throught the portal and minigame disabled =                           Runners Won
##Runners walk throught the portal and won the minigame =                           Runners Won
##AI Gamemode, Runners walk throught the portal =                                   Runners Won
##Runners die by the Killers (All the Lives are gone) =                             Killers Won
##Runners die by the Running Death =                                                Killers Won
##Runners die by time_left 0 and when GameStop when time is done is on =            Killers Won
##AI Gamemode, AI Killer kills all the runners =                                    AI Won
##AI Gamemode, Runners killed by WalkingDeath =                                     AI Won
##AI Gamemode, Time is up =                                                         AI Won
##Runners walk throught the portal and lose the minigame =                          Tie

##  -   0       =   
##  -   1       =   
##  -   2       =   
##  -   3       =   

## Intro Animation (Blackout screen, Smooth Teleport, Music and audio about the game,)

execute unless score GameWinner Timer matches 1.. run title @a[tag=!recorder] times 10 40 10
execute unless score GameWinner Timer matches 1.. run title @a[tag=!recorder] title {"translate":"core.functions.files._gamestarted_3.1"}
execute unless score GameWinner Timer matches 1.. run title @a[tag=!recorder] subtitle {"translate":"wtem.empty"}

execute if score GameWinner Timer matches 11 run gamemode spectator @a[tag=!recorder]
execute if score GameWinner Timer matches 11.. run execute as @a[tag=!recorder] at @s run teleport @s 259.5 -28.8 181.5 90 9
execute if score GameWinner Timer matches 11 run bossbar set end_game_timer visible false
execute if score GameWinner Timer matches 20..39 run kill @e[tag=winner_animation]


execute unless score _Reload Game matches 1 run scoreboard players add GameWinner Timer 1
execute unless score _Reload Game matches 1 if score GameWinner Timer matches 200.. run scoreboard players set _Reload Game 1




##Runners and Killers won, (DRAW)            \uE041
execute if score Winner= Game matches 0 unless score _Reload Game matches 1 if score GameWinner Timer matches 40 run summon text_display 255.25 -26.00 181.50 {alignment:"center",Rotation:[-90F,15F],Tags:["winner_animation"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"translate":"core.functions.files._gamestarted_3.3"}',background:16711680}
execute if score Winner= Game matches 0 unless score _Reload Game matches 1 if score GameWinner Timer matches 60 run particle cloud 253.50 -29.00 179.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 0 unless score _Reload Game matches 1 if score GameWinner Timer matches 60 run summon armor_stand 253.50 -30.00 179.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[115F,0F],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:1007}}]}
execute if score Winner= Game matches 0 unless score _Reload Game matches 1 if score GameWinner Timer matches 80 run particle cloud 253.50 -29.00 183.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 0 unless score _Reload Game matches 1 if score GameWinner Timer matches 80 run summon armor_stand 253.50 -30.00 183.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[65F,0F],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:1007}}]}
execute if score Winner= Game matches 0 unless score _Reload Game matches 1 if score GameWinner Timer matches 100 run particle cloud 254.50 -29.00 181.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 0 unless score _Reload Game matches 1 if score GameWinner Timer matches 100 run summon armor_stand 254.50 -30.00 181.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[90F,0F],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:1007}}]}




##Runners Won         \uE039
execute if score Winner= Game matches 1 unless score _Reload Game matches 1 if score GameWinner Timer matches 40 run summon text_display 255.25 -26.00 181.50 {alignment:"center",Rotation:[-90F,15F],Tags:["winner_animation"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"translate":"core.functions.files._gamestarted_3.4"}',background:16711680}
execute if score Winner= Game matches 1 unless score _Reload Game matches 1 if score GameWinner Timer matches 60 run particle cloud 253.50 -29.00 179.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 1 unless score _Reload Game matches 1 if score GameWinner Timer matches 60 run summon armor_stand 253.50 -30.00 179.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[115F,0F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"brin999"}}]}
execute if score Winner= Game matches 1 unless score _Reload Game matches 1 if score GameWinner Timer matches 80 run particle cloud 253.50 -29.00 183.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 1 unless score _Reload Game matches 1 if score GameWinner Timer matches 80 run summon armor_stand 253.50 -30.00 183.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[65F,0F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"brin999"}}]}
execute if score Winner= Game matches 1 unless score _Reload Game matches 1 if score GameWinner Timer matches 100 run particle cloud 254.50 -29.00 181.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 1 unless score _Reload Game matches 1 if score GameWinner Timer matches 100 run summon armor_stand 254.50 -30.00 181.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[90F,0F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"brin999"}}]}




##Killers Won        \uE038
execute if score Winner= Game matches 2 unless score _Reload Game matches 1 if score GameWinner Timer matches 40 run summon text_display 255.25 -26.00 181.50 {alignment:"center",Rotation:[-90F,15F],Tags:["winner_animation"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"translate":"core.functions.files._gamestarted_3.5"}',background:16711680}
execute if score Winner= Game matches 2 unless score _Reload Game matches 1 if score GameWinner Timer matches 60 run particle cloud 253.50 -29.00 179.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 2 unless score _Reload Game matches 1 if score GameWinner Timer matches 60 run summon armor_stand 253.50 -30.00 179.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[115F,0F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:1002}}]}
execute if score Winner= Game matches 2 unless score _Reload Game matches 1 if score GameWinner Timer matches 80 run particle cloud 253.50 -29.00 183.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 2 unless score _Reload Game matches 1 if score GameWinner Timer matches 80 run summon armor_stand 253.50 -30.00 183.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[65F,0F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:1003}}]}
execute if score Winner= Game matches 2 unless score _Reload Game matches 1 if score GameWinner Timer matches 100 run particle cloud 254.50 -29.00 181.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 2 unless score _Reload Game matches 1 if score GameWinner Timer matches 100 run summon armor_stand 254.50 -30.00 181.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[90F,0F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:1004}}]}




##AI Won             \uE040
execute if score Winner= Game matches 3 unless score _Reload Game matches 1 if score GameWinner Timer matches 40 run summon text_display 255.25 -26.00 181.50 {alignment:"center",Rotation:[-90F,15F],Tags:["winner_animation"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"translate":"core.functions.files._gamestarted_3.6"}',background:16711680}
execute if score Winner= Game matches 3 unless score _Reload Game matches 1 if score GameWinner Timer matches 60 run particle cloud 253.50 -29.00 179.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 3 unless score _Reload Game matches 1 if score GameWinner Timer matches 60 run summon armor_stand 253.50 -30.00 179.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[115F,0F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:1001}}]}
execute if score Winner= Game matches 3 unless score _Reload Game matches 1 if score GameWinner Timer matches 80 run particle cloud 253.50 -29.00 183.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 3 unless score _Reload Game matches 1 if score GameWinner Timer matches 80 run summon armor_stand 253.50 -30.00 183.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[65F,0F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:1001}}]}
execute if score Winner= Game matches 3 unless score _Reload Game matches 1 if score GameWinner Timer matches 100 run particle cloud 254.50 -29.00 181.50 0.25 0.35 0.25 0.05 20
execute if score Winner= Game matches 3 unless score _Reload Game matches 1 if score GameWinner Timer matches 100 run summon armor_stand 254.50 -30.00 181.50 {NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["winner_animation"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[90F,0F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:pufferfish",Count:1b,tag:{CustomModelData:1000}}]}

## Winner_armorstand Animation

scoreboard players add winner_animation Timer 1
execute if score winner_animation Timer matches 14.. run scoreboard players set winner_animation Timer 1

##From 0 to 60 frames, animation of the winner armorstand
execute if score winner_animation Timer matches 1 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {Head: [0f, 180f, 0f],LeftArm: [35f, 0f, -25f],RightArm: [35f, 0f, -15f],Body: [0f, 7.5f, 0f],LeftLeg: [15f, 25f, -25f],RightLeg: [0f, 0f, 0f]}}
execute if score winner_animation Timer matches 2 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {LeftArm: [35f, 0f, -50f],RightArm: [35f, 0f, -30f],Body: [0f, 15f, 0f],LeftLeg: [-25f, 82f, -82f]}}
execute if score winner_animation Timer matches 3 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {Head: [0f, 165f, 0f],LeftArm: [35f, -4.547473508864641e-13f, -75f],RightArm: [35f, 0f, -45f],Body: [0f, 22.5f, 0f],LeftLeg: [-170f, 82f, -248f]}}
execute if score winner_animation Timer matches 4 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {LeftArm: [35f, 0f, -50f],RightArm: [35f, 0f, -30f],Body: [0f, 15f, 0f],LeftLeg: [-25f, 82f, -82f]}}
execute if score winner_animation Timer matches 5 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {LeftArm: [35f, -4.547473508864641e-13f, -25f],RightArm: [35f, -4.547473508864641e-13f, -15f],Body: [0f, 7.5f, 0f],LeftLeg: [15f, 25f, -25f]}}
execute if score winner_animation Timer matches 6 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {Head: [0f, 180f, 0f],LeftArm: [35f, 0f, 0f],RightArm: [35f, 0f, 0f],Body: [0f, 0f, 0f],LeftLeg: [0f, 0f, 0f],RightLeg: [0f, 0f, 0f]}}
execute if score winner_animation Timer matches 7 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {LeftArm: [35f, 0f, 15f],RightArm: [35f, 0f, 25f],Body: [0f, -7.5f, 0f],RightLeg: [15f, -25f, 25f]}}
execute if score winner_animation Timer matches 8 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {LeftArm: [35f, 0f, 30f],RightArm: [35f, 0f, 50f],Body: [0f, -15f, 0f],RightLeg: [-25f, -82f, 82f]}}
execute if score winner_animation Timer matches 9 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {Head: [0f, -165f, 0f],LeftArm: [35f, 0f, 45f],RightArm: [35f, 0f, 75f],Body: [0f, -22.5f, 0f],RightLeg: [-170f, -82f, 248f]}}
execute if score winner_animation Timer matches 10 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {LeftArm: [35f, 0f, 30f],RightArm: [35f, 0f, 50f],Body: [0f, -15f, 0f],RightLeg: [-25f, -82f, 82f]}}
execute if score winner_animation Timer matches 11 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {LeftArm: [35f, 0f, 15f],RightArm: [35f, 0f, 25f],Body: [0f, -7.5f, 0f],RightLeg: [15f, -25f, 25f]}}
execute if score winner_animation Timer matches 12 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {Head: [0f, 180f, 0f],LeftArm: [35f, 0f, 0f],RightArm: [35f, 0f, 0f],Body: [0f, 0f, 0f],LeftLeg: [0f, 0f, 0f],RightLeg: [0f, 0f, 0f]}}
execute if score winner_animation Timer matches 13 run execute as @e[type=armor_stand,tag=winner_animation] at @s run data merge entity @s {Pose: {LeftArm: [35f, 0f, -25f],RightArm: [35f, 0f, -15f],Body: [0f, 7.5f, 0f],LeftLeg: [15f, 25f, -25f],RightLeg: [0f, 0f, 0f]}}

## Winner armostand dance + Summon

## Platforms for the Winner armorstand spawnpoint
##Middle    = 254.50 -30.00 181.50
##Left      = 253.50 -30.00 183.50
##Right     = 253.50 -30.00 179.50



# summon minecraft:armor_stand ~ ~ ~ {Tags:["winner_animation"], NoBasePlate:1b, ShowArms:1b, Pose:{LeftArm:[0f, 0f, 0f], RightArm:[0f, 0f, 0f], LeftLeg:[0f, 0f, 0f], RightLeg:[0f, 0f, 0f]}}
