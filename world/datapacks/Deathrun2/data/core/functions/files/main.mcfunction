##
 # main.mcfunction
 # files
 #
 # Created by Lifeely.
##

##GameStarted 0 = Lobby
##GameStarted 1 = Deathrun
##GameStarted 2 = Endgame Minigame
##GameStarted 3 = Endgame Cutscene (Who won)

##Winner=     0 = Tie
##Winner=     1 = Runners
##Winner=     2 = Killers
##Winner=     3 = AI Killer


execute as @e[type=armor_stand,tag=uuid_stand] at @s run data merge entity @s {CustomNameVisible:true}

##When Reload activated by scoreboard then start the animation and reload
execute if score _Reload Game matches 1 run function core:files/_reload_animation_server

##When GameStarted Game is 1 (Deathrun), run game functions
execute if score GameStarted Game matches 1 run function core:files/death_bonuses
execute if score GameStarted Game matches 1 run function core:files/idle_animations
execute if score GameStarted Game matches 1 run function traps:files/_random_gates
execute if score GameStarted Game matches 1 run function core:files/loop_trap
execute if score GameStarted Game matches 1 run function core:files/checkpoints_activator
execute if score GameStarted Game matches 1 run function core:files/spawn_function
execute if score GameStarted Game matches 0 run function core:files/_gamestarted_0
execute if score GameStarted Game matches 1 run function core:files/_gamestarted_1
execute if score GameStarted Game matches 2 run function core:files/_gamestarted_2
execute if score GameStarted Game matches 3 run function core:files/_gamestarted_3
execute if score GameStarted Game matches 1 if score EndGameTime Game matches 1 run function core:files/endgame_path
function pointshop:_pointshop_core
execute if score GameStarted Game matches 1 run gamemode spectator @a[tag=!recorder,tag=out_of_lives]

##When there is no admin give someone admin
#execute unless entity @a[tag=!recorder,tag=admin] run tag @r add admin

## When no admin avaible no player can leave the spawn area
execute unless entity @a[tag=!recorder,tag=admin] run execute as @a[tag=!recorder,x=1200,y=-28,z=-74,distance=4..] at @s run playsound block.note_block.banjo record @s ~ ~ ~ 1 0.5
execute unless entity @a[tag=!recorder,tag=admin] run execute as @a[tag=!recorder,x=1200,y=-28,z=-74,distance=4..] at @s run tellraw @s [{"translate":"core.functions.files.main.1"},{"translate":"core.functions.files.main.2","bold":true,"color": "yellow","hoverEvent":{"action":"show_text","value":[{"translate":"core.functions.files.main.3","color":"gold","bold":true}]},"clickEvent":{"action":"suggest_command","value":"/tag @s add admin"}},{"translate":"core.functions.files.main.4","hoverEvent":{"action":"show_text","value":[{"translate":"wtem.empty","color":"yellow","bold":true}]}}]
execute unless entity @a[tag=!recorder,tag=admin] run execute as @a[tag=!recorder,x=1200,y=-28,z=-74,distance=4..] at @s run teleport @s 1199.5 -28 -74.5

##When GameStarted Game is 0 (Lobby), run lobby functions IT WILL NOT WORK WHEN NO ADMIN ON THE SERVER!
execute if entity @a[tag=!recorder,tag=admin] run execute if score GameStarted Game matches 0 run function core:files/settings
execute if entity @a[tag=!recorder,tag=admin] run execute if score GameStarted Game matches 0 run function core:files/music
execute if entity @a[tag=!recorder,tag=admin] run execute if score GameStarted Game matches 0 run function core:files/lobby_3_in_line
execute if entity @a[tag=!recorder,tag=admin] run execute if score GameStarted Game matches 0 run function core:files/lobby_startup
execute if score GameStarted Game matches 0 run scoreboard players add timer01 Timer 1
execute if score GameStarted Game matches 0 run execute if score timer01 Timer matches 4.. run scoreboard players set timer01 Timer 1

##When GameStarted Game is 0 (Lobby), When player that is ready enters portal he gets unready and teleported down

execute unless score PlayersReady Game = PlayersOnline Game run execute as @a[tag=!recorder,tag=ready_to_start] at @s run execute if block ~ ~ ~ nether_portal run tag @s add remove_ready_to_start
execute unless score PlayersReady Game = PlayersOnline Game run execute as @a[tag=!recorder,tag=ready_to_start] at @s run execute if block ~ ~1 ~ nether_portal run tag @s add remove_ready_to_start
execute unless score PlayersReady Game = PlayersOnline Game run execute as @a[tag=!recorder,tag=ready_to_start] at @s run execute if block ~ ~-1 ~ nether_portal run tag @s add remove_ready_to_start

##Anti Survival gamemode
execute as @a[tag=!recorder,tag=!debug] at @s if entity @s[gamemode=survival] run tellraw @s [{"translate":"core.functions.files.main.6","color":"yellow"},{"translate":"core.functions.files.main.7","color": "red"}]
execute as @a[tag=!recorder,tag=!debug] at @s if entity @s[gamemode=survival] run gamemode adventure @s

 ##Makes the arrow dissapear after 2 sec
execute as @e[tag=!recorder,type=arrow,tag=!decoration,tag=!luki_gun_arrow] at @s run scoreboard players add @s kill_self 1
execute as @e[tag=!recorder,type=arrow,tag=!decoration,tag=!luki_gun_arrow] at @s if score @s kill_self matches 40.. run kill @s

## Makes arrows notpickable
execute as @e[tag=!recorder,type=arrow] at @s run data merge entity @s {pickup:0b}

 ##Makes spawning_armorstand dissapear after 7sec
execute as @e[tag=!recorder,type=armor_stand,tag=spawning_armor_stand] at @s run scoreboard players add @s kill_self 1
execute as @e[tag=!recorder,type=armor_stand,tag=spawning_armor_stand] at @s if score @s kill_self matches 140.. run kill @s

 ##Makes the luki_gun_arrow dissapear after ~0.4 sec and gives biger damage
execute as @e[tag=!recorder,type=arrow,tag=luki_gun_arrow] at @s run data merge entity @s {NoGravity:1b,damage:1.70d,player:0b}
execute as @e[tag=!recorder,type=arrow,tag=luki_gun_arrow] at @s run scoreboard players add @s kill_self 1
execute as @e[tag=!recorder,type=arrow,tag=luki_gun_arrow] at @s if score @s kill_self matches 8.. run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=!recorder,type=arrow,tag=luki_gun_arrow] at @s if score @s kill_self matches 8.. run kill @s

 ##Makes the bullet " small fireball " dissapear after 2 sec
execute as @e[tag=!recorder,type=snowball] at @s run scoreboard players add @s kill_self 1
execute as @e[tag=!recorder,type=snowball] at @s if score @s kill_self matches 40.. run kill @s

 ##Kills the killer bees after 15sec (When death always follow enabled, then make bees slower and if not then normal despawn time)
execute unless score DeathAlwaysFollow Settings matches 1 run execute as @e[tag=!recorder,type=bee,tag=killer_bee] at @s run scoreboard players add @s kill_self 1
execute unless score DeathAlwaysFollow Settings matches 1 run execute as @e[tag=!recorder,type=bee,tag=killer_bee] at @s if score @s kill_self matches 260.. run kill @s
execute if score DeathAlwaysFollow Settings matches 1 run execute as @e[tag=!recorder,type=bee,tag=killer_bee] at @s run scoreboard players add @s kill_self 1
execute if score DeathAlwaysFollow Settings matches 1 run execute as @e[tag=!recorder,type=bee,tag=killer_bee] at @s if score @s kill_self matches 120.. run kill @s

##Corpse falldown system
##Make the corpse not fly but make him teleport to the ground when in the sky and when in ground then tp on ground

execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-47,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -47 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-47,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -47.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-46,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -46 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-46,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -46.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-45,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -45 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-45,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -45.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-44,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -44 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-44,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -44.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-43,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -43 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-43,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -43.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-42,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -42 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-42,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -42.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-41,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -41 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-41,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -41.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-40,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -40 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-40,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -40.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-39,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -39 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-39,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -39.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-38,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -38 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-38,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -38.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-37,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -37 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-37,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -37.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-36,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -36 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-36,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -36.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-35,distance=..0.5] if block ~ ~-1 ~ air unless block ~ ~-1 ~ #slabs run teleport @s ~ -35 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if entity @s[y=-35,distance=..0.5] if block ~ ~-1 ~ #slabs run teleport @s ~ -35.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~ ~ lava run teleport @s ~ ~1 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ air run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ light run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ grass run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ #small_flowers run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ dead_bush run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.25 ~ snow run teleport @s ~ ~-0.25 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ structure_void run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ water run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ #underwater_bonemeals run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ tall_seagrass run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ #fire run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ #trapdoors run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ #banners run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute if block ~ ~-0.5 ~ tall_grass run teleport @s ~ ~-0.5 ~
execute as @e[tag=!recorder,type=item_display,tag=corpse,tag=!in_place] at @s run execute unless block ~ ~-0.01 ~ air unless block ~ ~-0.01 ~ light unless block ~ ~-0.01 ~ structure_void unless block ~ ~-0.01 ~ #small_flowers unless block ~ ~-0.01 ~ grass unless block ~ ~-0.01 ~ dead_bush unless block ~ ~-0.01 ~ water unless block ~ ~-0.01 ~ #underwater_bonemeals unless block ~ ~-0.01 ~ tall_seagrass unless block ~ ~-0.01 ~ #fire unless block ~ ~-0.01 ~ #trapdoors unless block ~ ~-0.01 ~ #banners unless block ~ ~-0.01 ~ tall_grass run tag @s add in_place

##Make the marker that allows random dead body rotation to rotate, rotate himself
execute as @e[tag=!recorder,type=armor_stand,tag=random_rotator,limit=1] at @s run teleport @s ~ ~ ~ ~80.9 0

##When there is debug player give debug info in Debug Scoreboard
execute store result score EntityCount Debug run execute if entity @e[tag=!recorder,type=!player]
execute store result score Villagers Debug run execute if entity @e[tag=!recorder,type=villager]
execute store result score Vindicators Debug run execute if entity @e[tag=!recorder,type=vindicator]
execute store result score Pillagers Debug run execute if entity @e[tag=!recorder,type=pillager]
execute store result score Parrots Debug run execute if entity @e[tag=!recorder,type=parrot]
execute store result score FallingBlocks Debug run execute if entity @e[tag=!recorder,type=falling_block]
execute store result score Ravagers Debug run execute if entity @e[tag=!recorder,type=ravager]
execute store result score _TextDisplay Debug run execute if entity @e[tag=!recorder,type=text_display]
execute store result score _BlockDisplay Debug run execute if entity @e[tag=!recorder,type=block_display]
execute store result score _ItemDisplay Debug run execute if entity @e[tag=!recorder,type=item_display]
execute store result score Items Debug run execute if entity @e[tag=!recorder,type=item]
execute store result score Markers Debug run execute if entity @e[tag=!recorder,type=marker]
execute store result score Armorstands Debug run execute if entity @e[tag=!recorder,type=armor_stand]
execute store result score Zombies Debug run execute if entity @e[tag=!recorder,type=zombie]
execute store result score Skeletons Debug run execute if entity @e[tag=!recorder,type=skeleton]
execute store result score Piglins Debug run execute if entity @e[tag=!recorder,type=piglin]
execute store result score ZombiePiglins Debug run execute if entity @e[tag=!recorder,type=zombified_piglin]


##
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:10}]},tag=!runner,tag=!debug] at @s run effect give @s instant_health 5 200 true
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:10}]},tag=!runner,tag=!debug,tag=!spawning] at @s run effect clear @s fire_resistance
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:10}]},tag=!runner,tag=!debug,tag=!spawning] at @s run effect clear @s resistance
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:10}]},tag=!runner,tag=!debug,tag=!spawning] at @s run effect clear @s regeneration

## Make killer bees nonstop focus on the nearest player
execute as @e[tag=!recorder,type=bee,tag=killer_bee] at @s run attribute @s minecraft:generic.flying_speed base set 2.0
execute as @e[tag=!recorder,type=bee,tag=killer_bee] at @s run data merge entity @s {AngerTime:9999}
execute as @e[tag=!recorder,type=minecraft:bee,tag=killer_bee] at @s run data modify entity @s AngryAt set from entity @p[tag=!recorder,tag=runner] UUID

##Make the Vindicators be angry at the nearest player
execute as @e[tag=!recorder,type=vindicator] at @s run data modify entity @s AngryAt set from entity @p[tag=!recorder,tag=runner] UUID
execute as @e[tag=!recorder,type=vindicator] at @s run execute if entity @a[tag=!recorder,tag=runner,distance=..5] run data merge entity @s {AngerTime:20}

##Portal teleport into the other one
execute if score changed_portal TrapsData matches 0 run execute as @a[tag=!recorder,x=243,y=-44,z=56,distance=..10] at @s if block ~ ~ ~ structure_void if entity @s[y=-47,distance=..3.5] run playsound block.end_portal.spawn record @s ~ ~ ~ 1 2
execute if score changed_portal TrapsData matches 0 run execute as @a[tag=!recorder,x=243,y=-44,z=56,distance=..10] at @s if block ~ ~ ~ structure_void if entity @s[y=-47,distance=..3.5] run particle dust 0.969 0.459 0.122 1.5 229.00 -39.35 64.00 0.6 0.6 0.6 0.03 50
execute if score changed_portal TrapsData matches 0 run execute as @a[tag=!recorder,x=243,y=-44,z=56,distance=..10] at @s if block ~ ~ ~ structure_void if entity @s[y=-47,distance=..3.5] run teleport @s ~-16 -41 ~8 ~-45 ~-90

execute if score changed_portal TrapsData matches 1 run execute as @a[tag=!recorder,x=243,y=-44,z=56,distance=..10] at @s if block ~ ~ ~ structure_void if entity @s[y=-47,distance=..3.5] run playsound block.end_portal.spawn record @s ~ ~ ~ 1 2
execute if score changed_portal TrapsData matches 1 run execute as @a[tag=!recorder,x=243,y=-44,z=56,distance=..10] at @s if block ~ ~ ~ structure_void if entity @s[y=-47,distance=..3.5] run particle dust 0.969 0.459 0.122 1.5 221 -40 57 0.6 0.6 0.6 0.03 50
execute if score changed_portal TrapsData matches 1 run execute as @a[tag=!recorder,x=243,y=-44,z=56,distance=..10] at @s if block ~ ~ ~ structure_void if entity @s[y=-47,distance=..3.5] run teleport @s ~-23 -41 ~ ~-45 ~

##Loop Effects
##execute if score GameStarted Game matches 0 if score EasyParkour Settings matches 0 run effect clear @a slow_falling
execute if score EasyParkour Settings matches 0 run execute as @a[tag=!recorder,tag=!killer,tag=!quicksand,nbt={ActiveEffects:[{Id:8,Amplifier:0b}]}] at @s run execute unless entity @e[tag=!recorder,type=marker,tag=freeze_area,distance=..5] run effect clear @s jump_boost
execute if score EasyParkour Settings matches 0 run execute as @a[tag=!recorder,tag=!killer,tag=!quicksand,nbt={ActiveEffects:[{Id:28,Amplifier:0b}]}] at @s run execute unless entity @e[tag=!recorder,type=marker,tag=freeze_area,distance=..5] run effect clear @s slow_falling
execute if score EasyParkour Settings matches 1 run execute as @a[tag=!recorder,tag=!killer,tag=!quicksand] at @s run execute unless entity @e[tag=!recorder,type=marker,tag=freeze_area,distance=..5] run effect give @s jump_boost infinite 0 true
execute if score EasyParkour Settings matches 2 run execute as @a[tag=!recorder,tag=!killer,tag=!quicksand] at @s run execute unless entity @e[tag=!recorder,type=marker,tag=freeze_area,distance=..5] run effect give @s minecraft:slow_falling infinite 0 true
execute if score EasyParkour Settings matches 2 run execute as @a[tag=!recorder,tag=!killer,tag=!quicksand] at @s run execute unless entity @e[tag=!recorder,type=marker,tag=freeze_area,distance=..5] run effect clear @s jump_boost
execute if score EasyParkour Settings matches 3 run execute as @a[tag=!recorder,tag=!killer,tag=!quicksand] at @s run execute unless entity @e[tag=!recorder,type=marker,tag=freeze_area,distance=..5] run effect give @s jump_boost infinite 0 true
execute if score EasyParkour Settings matches 3 run execute as @a[tag=!recorder,tag=!killer,tag=!quicksand] at @s run execute unless entity @e[tag=!recorder,type=marker,tag=freeze_area,distance=..5] run effect give @s minecraft:slow_falling infinite 0 true

##Execute if warden has in range players, when not then start countdown to kill self 
execute as @e[tag=!recorder,type=warden] at @s run execute unless entity @a[tag=!recorder,distance=..50,tag=!debug] run scoreboard players add @s kill_self 1
execute as @e[tag=!recorder,type=warden] at @s run execute unless entity @a[tag=!recorder,distance=..50,tag=!debug] if score @s kill_self matches 10.. run teleport @s ~ -80 ~
execute as @e[tag=!recorder,type=warden] at @s run execute unless entity @a[tag=!recorder,distance=..50,tag=!debug] if score @s kill_self matches 20.. run kill @s
execute as @e[tag=!recorder,type=warden] at @s if entity @s[y=-80,distance=..10] run kill @s

##### ANTI "PLAYER JOIN MIDGAME" BUG SYSTEM
execute if score GameStarted Game matches 0 unless score _Reload Game matches 1 unless score intro_timer Timer matches 58.. run execute as @a[tag=!recorder,tag=ready_to_start,gamemode=!spectator,tag=!runner,tag=!spectator,tag=!killer,tag=!debug] at @s run tellraw @a [{"translate":"core.functions.files.main.8"},{"selector":"@s"},{"translate":"core.functions.files.main.9"},{"translate":"core.functions.files.main.10","color":"yellow"}]
execute if score GameStarted Game matches 0 unless score _Reload Game matches 1 unless score intro_timer Timer matches 58.. run execute as @a[tag=!recorder,tag=ready_to_start,gamemode=!spectator,tag=!runner,tag=!spectator,tag=!killer,tag=!debug] at @s run function core:files/_lobby_player_reconnect_abs
execute if score GameStarted Game matches 0 unless score _Reload Game matches 1 unless score intro_timer Timer matches 58.. run execute as @a[tag=!recorder,tag=runner,tag=!debug] at @s run tellraw @a [{"translate":"core.functions.files.main.11"},{"selector":"@s"},{"translate":"core.functions.files.main.12"},{"translate":"core.functions.files.main.13","color":"yellow"}]
execute if score GameStarted Game matches 0 unless score _Reload Game matches 1 unless score intro_timer Timer matches 58.. run execute as @a[tag=!recorder,tag=runner,tag=!debug] at @s run function core:files/_lobby_player_reconnect_abs
execute if score GameStarted Game matches 0 unless score _Reload Game matches 1 unless score intro_timer Timer matches 58.. run execute as @a[tag=!recorder,tag=killer,tag=!debug] at @s run tellraw @a [{"translate":"core.functions.files.main.14"},{"selector":"@s"},{"translate":"core.functions.files.main.15"},{"translate":"core.functions.files.main.16","color":"yellow"}]
execute if score GameStarted Game matches 0 unless score _Reload Game matches 1 unless score intro_timer Timer matches 58.. run execute as @a[tag=!recorder,tag=killer,tag=!debug] at @s run function core:files/_lobby_player_reconnect_abs
execute if score GameStarted Game matches 0 unless score _Reload Game matches 1 unless score intro_timer Timer matches 58.. run execute as @a[tag=!recorder,tag=spectator,tag=!debug] at @s run tellraw @a [{"translate":"core.functions.files.main.17"},{"selector":"@s"},{"translate":"core.functions.files.main.18"},{"translate":"core.functions.files.main.19","color":"yellow"}]
execute if score GameStarted Game matches 0 unless score _Reload Game matches 1 unless score intro_timer Timer matches 58.. run execute as @a[tag=!recorder,tag=spectator,tag=!debug] at @s run function core:files/_lobby_player_reconnect_abs
execute if score GameStarted Game matches 0 unless score _Reload Game matches 1 unless score intro_timer Timer matches 58.. run execute as @a[tag=!recorder,tag=death_runner,tag=!debug] at @s run tellraw @a [{"translate":"core.functions.files.main.20"},{"selector":"@s"},{"translate":"core.functions.files.main.21"},{"translate":"core.functions.files.main.22","color":"yellow"}]
execute if score GameStarted Game matches 0 unless score _Reload Game matches 1 unless score intro_timer Timer matches 58.. run execute as @a[tag=!recorder,tag=death_runner,tag=!debug] at @s run function core:files/_lobby_player_reconnect_abs

##When no runners left reload     AI Gamemode / Player Killer Mode
execute if score Gamemode Settings matches 8 if score GameStarted Game matches 1 run execute unless score _Reload Game matches 1 unless entity @a[tag=!recorder,tag=runner] unless entity @a[tag=!recorder,tag=debug] run scoreboard players set Winner= Game 3
execute if score Gamemode Settings matches 8 if score GameStarted Game matches 1 run execute unless score _Reload Game matches 1 unless entity @a[tag=!recorder,tag=runner] unless entity @a[tag=!recorder,tag=debug] run scoreboard players set GameStarted Game 3

execute unless score Gamemode Settings matches 8 if score GameStarted Game matches 1 run execute unless score _Reload Game matches 1 unless entity @a[tag=!recorder,tag=runner] unless entity @a[tag=!recorder,tag=debug] run scoreboard players set Winner= Game 2
execute unless score Gamemode Settings matches 8 if score GameStarted Game matches 1 run execute unless score _Reload Game matches 1 unless entity @a[tag=!recorder,tag=runner] unless entity @a[tag=!recorder,tag=debug] run scoreboard players set GameStarted Game 3

##Debug Function to force end the endgame Cutscene
execute unless score GameStarted Game matches 3 if score ForceWinner= Game matches 0 run scoreboard players set Winner= Game 0
execute unless score GameStarted Game matches 3 if score ForceWinner= Game matches 0 run scoreboard players set GameStarted Game 3

execute unless score GameStarted Game matches 3 if score ForceWinner= Game matches 1 run scoreboard players set Winner= Game 1
execute unless score GameStarted Game matches 3 if score ForceWinner= Game matches 1 run scoreboard players set GameStarted Game 3

execute unless score GameStarted Game matches 3 if score ForceWinner= Game matches 2 run scoreboard players set Winner= Game 2
execute unless score GameStarted Game matches 3 if score ForceWinner= Game matches 2 run scoreboard players set GameStarted Game 3

execute unless score GameStarted Game matches 3 if score ForceWinner= Game matches 3 run scoreboard players set Winner= Game 3
execute unless score GameStarted Game matches 3 if score ForceWinner= Game matches 3 run scoreboard players set GameStarted Game 3


