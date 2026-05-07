##
 # _gamestarted_1.mcfunction
 # 
 #
 # Created by Lifeely.
##

# Minigames 1
forceload remove 29 282 -188 5
# Minigames 2
forceload remove 34 311 388 168
# Deathrun
forceload add 281 -58 27 164

##Nothing particle
execute as @a[tag=nothing_particle,tag=!nothing_particle_a] at @s run tellraw @s {"translate":"core.functions.files._gamestarted_1.1","color": "gold","bold": true}
execute as @a[tag=nothing_particle,tag=!nothing_particle_a] at @s run tag @s add nothing_particle_a
execute as @a[tag=nothing_particle_a,tag=!spectator] at @s run particle happy_villager ~ ~0.1 ~ 0.15 0.05 0.15 1 0 normal

##As players give them scoreboard how long does they live (For the backup removal of the spawning tag)
scoreboard players add @a[tag=!spectator,tag=!recorder,tag=!killer,tag=runner] lived_for 1

##System that makes the spawning of players follow the armorstand and when on ground remove spawning tag
execute as @a[tag=!recorder,tag=spawning] at @s run ride @s mount @e[tag=!recorder,tag=spawning_armor_stand,limit=1,sort=random,distance=..2.5]
execute as @a[tag=!recorder,tag=spawning] at @s run execute if entity @e[tag=!recorder,type=armor_stand,tag=spawning_armor_stand,nbt={OnGround:1b},distance=..2] run ride @s dismount
execute as @a[tag=!recorder,tag=spawning] at @s run execute if entity @e[tag=!recorder,type=armor_stand,tag=spawning_armor_stand,nbt={OnGround:1b},distance=..2] run tag @s remove spawning
##Backup spawning tag removal after ~5 Seconds
execute as @a[tag=!recorder,tag=spawning,tag=!spectator] at @s run execute if score @s lived_for matches 100.. run tag @s remove spawning

##Godmode for spawning tag players
effect give @a[tag=spawning] resistance 6 200 true
effect give @a[tag=spawning] instant_health 6 200 true
effect clear @a[tag=spawning] levitation
effect clear @a[tag=spawning] slow_falling

##Healing Campfires on checkpoints
execute as @a[tag=runner] at @s run execute if block ~ ~-3 ~ budding_amethyst run effect give @s regeneration 3 4 true
execute as @a[tag=runner] at @s run execute if block ~ ~-3 ~ bamboo_mosaic run effect give @s regeneration 3 4 true

##Infinite healing for people that are currently spawning (Inside the checkpoints to prevent the falldamage from the checkpoint)
#Checkpoint 0
execute as @a[x=42,y=-34,z=-3,distance=..6,tag=!recorder,tag=!spectator] at @s run effect give @s resistance 8 200 true
execute as @a[x=42,y=-34,z=-3,distance=..6,tag=!recorder,tag=!spectator] at @s run effect give @s regeneration 8 200 true
#Checkpoint 1
execute as @a[x=145,y=-24,z=68,distance=..6,tag=!recorder,tag=!spectator] at @s run effect give @s resistance 8 200 true
execute as @a[x=145,y=-24,z=68,distance=..6,tag=!recorder,tag=!spectator] at @s run effect give @s regeneration 8 200 true
#Checkpoint 2
execute as @a[x=158,y=-15,z=109,distance=..7,tag=!recorder,tag=!spectator] at @s run effect give @s resistance 8 200 true
execute as @a[x=158,y=-15,z=109,distance=..7,tag=!recorder,tag=!spectator] at @s run effect give @s regeneration 8 200 true

##Show players their lives
function systems:_lives_show_hearts

##Make vindicators not atack the death 
team join death @e[tag=!recorder,type=!player,team=!death]

##When AI Killer enabled then spawn killer
execute if score Gamemode Settings matches 8 run scoreboard players set AI_Killer Game 1
execute if score AI_Killer Game matches 1 run function core:files/_ai_killer_brain

##Anti logout player when midgame
execute as @a[tag=!recorder,tag=!debug,tag=!spectator] at @s run execute if score @s player_logout matches 1.. run title @s times 5 140 5
execute as @a[tag=!recorder,tag=!debug,tag=!spectator] at @s run execute if score @s player_logout matches 1.. run title @s title {"translate":"core.functions.files._gamestarted_1.2","color": "aqua","bold": false}
execute as @a[tag=!recorder,tag=!debug,tag=!spectator] at @s run execute if score @s player_logout matches 1.. run title @s subtitle {"translate":"core.functions.files._gamestarted_1.3","color": "white","bold": false}
execute as @a[tag=!recorder,tag=!debug,tag=!spectator] at @s run execute if score @s player_logout matches 1.. run function core:files/_player_reset_tags
execute as @a[tag=!recorder,tag=!debug,tag=!spectator] at @s run execute if score @s player_logout matches 1.. run tag @s add spectator

##When SuperPowers Settings is enabled run core/function function of powerups in settings
execute if score SuperPowers Settings matches 1 run function powerups:_core_powers

bossbar set end_game_timer visible true

##When GameStarted Game is 1, make that when players have powdersnow inside of their head, kill instant
execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~ ~ powder_snow if block ~ ~1 ~ powder_snow run kill @s

effect give @e[tag=!recorder,type=wandering_trader,tag=!ai_killer] invisibility infinite 255 true

##Make that when in lobby make bossbar invisible and when in game visible
bossbar set end_game_timer visible true

##Update the bossbar
execute store result bossbar end_game_timer value run scoreboard players get time_left Game

##Add kill_self when player near freeze area
execute as @a[tag=!recorder,tag=runner] at @s run execute unless entity @e[tag=!recorder,type=marker,tag=freeze_area,distance=..3.5] run scoreboard players reset @s kill_self
execute if score loop_19 loop_trap matches 1 if score freeze_wind_timer Timer matches 1.. run execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,type=marker,tag=freeze_area,distance=..3.5] run scoreboard players add @s kill_self 1

##The freeze effect for players that have kill_self 
execute if score loop_19 loop_trap matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s kill_self matches 1..10 run effect give @s slowness 2 1 true
execute if score loop_19 loop_trap matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s kill_self matches 10..20 run effect give @s slowness 2 2 true
execute if score loop_19 loop_trap matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s kill_self matches 20..30 run effect give @s slowness 3 3 true
execute if score loop_19 loop_trap matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s kill_self matches 30..40 run effect give @s slowness 4 5 true
execute if score loop_19 loop_trap matches 1 run execute as @a[tag=!recorder,tag=runner] at @s run execute if score @s kill_self matches 40.. run function traps:files/_player_freeze

 ##Kills the gorge vindicators bees after 15sec & plays some Details sounds
execute as @e[tag=!recorder,tag=gorge] at @s run scoreboard players add @s kill_self 1
execute as @e[tag=!recorder,tag=gorge] at @s if score @s kill_self matches 420.. run teleport @s ~ ~-0.125 ~ facing ~ ~-5 ~
execute as @e[tag=!recorder,tag=gorge] at @s if score @s kill_self matches 500.. run kill @s
execute as @e[tag=!recorder,tag=gorge] at @s if score @s kill_self matches 420.. run particle block snow_block ~ ~1 ~ 0.25 0.5 0.25 0 2 force
execute as @e[tag=!recorder,tag=gorge] at @s if score @s kill_self matches 420 run playsound entity.vindicator.celebrate record @a ~ ~ ~ 1 1.4
execute as @e[tag=!recorder,tag=gorge] at @s if score @s kill_self matches 420.. run data merge entity @s {Silent:1b}

## Make the Gary dissapear after certain time
execute as @e[tag=!recorder,tag=small_gary] at @s run scoreboard players add @s kill_self 1
execute as @e[tag=!recorder,tag=small_gary] at @s if score @s kill_self matches 250.. run teleport @s ~ ~-0.125 ~ facing ~ ~-5 ~
execute as @e[tag=!recorder,tag=small_gary] at @s if score @s kill_self matches 250 run playsound entity.vindicator.celebrate record @a ~ ~ ~ 1 1.4
execute as @e[tag=!recorder,tag=small_gary] at @s if score @s kill_self matches 250.. run data merge entity @s {Silent:1b}
execute as @e[tag=!recorder,tag=small_gary] at @s if score @s kill_self matches 400.. run kill @s

## Make the Vex trio dissapear after certain time
execute as @e[tag=!recorder,tag=vex_trio] at @s run scoreboard players add @s kill_self 1
execute as @e[tag=!recorder,tag=vex_trio] at @s if score @s kill_self matches 450.. run teleport @s ~ ~-0.225 ~ facing ~ ~-5 ~
execute as @e[tag=!recorder,tag=vex_trio] at @s if score @s kill_self matches 450 run playsound entity.vindicator.celebrate record @a ~ ~ ~ 1 1.4
execute as @e[tag=!recorder,tag=vex_trio] at @s if score @s kill_self matches 450.. run data merge entity @s {Silent:1b}
execute as @e[tag=!recorder,tag=vex_trio] at @s if score @s kill_self matches 550.. run kill @s


##If player inside of an Spike (pointed_dripstone tip) kill them
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~ ~ pointed_dripstone[thickness=tip,vertical_direction=up] run playsound block.chain.place record @a ~ ~-0.5 ~ 1.5
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~ ~ pointed_dripstone[thickness=tip,vertical_direction=up] run particle block redstone_block ~ ~ ~ 0.1 0.1 0.1 1 5
execute as @a[tag=!recorder,tag=runner] at @s if block ~ ~ ~ pointed_dripstone[thickness=tip,vertical_direction=up] run kill @s

##Kill all experience orbs
execute as @e[tag=!recorder,type=experience_orb] at @s run kill @s

##In the trap warm welcome 01 make the arrow leave block particles on the ground
execute as @e[tag=!recorder,type=spectral_arrow,tag=exit_arrow] at @s unless block ~ ~-3 ~ white_concrete run particle block cobblestone ~ ~-1.49 ~ 1 0 1 0 7 normal
execute as @e[tag=!recorder,type=spectral_arrow,tag=exit_arrow] at @s if block ~ ~-3 ~ white_concrete run particle block white_concrete ~ ~-1.49 ~ 1 0 1 0 7 normal

## Make an meteorite falling trail && Falling sound
execute as @e[tag=!recorder,type=fireball] at @s run particle large_smoke ~ ~ ~ 0.2 0.2 0.2 0.1 4 force
execute as @e[tag=!recorder,type=fireball,tag=meteorite] at @s run playsound block.lodestone.fall record @a ~ ~ ~ 2 1.5

## As ice spikes make particles following them
execute as @e[tag=!recorder,type=falling_block,nbt={BlockState:{Name:"minecraft:pointed_dripstone"},Time:1}] at @s run particle spit ~ ~0.3 ~ 0.1 0.1 0.1 0 2 normal

## Make the mimic face nearest player
execute as @e[tag=!recorder,tag=mimic] at @s run teleport @s ~ ~ ~ facing entity @p[tag=!recorder,distance=..10,tag=runner]

##Execute as @e[tag=!recorder,type=spectral_arrow] if on ground >> destory self
execute as @e[tag=!recorder,type=spectral_arrow] at @s if entity @s[nbt={inGround:1b}] run kill @s

##Teleport @a[tag=!recorder,tag=spectral_backwards] into the arrow
execute as @e[tag=!recorder,tag=spectral_backwards] at @s run teleport @s @e[tag=!recorder,type=spectral_arrow,limit=1]

##As @a that are in range of first trap and in range of the spectral arrow give spectral backwards tag and if spectral_arrow is gone, remove that tag
execute as @a[tag=!recorder,tag=runner,tag=!debug] at @s if entity @s[x=57,y=-38,z=14,distance=..9] if entity @e[tag=!recorder,type=spectral_arrow,distance=..3.75] run tag @s add spectral_backwards
execute as @a[tag=!recorder,tag=runner,tag=!debug,tag=spectral_backwards] at @s unless entity @e[tag=!recorder,type=spectral_arrow,distance=..4.75] run tag @s remove spectral_backwards


##Quicksand trap nonstop until player dies
execute as @a[tag=!recorder,tag=runner,tag=quicksand] at @s run teleport @s ~ ~-0.333 ~
execute as @a[tag=!recorder,tag=runner,tag=quicksand] at @s run particle block sand ~ ~0.5 ~ 0.25 0.25 0.25 0 15 normal 
execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~ ~ suspicious_sand if block ~ ~1 ~ suspicious_sand if block ~ ~2.5 ~ suspicious_sand run tag @s remove quicksand
execute as @a[tag=!recorder,tag=runner] at @s run execute if block ~ ~ ~ suspicious_sand if block ~ ~1 ~ suspicious_sand if block ~ ~2.5 ~ suspicious_sand run kill @s

##When player has absorbtion effect then give them regeneration and remove absorbtion (Healt bug for totem of undying)
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:22}]}] at @s run effect give @s instant_health 2 200 true
execute as @a[tag=!recorder,nbt={ActiveEffects:[{Id:22}]}] at @s run effect clear @s absorption

##As spectator play particle behind them
execute as @a[tag=!recorder,tag=spectator,gamemode=spectator] at @s unless entity @a[tag=!recorder,distance=0.6..1.75,tag=runner] unless entity @a[tag=!recorder,distance=0.6..2.75,tag=killer] run particle dust 0.561 0.055 0.855 1 ~ ~2.2 ~ 0 0 0 0 2 normal

##Portal Particles idle
particle dust 0.969 0.459 0.122 1.1 244.00 -49.56 56.02 0.5 0.1 1 0 20 normal
particle dust 0.106 0.271 1 1.1 244.00 -41.41 56.01 0.5 0.1 1 0 20 normal

##When GameStarted Game matches 1 and the time is not over keep on removing time from the timer
execute unless score time_left Game matches ..0 run scoreboard players remove time_left Game 1

##When new player joins midgame, and he does not have runner/killer/spectator tags, then give them info that the game has started and that he is spectator now
execute as @a[tag=!runner,tag=!spectator,tag=!killer,tag=!debug,tag=!recorder] at @s run title @s times 5 50 5
execute as @a[tag=!runner,tag=!spectator,tag=!killer,tag=!debug,tag=!recorder] at @s run title @s title {"translate":"core.functions.files._gamestarted_1.4","color": "#2d92ff","bold": true}
execute as @a[tag=!runner,tag=!spectator,tag=!killer,tag=!debug,tag=!recorder] at @s run title @s subtitle {"translate":"core.functions.files._gamestarted_1.5","color": "yellow","bold": true}
execute as @a[tag=!runner,tag=!spectator,tag=!killer,tag=!debug,tag=!recorder] at @s run tp @s @r[tag=runner]
execute as @a[tag=!runner,tag=!spectator,tag=!killer,tag=!debug,tag=!recorder] at @s run tag @s add spectator

##When game started, antiwater/lava system
execute as @a[tag=!recorder,tag=runner,tag=!viking_player] at @s run execute if block ~ ~0.1 ~ water run function traps:files/_player_freeze
execute as @a[tag=!recorder,tag=runner,tag=!viking_player] at @s run execute if block ~ ~0.1 ~ #underwater_bonemeals run function traps:files/_player_freeze
execute as @a[tag=!recorder,tag=runner,tag=!viking_player] at @s run execute if block ~ ~0.1 ~ tall_seagrass run function traps:files/_player_freeze
execute as @a[tag=!recorder,tag=runner,tag=!viking_player] at @s run execute if block ~ ~0.1 ~ lava run function traps:files/_player_explode

##Player that has spawning tag, gets health and resistance for the spawning time
execute as @a[tag=!recorder,tag=spawning] at @s run effect give @s instant_health 2 200 true
execute as @a[tag=!recorder,tag=spawning] at @s run effect give @s resistance 2 200 true
execute as @a[tag=!recorder,tag=spawning] at @s run function core:files/_player_reset_tags

##When trap 34 disabled, remove from everyone that have viking_player tag the anti-waterkill tag
execute unless score loop_34 loop_trap matches 1 run tag @a remove viking_player

gamemode adventure @a[tag=!recorder,tag=!spectator,tag=!debug]

##Some small additions to the corpses, make them bubble underwater
scoreboard players add corpse_bubble_timer Timer 1
execute if score corpse_bubble_timer Timer matches 5.. run scoreboard players set corpse_bubble_timer Timer 1
execute if score corpse_bubble_timer Timer matches 1 run execute as @e[tag=!recorder,type=item_display,tag=corpse] at @s run execute if block ~ ~ ~ water run particle bubble_column_up ^ ^ ^-0.3 0 0 0 0.1 1 normal
execute if score corpse_bubble_timer Timer matches 1 run execute as @e[tag=!recorder,type=item_display,tag=corpse] at @s run execute if block ~ ~ ~ #underwater_bonemeals run particle bubble_column_up ^ ^ ^-0.3 0 0 0 0.1 1 normal

##Make Gorge 16 trap while falling down leave particles
execute as @e[tag=!recorder,tag=gorge,nbt={OnGround:1b},tag=!OnGround] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=!recorder,tag=gorge,nbt={OnGround:1b}] at @s run tag @s add OnGround
execute as @e[tag=!recorder,tag=!OnGround,tag=gorge] at @s run particle campfire_cosy_smoke ~ ~3 ~ 0 0.5 0 0 3 force

##Automated start trap when sound sensor activated.
execute if block 65 -40 75 sculk_shrieker[shrieking=true] run function traps:files/11_warden_farts
execute if block 65 -40 75 sculk_shrieker[shrieking=true] run fill 75 -37 82 74 -37 83 air replace minecraft:warped_wall_sign

##When in settings instant death enabled, when time left hits 0, all runners gets their lives to 0 and gets killed once so that normal death happends
execute if score InstantDeathAfterTimeExpires Settings matches 1 if score time_left Game matches ..0 run execute as @a[tag=!recorder,tag=runner] at @s run scoreboard players set @s Lives -1

##When time_left Game matches 0 and instant death disabled then spawn death and DeathAlwaysFollow is not enabled spawn arena cleaner
execute unless score DeathAlwaysFollow Settings matches 1 unless entity @a[tag=!recorder,tag=debug] if score InstantDeathAfterTimeExpires Settings matches 0 if score time_left Game matches ..2200 unless score EndGameTime Game matches 1 run scoreboard players set EndGameTime Game 1
execute if score DeathAlwaysFollow Settings matches 1 unless entity @a[tag=!recorder,tag=debug] if score InstantDeathAfterTimeExpires Settings matches 0 if score time_left Game matches ..0 unless score EndGameTime Game matches 1 run scoreboard players set EndGameTime Game 1


##Give players saturation
effect give @a[tag=!recorder,nbt=!{ActiveEffects:[{Id:23}]},tag=!debug] saturation infinite 255 true

##Show the stamina level to player
execute if score Stamina Settings matches 1 run function systems:_stamina_show_level


##As players, make them count amount of crossbows inside their inventory, and when more thant one then remove all
execute as @a[tag=!recorder,tag=!spectator] at @s run execute store result score @s crossbow_count run clear @s crossbow{Unbreakable:1b} 0
execute as @a[tag=!recorder,tag=!spectator] at @s run execute if score @s crossbow_count matches 2.. run clear @s crossbow

##When no killer in game, reset unless ai mode enabled
execute unless score Gamemode Settings matches 8 unless entity @a[tag=!recorder,tag=killer] unless entity @a[tag=!recorder,tag=debug] run scoreboard players set Winner= Game 1
execute unless score Gamemode Settings matches 8 unless entity @a[tag=!recorder,tag=killer] unless entity @a[tag=!recorder,tag=debug] run scoreboard players set GameStarted Game 3

##Save as players their Position in the Deathrun
execute unless score Gamemode Settings matches 8 as @a[tag=!recorder,tag=!spectator] at @s run execute store result score @s PlayerPosition run scoreboard players get @e[tag=!recorder,type=marker,tag=the_end_death_path,limit=1,sort=nearest] path_number_count

##For the AI Killer mode as players save their Position in the Deathrun In front of what trap are they.
execute if score Gamemode Settings matches 8 as @a[tag=!recorder,tag=!spectator] at @s run execute store result score @s PlayerPosition run scoreboard players get @e[tag=!recorder,type=marker,tag=traps_start,limit=1,sort=nearest] path_number_count

##When player out of lives, change to spectator and remove runner tag

execute as @a[tag=!recorder,tag=!debug,tag=!spectator] at @s run execute if score @s Lives matches ..-1 run title @s times 5 50 5
execute as @a[tag=!recorder,tag=!debug,tag=!spectator] at @s run execute if score @s Lives matches ..-1 run title @s title {"translate":"core.functions.files._gamestarted_1.6","color": "#f50c0c","bold": true}
execute as @a[tag=!recorder,tag=!debug,tag=!spectator] at @s run execute if score @s Lives matches ..-1 run title @s title {"translate":"core.functions.files._gamestarted_1.7","color": "aqua"}
execute as @a[tag=!recorder,tag=!debug,tag=!spectator] at @s run execute if score @s Lives matches ..-1 run tag @s add spectator
execute as @a[tag=!recorder,tag=spectator,tag=!debug,tag=furthest_runner] at @s run tag @s remove furthest_runner
execute as @a[tag=!recorder,tag=spectator,tag=!debug,tag=runner] at @s run tag @s remove runner
execute as @a[tag=!recorder,tag=spectator,tag=!debug,tag=killer] at @s run tag @s remove killer
execute as @a[tag=!recorder,tag=spectator,tag=!debug] at @s run gamemode spectator


##Change system to Gamestarted 2 when runner near portal              #######################       deleted detect if Minigame activated!
execute unless score Minigames Settings matches 0 unless entity @a[tag=!recorder,tag=death_runner] run execute as @a[tag=!recorder,tag=runner,gamemode=!spectator] at @s run execute if entity @e[tag=!recorder,type=marker,distance=..4,tag=teleport_through_portal] run tag @s add death_runner
execute unless score _Reload Game matches 1 if score Minigames Settings matches 0 run execute unless entity @a[tag=!recorder,tag=death_runner] run execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,type=marker,distance=..4,tag=teleport_through_portal] run scoreboard players set Winner= Game 1
execute unless score _Reload Game matches 1 if score Minigames Settings matches 0 run execute unless entity @a[tag=!recorder,tag=death_runner] run execute as @a[tag=!recorder,tag=runner] at @s run execute if entity @e[tag=!recorder,type=marker,distance=..4,tag=teleport_through_portal] run scoreboard players set GameStarted Game 3
execute if entity @a[tag=!recorder,tag=death_runner] run title @a times 5 20 5
execute if entity @a[tag=!recorder,tag=death_runner] run title @a title {"translate":"core.functions.files._gamestarted_1.8"}
execute if entity @a[tag=!recorder,tag=death_runner] run scoreboard players set GameStarted Game 2

