##
 # _gamestarted_0.mcfunction
 # 
 #
 # Created by Lifeely.
##

##Make specific forceload areas
# Minigames 1
forceload remove 29 282 -188 5
# Minigames 2
forceload remove 34 311 388 168
# Deathrun
execute unless score intro_timer Timer matches 120.. run forceload remove 281 -58 27 164

##When no admin on the server, place the admin activation lever 
execute unless entity @a[tag=admin] run execute if block 1200 -27 -70 lever[powered=true] positioned 1200 -27 -70 run title @p[tag=!admin] times 5 30 5
execute unless entity @a[tag=admin] run execute if block 1200 -27 -70 lever[powered=true] positioned 1200 -27 -70 run title @p[tag=!admin] actionbar [{"translate":"core.functions.files._gamestarted_0.1","color": "gold","bold": true},{"translate":"core.functions.files._gamestarted_0.2","color": "white","bold": false}]
execute unless entity @a[tag=admin] run execute if block 1200 -27 -70 lever[powered=true] positioned 1200 -27 -70 run scoreboard players set _Reload Game 1
execute unless entity @a[tag=admin] run execute if block 1200 -27 -70 lever[powered=true] positioned 1200 -27 -70 run tag @p add admin
execute unless entity @a[tag=admin] run clone 1200 -34 -70 1200 -33 -70 1200 -28 -70
execute if entity @a[tag=admin] run fill 1200 -28 -70 1200 -27 -70 air destroy


##Particle above the start of the game platform
execute positioned 1202.00 -29.80 -48.00 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1203.46 -29.80 -49.00 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1205.82 -29.80 -49.00 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1207.00 -29.80 -47.80 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1207.00 -29.80 -45.50 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1207.00 -29.80 -43.00 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1205.63 -29.80 -41.00 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1203.00 -29.80 -41.35 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1201.00 -29.80 -43.00 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1201.00 -29.80 -45.00 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1201.00 -29.80 -47.00 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1204.48 -29.80 -49.00 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force
execute positioned 1204.13 -29.80 -41.00 facing 1204.00 -29.70 -45.00 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000003 0 force




execute if score GameStarted Game matches 0 run execute as @a[tag=!recorder,tag=remove_ready_to_start] at @s run gamemode adventure @s
execute if score GameStarted Game matches 0 run execute as @a[tag=!recorder,tag=remove_ready_to_start] at @s run title @s title {"translate":"core.functions.files._gamestarted_0.3","color": "yellow"}
execute if score GameStarted Game matches 0 run execute as @a[tag=!recorder,tag=remove_ready_to_start] at @s run title @s subtitle {"translate":"wtem.empty"}
execute if score GameStarted Game matches 0 run execute as @a[tag=!recorder,tag=remove_ready_to_start] at @s run tag @s remove titled_ready
execute if score GameStarted Game matches 0 run execute as @a[tag=!recorder,tag=remove_ready_to_start] at @s run tag @s remove ready_to_start
execute if score GameStarted Game matches 0 run execute as @a[tag=!recorder,tag=remove_ready_to_start] at @s run teleport @s 1202.5 -29 -61.5 0 0
execute if score GameStarted Game matches 0 run execute as @a[tag=!recorder,tag=remove_ready_to_start] at @s run tag @s remove remove_ready_to_start

##Crossbows in lobby
execute unless score intro_timer Timer matches 1.. run scoreboard players add crossbow_timer Timer 1
execute unless score intro_timer Timer matches 1.. run execute if score crossbow_timer Timer matches 1 run execute as @a[tag=!recorder,tag=!debug] at @s run item replace entity @s weapon.offhand with crossbow{HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:piercing",lvl:20s}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:0,Colors:[I;880383],FadeColors:[I;16712552]}]}}},{},{}],Charged:1b} 1
execute unless score intro_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=!debug] at @s run execute store result score @s crossbow_count run clear @s crossbow 0
execute unless score intro_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=!debug] at @s run execute if score @s crossbow_count matches 2.. run clear @s crossbow
execute unless score intro_timer Timer matches 1.. run execute if score crossbow_timer Timer matches 80.. run scoreboard players set crossbow_timer Timer 0
execute unless score intro_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=!debug] at @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b}}},{},{}],Charged:1b}}]}] run clear @s crossbow

##Small minigame of parrot killing game
execute unless entity @e[tag=!recorder,type=parrot,tag=Lifeely] run scoreboard players add Lifeely ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=Luki114] run scoreboard players add Luki114 ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=Avoru] run scoreboard players add Avoru ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=Mordkopotam45] run scoreboard players add Mordkopotam45 ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=Sept3y] run scoreboard players add Sept3y ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=John_Here_] run scoreboard players add John_Here_ ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=3Kloss3] run scoreboard players add 3Kloss3 ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=JemeJord] run scoreboard players add JemeJord ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=FREQUPCIACZ] run scoreboard players add FREQUPCIACZ ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=mr_master_maciek] run scoreboard players add mr_master_maciek ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=ViciaKicia] run scoreboard players add ViciaKicia ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=xxKamixx] run scoreboard players add xxKamixx ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=rctcr] run scoreboard players add rctcr ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=janeromanoff] run scoreboard players add janeromanoff ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=mikisyn] run scoreboard players add mikisyn ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=anonboy] run scoreboard players add anonboy ParrotMinigame 1
execute unless entity @e[tag=!recorder,type=parrot,tag=Juzou_Suzuyaa] run scoreboard players add anonboy ParrotMinigame 1


##In lobby make that when there is no player parrot, then make it spawn
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=Lifeely] run summon parrot 1202.51 -22.50 -58.00 {Tags:["Lifeely"],CustomName:'[{"translate":"core.functions.files._gamestarted_0.5","color":"#FF004C","bold":true},{"translate":"core.functions.files._gamestarted_0.6","color":"#00BBFF","bold":true}]',Variant:0,Health:1f,Motion:[0.3,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=Luki114] run summon parrot 1202.51 -22.50 -58.00 {Tags:["Luki114"],CustomName:'{"translate":"core.functions.files._gamestarted_0.7","color":"#00C3FF","bold": true}',Variant:1,Health:1f,Motion:[0.1,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=Avoru] run summon parrot 1202.51 -22.50 -58.00 {Tags:["Avoru"],CustomName:'{"translate":"core.functions.files._gamestarted_0.8","color":"white","bold": true}',Variant:2,Health:1f,Motion:[0.7,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=Mordkopotam45] run summon parrot 1202.51 -22.50 -58.00 {Tags:["Mordkopotam45"],CustomName:'{"translate":"core.functions.files._gamestarted_0.9","color":"#39873e","bold": true}',Variant:3,Health:1f,Motion:[0.0,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=Sept3y] run summon parrot 1202.51 -22.50 -58.00 {Tags:["Sept3y"],CustomName:'{"translate":"core.functions.files._gamestarted_0.10","color":"#82fa4b","bold": true}',Variant:4,Health:1f,Motion:[0.4,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=John_Here_] run summon parrot 1202.51 -22.50 -58.00 {Tags:["John_Here_"],CustomName:'{"translate":"core.functions.files._gamestarted_0.11","color":"#ff5100","bold": true}',Variant:0,Health:1f,Motion:[0.0,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=3Kloss3] run summon parrot 1202.51 -22.50 -58.00 {Tags:["3Kloss3"],CustomName:'{"translate":"core.functions.files._gamestarted_0.12","color":"#ff2b2b","bold": true}',Variant:1,Health:1f,Motion:[0.0,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=JemeJord] run summon parrot 1202.51 -22.50 -58.00 {Tags:["JemeJord"],CustomName:'{"translate":"core.functions.files._gamestarted_0.13","color":"#b00505","bold": true}',Variant:2,Health:1f,Motion:[0.1,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=FREQUPCIACZ] run summon parrot 1202.51 -22.50 -58.00 {Tags:["FREQUPCIACZ"],CustomName:'{"translate":"core.functions.files._gamestarted_0.14","color":"#202358","bold": true}',Variant:3,Health:1f,Motion:[0.0,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=mr_master_maciek] run summon parrot 1202.51 -22.50 -58.00 {Tags:["mr_master_maciek"],CustomName:'{"translate":"core.functions.files._gamestarted_0.15","color":"#523928","bold": true}',Variant:4,Health:1f,Motion:[0.4,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=ViciaKicia] run summon parrot 1202.51 -22.50 -58.00 {Tags:["ViciaKicia"],CustomName:'{"translate":"core.functions.files._gamestarted_0.16","color":"#ff5cb6","bold": true}',Variant:0,Health:1f,Motion:[0.0,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=xxKamixx] run summon parrot 1202.51 -22.50 -58.00 {Tags:["xxKamixx"],CustomName:'{"translate":"core.functions.files._gamestarted_0.17","color":"#812aeb","bold": true}',Variant:1,Health:1f,Motion:[0.4,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=rctcr] run summon parrot 1202.51 -22.50 -58.00 {Tags:["rctcr"],CustomName:'{"translate":"core.functions.files._gamestarted_0.18","color":"#27ffd7","bold": true}',Variant:2,Health:1f,Motion:[0.7,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=janeromanoff] run summon parrot 1202.51 -22.50 -58.00 {Tags:["janeromanoff"],CustomName:'{"translate":"core.functions.files._gamestarted_0.19","color":"#fff45c","bold": true}',Variant:3,Health:1f,Motion:[0.1,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=mikisyn] run summon parrot 1202.51 -22.50 -58.00 {Tags:["mikisyn"],CustomName:'{"translate":"core.functions.files._gamestarted_0.20","color":"#ffaa42","bold": true}',Variant:4,Health:1f,Motion:[0.3,0.0,0.5]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=anonboy] run summon parrot 1202.51 -22.50 -58.00 {Tags:["anonboy"],CustomName:'{"translate":"core.functions.files._gamestarted_0.21","color":"#6af3ff","bold": true}',Variant:2,Health:1f,Motion:[0.4,0.0,0.2]}
execute if loaded 1202 -22 -58 unless entity @e[tag=!recorder,type=parrot,tag=Juzou_Suzuyaa] run summon parrot 1202.51 -22.50 -58.00 {Tags:["Juzou_Suzuyaa"],CustomName:'{"translate":"core.functions.files._gamestarted_0.22","color":"#6af3ff","bold": true}',Variant:3,Health:1f,Motion:[0.4,0.0,0.2]}


##Make parrots spread
execute as @e[tag=!recorder,type=parrot,tag=!spread_spawned] at @s run spreadplayers 1203 -44 0 40 under -14 false @s
execute as @e[tag=!recorder,type=parrot,tag=!spread_spawned] at @s run tag @s add spread_spawned

##Make an funny parrot explosion when overfeed
execute as @e[tag=!recorder,type=parrot] at @s run execute if data entity @s Owner run playsound minecraft:custom.fart01 record @a ~ ~ ~ 0.2 1.2
execute as @e[tag=!recorder,type=parrot] at @s run execute if data entity @s Owner run particle explosion ~ ~ ~ 0 0 0 0.015 5 normal
execute as @e[tag=!recorder,type=parrot] at @s run execute if data entity @s Owner run data merge entity @s {Silent:1b}
execute as @e[tag=!recorder,type=parrot] at @s run execute if data entity @s Owner run teleport @s ~ ~-30 ~
execute as @e[tag=!recorder,type=parrot] at @s run execute if data entity @s Owner run kill @s

execute as @a[tag=!recorder,tag=!debug] at @s run execute store result score @s count_seeds run clear @s wheat_seeds 0
execute unless score intro_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=!debug] at @s run execute unless score @s count_seeds matches 1.. run give @s wheat_seeds
execute as @a[tag=!recorder,tag=!debug] at @s run execute if score @s count_seeds matches 2.. run clear @s wheat_seeds
execute as @e[tag=!recorder,type=item,nbt={Item:{id:"minecraft:wheat_seeds"}}] at @s run kill @s


##Make as levitating players leave particles 
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]}] at @s run particle cloud ~ ~ ~ 0.1 0 0.1 0.05 1 normal

effect give @a[tag=!recorder,nbt=!{ActiveEffects:[{Id:23}]},tag=!debug] saturation infinite 255 true

##Start the celebrate_timer on Timer 0..14
scoreboard players add celebrate_timer Timer 1
execute if score celebrate_timer Timer matches 14.. run scoreboard players set celebrate_timer Timer 1

##Make the villagers look at the player that has levitation effect inside lobby and let them celebrate by jumping talking and showing particles
execute as @e[tag=!recorder,type=villager,tag=lobby_villagers,nbt={OnGround:1b}] at @s run teleport @s ~ ~ ~ facing entity @p[tag=!recorder,nbt={ActiveEffects:[{Id:25}]}]
execute if score celebrate_timer Timer matches 1 run execute as @e[tag=!recorder,type=villager,tag=lobby_villagers,tag=villager_chousen] at @s if entity @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]}] run playsound entity.villager.celebrate record @a ~ ~ ~ 2 1
execute if score celebrate_timer Timer matches 1 run execute as @e[tag=!recorder,type=villager,tag=lobby_villagers,tag=villager_chousen] at @s if entity @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]}] run particle happy_villager ~ ~1.8 ~ 0.3 0.3 0.3 0 20 normal
execute if score celebrate_timer Timer matches 1 run execute as @e[tag=!recorder,type=villager,tag=lobby_villagers,tag=villager_chousen] at @s if entity @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]}] run data merge entity @s {Motion:[0.0,0.5,0.0]}

execute if score celebrate_timer Timer matches 7 run execute as @e[tag=!recorder,type=villager,tag=lobby_villagers,tag=villager_chousen2] at @s if entity @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]}] run playsound entity.villager.celebrate record @a ~ ~ ~ 2 1
execute if score celebrate_timer Timer matches 7 run execute as @e[tag=!recorder,type=villager,tag=lobby_villagers,tag=villager_chousen2] at @s if entity @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]}] run particle happy_villager ~ ~1.8 ~ 0.3 0.3 0.3 0 20 normal
execute if score celebrate_timer Timer matches 7 run execute as @e[tag=!recorder,type=villager,tag=lobby_villagers,tag=villager_chousen2] at @s if entity @a[tag=!recorder,nbt={ActiveEffects:[{Id:25}]}] run data merge entity @s {Motion:[0.0,0.5,0.0]}

execute if score celebrate_timer Timer matches 1 run execute as @e[tag=!recorder,tag=villager_chousen] at @s run tag @s remove villager_chousen
execute if score celebrate_timer Timer matches 7 run execute as @e[tag=!recorder,tag=villager_chousen2] at @s run tag @s remove villager_chousen2
execute if score celebrate_timer Timer matches 1 run tag @e[tag=!recorder,tag=lobby_villagers,tag=!villager_chousen,limit=1,sort=random,tag=!villager_chousen2] add villager_chousen 
execute if score celebrate_timer Timer matches 7 run tag @e[tag=!recorder,tag=lobby_villagers,tag=!villager_chousen,limit=1,sort=random,tag=!villager_cousend2] add villager_chousen2

##Make parrots in the Lobby when too high or too far, teleport back around the middle
execute as @e[tag=!recorder,type=parrot] at @s if entity @s[y=15,distance=..10] run particle cloud ~ ~ ~ 0 0 0 0.1 2 normal
execute as @e[tag=!recorder,type=parrot] at @s if entity @s[y=15,distance=..10] run tag @s add cloud_spawn_part
execute as @e[tag=!recorder,type=parrot] at @s if entity @s[y=15,distance=..10] run spreadplayers 1203 -44 0 40 under -14 false @s
execute as @e[tag=!recorder,type=parrot] at @s unless entity @s[x=1206,y=-28,z=-50,distance=..60] run particle cloud ~ ~ ~ 0 0 0 0.1 2 normal
execute as @e[tag=!recorder,type=parrot] at @s unless entity @s[x=1206,y=-28,z=-50,distance=..60] run tag @s add cloud_spawn_part
execute as @e[tag=!recorder,type=parrot] at @s unless entity @s[x=1206,y=-28,z=-50,distance=..60] run spreadplayers 1203 -44 0 40 under -14 false @s
execute as @e[tag=!recorder,type=parrot,nbt=!{CustomNameVisible:1b}] at @s run data merge entity @s {CustomNameVisible:true}
execute as @e[tag=!recorder,type=parrot,tag=cloud_spawn_part] at @s run particle cloud ~ ~ ~ 0 0 0 0.1 2 normal
execute as @e[tag=!recorder,type=parrot,tag=cloud_spawn_part] at @s run playsound block.beehive.exit record @a ~ ~ ~ 0.7 1.5
execute as @e[tag=!recorder,type=parrot,tag=cloud_spawn_part] at @s run tag @s remove cloud_spawn_part

bossbar set end_game_timer visible false

##Effects in lobby
effect give @a[tag=!recorder,tag=!debug] instant_health 3 200 true
