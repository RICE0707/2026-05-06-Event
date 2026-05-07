##
 # _lobby_player_reconnect_abs (AntiBugSystem).mcfunction
 # 
 #
 # Created by Lifeely.
##

##This function is called as players that joined into the game while the game was in the GameStarted 0 state (Lobby)
##  -   It makes them remove their game tags + remove all the powerups items and other stuff what they might have in their inventory

tag @s remove ready_to_start
tag @s remove titled_ready
tag @s[tag=!recorder,tag=!debug] remove killer
tag @s[tag=!recorder,tag=!debug] remove runner
tag @s remove spectral_backwards
tag @s remove checkpoint1_player
tag @s remove checkpoint2_player
tag @s remove checkpoint3_player
tag @s remove has_bomb_hat
tag @s remove change_bomb_hat
tag @s remove teleport_cell
tag @s remove swamp_toilet
tag @s remove frog_eaten
tag @s remove quicksand
tag @s remove spectator
tag @s remove bomb_hat_text
tag @s remove remove_ready_to_start
tag @s remove blue_team
tag @s remove red_team
tag @s remove started
tag @s remove has_block
tag @s remove place
tag @s remove out_of_lives
tag @s[tag=!recorder,tag=!debug] remove death_runner
tag @s[tag=!recorder,tag=!debug] remove minigame_spectator_runner
tag @s[tag=!recorder,tag=!debug] remove minigame_spectator_killer
tag @s remove luki_gunner
tag @s remove snow_sweeped
tag @s remove viking_player
tag @s remove viking_01
tag @s remove viking_02
tag @s remove viking_03
tag @s remove viking_04
tag @s remove viking_05
tag @s remove viking_06
tag @s remove prison_die
tag @s remove killed_by_blades
tag @s remove selected_killer
tag @s remove selected_runner
tag @s remove selected_nothing
tag @s remove furthest_runner
tag @s remove eye_target
tag @s remove godmode_4sec
tag @s remove spawning
tag @s remove powerup_enabled
tag @s remove power_jumper
tag @s remove primal_switch
tag @s remove switch_target
tag @s remove once_cleared
tag @s remove lighting_died
tag @s remove tagswitch_1
tag @s remove tagswitch_2+
tag @s remove tagswitch_3+
tag @s remove tagswitch_2-
tag @s remove tagswitch_3-
tag @s remove tagswitch_4
tag @s remove tagswitch_5
tag @s remove tagswitch_6
tag @s remove tagswitch_7
tag @s remove tagswitch_8
tag @s remove tagswitch_9
tag @s remove tagswitch_10_1
tag @s remove tagswitch_10_2
tag @s remove tagswitch_10_3
tag @s remove tagswitch_10_4
tag @s remove tagswitch_10_5
tag @s remove tagswitch_10_6
tag @s remove tagswitch_11
tag @s remove tagswitch_12
tag @s remove tagswitch_13
tag @s remove tagswitch_14
tag @s remove tagswitch_1_a
tag @s remove tagswitch_2_a+
tag @s remove tagswitch_3_a+
tag @s remove tagswitch_2_a-
tag @s remove tagswitch_3_a-
tag @s remove tagswitch_4_a
tag @s remove tagswitch_5_a
tag @s remove tagswitch_5_1_a
tag @s remove tagswitch_6_a
tag @s remove tagswitch_7_a
tag @s remove tagswitch_8_a
tag @s remove tagswitch_9_a
tag @s remove tagswitch_10_1_a
tag @s remove tagswitch_10_2_a
tag @s remove tagswitch_10_3_a
tag @s remove tagswitch_10_4_a
tag @s remove tagswitch_10_5_a
tag @s remove tagswitch_10_6_a
tag @s remove tagswitch_11_a
tag @s remove tagswitch_12_a
tag @s remove tagswitch_13_a
tag @s remove tagswitch_14_a
tag @s remove live_block_gone
tag @s remove on_k_no_jumping
tag @s remove on_k_slowdown
tag @s remove on_k_small_gary
tag @s remove on_k_spinning_runners
tag @s remove on_k_vex_trio
tag @s remove on_r_invisibility
tag @s remove on_r_speed_boost
tag @s remove on_r_trapper_blinder
tag @s remove on_r_spinning_killers
tag @s remove on_r_power_jump
tag @s remove on_r_portable_switch
tag @s remove powerup_activated
tag @s remove nothing_particle
tag @s remove nothing_particle_a


attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
team join player @s
stopsound @s

title @s times 0 30 10
title @s title {"translate":"core.functions.files._lobby_player_reconnect_abs.1"}
title @s subtitle {"translate":"wtem.empty"}

playsound ui.toast.out record @s ~ ~ ~ 0.6
title @s actionbar {"translate":"wtem.empty"}
spreadplayers 1199.5 -74.5 0 2 under -27 false @s
scoreboard players set @s Lives 0
scoreboard players reset @s bomb_backpack_damagefromplayer
scoreboard players set @s PlayerPosition 1
effect give @s regeneration 5 200 true
