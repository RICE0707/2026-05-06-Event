##
 # _player_reset_tags.mcfunction
 # 
 #
 # Created by Lifeely.
##

##In this function, player gets their trap tags removed when they spawn or whenever this function is called

tag @s remove spectral_backwards
tag @s remove has_bomb_hat
tag @s remove change_bomb_hat
tag @s remove teleport_cell
tag @s remove swamp_toilet
tag @s remove frog_eaten
tag @s remove quicksand
execute unless score @s Lives matches ..-1 run tag @s remove spectator
tag @s remove bomb_hat_text
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
tag @s remove lighting_died
tag @s remove powerup_activated
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




effect clear @s