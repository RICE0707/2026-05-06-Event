##
 # reset.mcfunction
 # files
 #
 # Created by Lifeely.
##
execute as @e[tag=!recorder,type=parrot] at @s run data merge entity @s {Silent:1b}
kill @e[tag=power_jumper_fireball]
kill @e[tag=switch_tp_armorstand]
kill @e[tag=!recorder,type=parrot]
stopsound @a record music_disc.blocks
stopsound @a record music_disc.otherside
##Restart Functions
function core:files/button_reset
function core:files/structure_load

time set 1000

##Teleport Players back to spawn
gamemode adventure @a[tag=!recorder,tag=!debug]
execute as @a[tag=!recorder,tag=!debug] at @s run playsound entity.wandering_trader.yes record @s ~ ~ ~ 10 1
execute as @a[tag=!recorder,tag=!debug] at @s run attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
spreadplayers 1203 -44 0 20 under -23 false @e[tag=!recorder,type=parrot]
##Collect how many times the game reloaded
scoreboard players add Reloaded= data_collect 1

spawnpoint @a[tag=!recorder,tag=!debug] 1199 -28 -74 -9

##Add teams
team add player
team add death
team add minigame_killers
team add minigame_runners
team add no_pvp
team add rlgl
team modify minigame_killers collisionRule always
team modify minigame_killers friendlyFire false 
team modify minigame_killers seeFriendlyInvisibles true 
team modify minigame_killers displayName {"translate":"core.functions.files.reset.1","color":"red"}
team modify minigame_killers nametagVisibility hideForOtherTeams

team modify minigame_runners collisionRule always
team modify minigame_runners friendlyFire false 
team modify minigame_runners seeFriendlyInvisibles true 
team modify minigame_runners displayName {"translate":"core.functions.files.reset.2","color":"#6dff41"}
team modify minigame_runners nametagVisibility hideForOtherTeams

team modify no_pvp collisionRule never
team modify no_pvp friendlyFire false 
team modify no_pvp seeFriendlyInvisibles true 
team modify no_pvp nametagVisibility never

team modify rlgl collisionRule always
team modify rlgl friendlyFire false 
team modify rlgl seeFriendlyInvisibles true 
team modify rlgl nametagVisibility never

team modify death friendlyFire false
team modify death nametagVisibility hideForOtherTeams
team modify death collisionRule always

team modify player seeFriendlyInvisibles false

team join player @a
team join death @e[tag=!recorder,type=!player]

##Kill and respawn entitys
kill @e[tag=!recorder,tag=mimic]
kill @e[tag=!recorder,tag=gorge_ravenger]
kill @e[tag=!recorder,tag=death_hitboxes]
kill @e[tag=!recorder,tag=WANDERING_DEATH]
kill @e[tag=!recorder,tag=ai_killer]
kill @e[tag=!recorder,tag=bomb_hat]
kill @e[tag=!recorder,tag=wrong_gate]
kill @e[tag=!recorder,tag=prisoner]
kill @e[tag=!recorder,tag=prisoner_fireball]
kill @e[tag=!recorder,tag=flame_07]
kill @e[tag=!recorder,tag=gorge_the_god]
kill @e[tag=!recorder,tag=gorge_the_god_ice]
kill @e[tag=!recorder,tag=wizard]
kill @e[tag=!recorder,tag=wizard_cloud]
kill @e[tag=!recorder,tag=push_player]
kill @e[tag=!recorder,tag=ramming_goat]
kill @e[tag=!recorder,tag=frog_tonge]
kill @e[tag=!recorder,type=bee]
kill @e[tag=!recorder,tag=pirates]
kill @e[tag=!recorder,type=vindicator]
kill @e[tag=!recorder,tag=nether_army]
kill @e[tag=!recorder,tag=snow_shovel]
kill @e[tag=!recorder,tag=falling_bomb]
kill @e[tag=!recorder,tag=bomb_plane_dropped]
kill @e[tag=!recorder,tag=bomb_plane]
kill @e[tag=!recorder,tag=corpse]
kill @e[tag=!recorder,tag=random_rotator]
kill @e[tag=!recorder,tag=tnt_run_blockbreaker]
kill @e[tag=!recorder,tag=rlgl_raid]
kill @e[tag=!recorder,tag=_crossy]

##Setblocks
setblock 197 -40 135 minecraft:polished_blackstone_button[face=floor,facing=south,powered=false]

##Remove all tags from everyone on the server
tag @a remove ready_to_start
tag @a remove titled_ready
tag @a[tag=!recorder,tag=!debug] remove killer
tag @a[tag=!recorder,tag=!debug] remove runner
tag @a remove spectral_backwards
tag @a remove checkpoint1_player
tag @a remove checkpoint2_player
tag @a remove checkpoint3_player
tag @a remove has_bomb_hat
tag @a remove change_bomb_hat
tag @a remove teleport_cell
tag @a remove swamp_toilet
tag @a remove frog_eaten
tag @a remove quicksand
tag @a remove spectator
tag @a remove bomb_hat_text
tag @a remove remove_ready_to_start
tag @a remove blue_team
tag @a remove red_team
tag @a remove started
tag @a remove has_block
tag @a remove place
tag @a remove out_of_lives
tag @a[tag=!recorder,tag=!debug] remove death_runner
tag @a[tag=!recorder,tag=!debug] remove minigame_spectator_runner
tag @a[tag=!recorder,tag=!debug] remove minigame_spectator_killer
tag @a remove luki_gunner
tag @a remove snow_sweeped
tag @a remove viking_player
tag @a remove viking_01
tag @a remove viking_02
tag @a remove viking_03
tag @a remove viking_04
tag @a remove viking_05
tag @a remove viking_06
tag @a remove prison_die
tag @a remove killed_by_blades
tag @a remove selected_killer
tag @a remove selected_runner
tag @a remove selected_nothing
tag @a remove furthest_runner
tag @a remove eye_target
tag @a remove godmode_4sec
tag @a remove spawning
tag @a remove powerup_enabled
tag @a remove power_jumper
tag @a remove primal_switch
tag @a remove switch_target
tag @a remove once_cleared
tag @a remove lighting_died
tag @a remove tagswitch_1
tag @a remove tagswitch_2+
tag @a remove tagswitch_3+
tag @a remove tagswitch_2-
tag @a remove tagswitch_3-
tag @a remove tagswitch_4
tag @a remove tagswitch_5
tag @a remove tagswitch_6
tag @a remove tagswitch_7
tag @a remove tagswitch_8
tag @a remove tagswitch_9
tag @a remove tagswitch_10_1
tag @a remove tagswitch_10_2
tag @a remove tagswitch_10_3
tag @a remove tagswitch_10_4
tag @a remove tagswitch_10_5
tag @a remove tagswitch_10_6
tag @a remove tagswitch_11
tag @a remove tagswitch_12
tag @a remove tagswitch_13
tag @a remove tagswitch_14
tag @a remove tagswitch_1_a
tag @a remove tagswitch_2_a+
tag @a remove tagswitch_3_a+
tag @a remove tagswitch_2_a-
tag @a remove tagswitch_3_a-
tag @a remove tagswitch_4_a
tag @a remove tagswitch_5_a
tag @a remove tagswitch_5_1_a
tag @a remove tagswitch_6_a
tag @a remove tagswitch_7_a
tag @a remove tagswitch_8_a
tag @a remove tagswitch_9_a
tag @a remove tagswitch_10_1_a
tag @a remove tagswitch_10_2_a
tag @a remove tagswitch_10_3_a
tag @a remove tagswitch_10_4_a
tag @a remove tagswitch_10_5_a
tag @a remove tagswitch_10_6_a
tag @a remove tagswitch_11_a
tag @a remove tagswitch_12_a
tag @a remove tagswitch_13_a
tag @a remove tagswitch_14_a
tag @a remove live_block_gone
tag @a remove on_k_no_jumping
tag @a remove on_k_slowdown
tag @a remove on_k_small_gary
tag @a remove on_k_spinning_runners
tag @a remove on_k_vex_trio
tag @a remove on_r_invisibility
tag @a remove on_r_speed_boost
tag @a remove on_r_trapper_blinder
tag @a remove on_r_spinning_killers
tag @a remove on_r_power_jump
tag @a remove on_r_portable_switch
tag @a remove powerup_activated
tag @a remove nothing_particle
tag @a remove nothing_particle_a

stopsound @a record music_disc.mellohi

##Reset all timers/scoreboards
scoreboard objectives remove anti_freeze_tnt_run_walk
scoreboard objectives remove anti_freeze_tnt_run_sprint
scoreboard objectives remove player_logout
scoreboard objectives remove AI_Killer_Path_POS.X
scoreboard objectives remove AI_Killer_Path_POS.Y
scoreboard objectives remove AI_Killer_Path_POS.Z
scoreboard objectives remove trap_activated
scoreboard objectives remove _minigame_tnt_run
scoreboard objectives remove DisableJump
scoreboard objectives remove ParrotMinigame
scoreboard objectives remove refill_ammo
scoreboard objectives remove arrow_count
scoreboard objectives remove wooden_sword_count
scoreboard objectives remove leather_helmet_count
scoreboard objectives remove leather_chestplate_count
scoreboard objectives remove leather_leggings_count
scoreboard objectives remove diamond_pickaxe_count
scoreboard objectives remove Spawned
scoreboard objectives remove shield_count
scoreboard objectives remove powerup_carrot_stick
scoreboard objectives remove lived_for
scoreboard objectives add lived_for dummy
scoreboard objectives add powerup_carrot_stick used:carrot_on_a_stick
scoreboard objectives add shield_count dummy
scoreboard objectives add Spawned dummy
scoreboard objectives add arrow_count dummy
scoreboard objectives add wooden_sword_count dummy
scoreboard objectives add leather_helmet_count dummy
scoreboard objectives add leather_chestplate_count dummy
scoreboard objectives add leather_leggings_count dummy
scoreboard objectives add diamond_pickaxe_count dummy
scoreboard objectives add refill_ammo custom:open_barrel
scoreboard objectives add ParrotMinigame dummy
scoreboard objectives add DisableJump custom:jump
scoreboard objectives add anti_freeze_tnt_run_walk custom:walk_one_cm
scoreboard objectives add anti_freeze_tnt_run_sprint custom:sprint_one_cm
scoreboard objectives add player_logout custom:leave_game
scoreboard objectives add trap_activated dummy
scoreboard objectives add AI_Killer_Path_POS.X dummy
scoreboard objectives add AI_Killer_Path_POS.Y dummy
scoreboard objectives add AI_Killer_Path_POS.Z dummy
scoreboard objectives add _minigame_tnt_run dummy
scoreboard objectives remove anti_speedrun_jump
scoreboard objectives add anti_speedrun_jump minecraft.custom:jump
scoreboard objectives remove anti_speedrun
scoreboard objectives add anti_speedrun dummy
scoreboard objectives remove anti_speedrun_sprint
scoreboard objectives add anti_speedrun_sprint minecraft.custom:sprint_one_cm
scoreboard objectives remove kill_self
scoreboard objectives add kill_self dummy
scoreboard objectives remove crossbow_count
scoreboard objectives add crossbow_count dummy
scoreboard objectives remove loop_trap
scoreboard objectives add loop_trap dummy
scoreboard objectives remove Timer
scoreboard objectives add Timer dummy
scoreboard objectives remove Deaths
scoreboard objectives add Deaths deathCount
scoreboard objectives remove random_rotator
scoreboard objectives add random_rotator dummy
scoreboard objectives setdisplay list HP
scoreboard objectives setdisplay belowname Lives
execute unless entity @a[tag=!recorder,tag=debug] run scoreboard players set GameStarted Game 0
scoreboard players set lobby_3_in_line Game 0
scoreboard players set AI_Killer Game 0
scoreboard players set time_left Game 0
scoreboard players set CurrentPointNUM WanderingDeath 0
scoreboard players set EndGameTime Game 0 
scoreboard players set changed_portal TrapsData 0
scoreboard players set @a Lives 0
scoreboard players reset @a bomb_backpack_damagefromplayer
scoreboard players set @a PlayerPosition 1
scoreboard players set @a[tag=!recorder,tag=debug] PlayerPosition 999
scoreboard players set _Reload Game 0
scoreboard players set MinigameSelected Game 0
scoreboard players set SpikeLogs Timer 0
scoreboard players set NextPath.X AI_Killer 0
scoreboard players set NextPath.Y AI_Killer 0
scoreboard players set NextPath.Z AI_Killer 0
scoreboard players set CurrentPointNUM AI_Killer 0
scoreboard players set Furthest_Player AI_Killer 1
scoreboard players set cooldown_disappear _minigame_simon_says 0
scoreboard players set difficulty _minigame_simon_says 90
scoreboard players set cooldown_next _minigame_simon_says 40
scoreboard players set MinigameFinished Game 0
scoreboard players set on_k_no_jumping Powerups 0
scoreboard players set on_k_slowdown Powerups 0
scoreboard players reset ForceWinner= Game
scoreboard players set on_r_trapper_blinder Powerups 0
scoreboard players set on_r_spinning_killers Powerups 0
scoreboard players set on_r_speed_boost Powerups 0
scoreboard players set on_r_power_jump Powerups 0
scoreboard players set on_r_portable_switch Powerups 0
scoreboard players set on_r_invisibility Powerups 0
scoreboard players set on_k_vex_trio Powerups 0
scoreboard players set on_k_spinning_runners Powerups 0
scoreboard players set on_k_small_gary Powerups 0
scoreboard players set on_k_slowdown Powerups 0
scoreboard players set on_k_no_jumping Powerups 0


bossbar set minecraft:end_game_timer visible false
bossbar set minecraft:end_game_timer players @a
bossbar set minecraft:rlgl_light visible false
bossbar set minecraft:rlgl_light players @a

xp set @a 0 points
xp set @a 0 levels
execute as @a at @s run attribute @s generic.max_health base set 20
execute as @a at @s run attribute @s generic.attack_damage base set 1
execute as @a at @s run attribute @s generic.attack_speed base set 4
execute as @a at @s run function powerups:_clear_powerup

##Reset effects
effect clear @a

clear @a totem_of_undying
clear @a crossbow
clear @a leather_boots
clear @a leather_chestplate
clear @a leather_leggings
clear @a wooden_sword
clear @a arrow
clear @a diamond_pickaxe
clear @a pufferfish{CustomModelData:304}
clear @a carrot_on_a_stick
clear @a stick

title @a actionbar {"translate":"wtem.empty"}

effect give @a regeneration 5 200 true
gamemode creative @a[tag=!recorder,tag=debug]

execute as @e[tag=!recorder,tag=pointshop_item] at @s run teleport @s ~ -27.4 ~
spreadplayers 1199.5 -74.5 0 2 under -27 false @a[tag=!recorder,tag=!debug]

##Title reset
title @a title {"translate":"core.functions.files.reset.4"}
title @a subtitle {"translate":"wtem.empty"}
title @a times 0 0 10
execute as @a at @s run playsound ui.toast.out record @s ~ ~ ~ 0.6
