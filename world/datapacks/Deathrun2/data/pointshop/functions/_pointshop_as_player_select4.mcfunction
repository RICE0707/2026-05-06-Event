##
 # _pointshop_as_player_select4.mcfunction
 # 
 #
 # Created by Lifeely.
##
##This function is called as player that presses the pshop 4 select sign, and based on what is the score of selected hat give it them

##Unequip hat when the same selected
execute if entity @s[tag=has_hat_0] if score select_pshop_04 _core_Pointshop matches 0 run tag @s add remove_hat
execute if entity @s[tag=has_hat_1] if score select_pshop_04 _core_Pointshop matches 1 run tag @s add remove_hat
execute if entity @s[tag=has_hat_2] if score select_pshop_04 _core_Pointshop matches 2 run tag @s add remove_hat
execute if entity @s[tag=has_hat_3] if score select_pshop_04 _core_Pointshop matches 3 run tag @s add remove_hat
execute if entity @s[tag=has_hat_4] if score select_pshop_04 _core_Pointshop matches 4 run tag @s add remove_hat
execute if entity @s[tag=has_hat_5] if score select_pshop_04 _core_Pointshop matches 5 run tag @s add remove_hat
execute if entity @s[tag=has_hat_6] if score select_pshop_04 _core_Pointshop matches 6 run tag @s add remove_hat
execute if entity @s[tag=has_hat_7] if score select_pshop_04 _core_Pointshop matches 7 run tag @s add remove_hat
execute if entity @s[tag=has_hat_8] if score select_pshop_04 _core_Pointshop matches 8 run tag @s add remove_hat
execute if entity @s[tag=has_hat_9] if score select_pshop_04 _core_Pointshop matches 9 run tag @s add remove_hat
execute if entity @s[tag=has_hat_10] if score select_pshop_04 _core_Pointshop matches 10 run tag @s add remove_hat
execute if entity @s[tag=has_hat_11] if score select_pshop_04 _core_Pointshop matches 11 run tag @s add remove_hat
execute if entity @s[tag=has_hat_12] if score select_pshop_04 _core_Pointshop matches 12 run tag @s add remove_hat
execute if entity @s[tag=has_hat_13] if score select_pshop_04 _core_Pointshop matches 13 run tag @s add remove_hat
execute if entity @s[tag=has_hat_14] if score select_pshop_04 _core_Pointshop matches 14 run tag @s add remove_hat
execute if entity @s[tag=has_hat_15] if score select_pshop_04 _core_Pointshop matches 15 run tag @s add remove_hat
execute if entity @s[tag=has_hat_16] if score select_pshop_04 _core_Pointshop matches 16 run tag @s add remove_hat
execute if entity @s[tag=has_hat_17] if score select_pshop_04 _core_Pointshop matches 17 run tag @s add remove_hat
execute if entity @s[tag=has_hat_18] if score select_pshop_04 _core_Pointshop matches 18 run tag @s add remove_hat
execute if entity @s[tag=has_hat_19] if score select_pshop_04 _core_Pointshop matches 19 run tag @s add remove_hat
execute if entity @s[tag=has_hat_20] if score select_pshop_04 _core_Pointshop matches 20 run tag @s add remove_hat
execute if entity @s[tag=has_hat_21] if score select_pshop_04 _core_Pointshop matches 21 run tag @s add remove_hat
execute if entity @s[tag=has_hat_22] if score select_pshop_04 _core_Pointshop matches 22 run tag @s add remove_hat
execute if entity @s[tag=has_hat_23] if score select_pshop_04 _core_Pointshop matches 23 run tag @s add remove_hat
execute if entity @s[tag=has_hat_24] if score select_pshop_04 _core_Pointshop matches 24 run tag @s add remove_hat
execute if entity @s[tag=has_hat_25] if score select_pshop_04 _core_Pointshop matches 25 run tag @s add remove_hat
execute if entity @s[tag=has_hat_26] if score select_pshop_04 _core_Pointshop matches 26 run tag @s add remove_hat
execute if entity @s[tag=has_hat_27] if score select_pshop_04 _core_Pointshop matches 27 run tag @s add remove_hat
execute if entity @s[tag=has_hat_28] if score select_pshop_04 _core_Pointshop matches 28 run tag @s add remove_hat

##Remove all hats tags
tag @s remove has_hat_0
tag @s remove has_hat_1
tag @s remove has_hat_2
tag @s remove has_hat_3
tag @s remove has_hat_4
tag @s remove has_hat_5
tag @s remove has_hat_6
tag @s remove has_hat_7
tag @s remove has_hat_8
tag @s remove has_hat_9
tag @s remove has_hat_10
tag @s remove has_hat_11
tag @s remove has_hat_12
tag @s remove has_hat_13
tag @s remove has_hat_14
tag @s remove has_hat_15
tag @s remove has_hat_16
tag @s remove has_hat_17
tag @s remove has_hat_18
tag @s remove has_hat_19
tag @s remove has_hat_20
tag @s remove has_hat_21
tag @s remove has_hat_22
tag @s remove has_hat_23
tag @s remove has_hat_24
tag @s remove has_hat_25
tag @s remove has_hat_26
tag @s remove has_hat_27
tag @s remove has_hat_28

##tellraw to player an text that they have equiped their hat and play an small sound
execute if entity @s[tag=!remove_hat] run tellraw @s {"translate":"pointshop.functions._pointshop_as_player_select4.1","color": "#b2ff40"}
execute if entity @s[tag=!remove_hat] run playsound item.armor.equip_leather record @a ~ ~ ~ 0.75 1.1
execute if entity @s[tag=remove_hat] run tellraw @s {"translate":"pointshop.functions._pointshop_as_player_select4.2","color": "#fa2f2f"}
execute if entity @s[tag=remove_hat] run playsound item.armor.equip_leather record @a ~ ~ ~ 0.75 0.7

##Detect what is the hat score in _core_Pointshop and based on that give player their new hat tag
execute if score select_pshop_04 _core_Pointshop matches 0 run tag @s add has_hat_0
execute if score select_pshop_04 _core_Pointshop matches 1 run tag @s add has_hat_1
execute if score select_pshop_04 _core_Pointshop matches 2 run tag @s add has_hat_2
execute if score select_pshop_04 _core_Pointshop matches 3 run tag @s add has_hat_3
execute if score select_pshop_04 _core_Pointshop matches 4 run tag @s add has_hat_4
execute if score select_pshop_04 _core_Pointshop matches 5 run tag @s add has_hat_5
execute if score select_pshop_04 _core_Pointshop matches 6 run tag @s add has_hat_6
execute if score select_pshop_04 _core_Pointshop matches 7 run tag @s add has_hat_7
execute if score select_pshop_04 _core_Pointshop matches 8 run tag @s add has_hat_8
execute if score select_pshop_04 _core_Pointshop matches 9 run tag @s add has_hat_9
execute if score select_pshop_04 _core_Pointshop matches 10 run tag @s add has_hat_10
execute if score select_pshop_04 _core_Pointshop matches 11 run tag @s add has_hat_11
execute if score select_pshop_04 _core_Pointshop matches 12 run tag @s add has_hat_12
execute if score select_pshop_04 _core_Pointshop matches 13 run tag @s add has_hat_13
execute if score select_pshop_04 _core_Pointshop matches 14 run tag @s add has_hat_14
execute if score select_pshop_04 _core_Pointshop matches 15 run tag @s add has_hat_15
execute if score select_pshop_04 _core_Pointshop matches 16 run tag @s add has_hat_16
execute if score select_pshop_04 _core_Pointshop matches 17 run tag @s add has_hat_17
execute if score select_pshop_04 _core_Pointshop matches 18 run tag @s add has_hat_18
execute if score select_pshop_04 _core_Pointshop matches 19 run tag @s add has_hat_19
execute if score select_pshop_04 _core_Pointshop matches 20 run tag @s add has_hat_20
execute if score select_pshop_04 _core_Pointshop matches 21 run tag @s add has_hat_21
execute if score select_pshop_04 _core_Pointshop matches 22 run tag @s add has_hat_22
execute if score select_pshop_04 _core_Pointshop matches 23 run tag @s add has_hat_23
execute if score select_pshop_04 _core_Pointshop matches 24 run tag @s add has_hat_24
execute if score select_pshop_04 _core_Pointshop matches 25 run tag @s add has_hat_25
execute if score select_pshop_04 _core_Pointshop matches 26 run tag @s add has_hat_26
execute if score select_pshop_04 _core_Pointshop matches 27 run tag @s add has_hat_27
execute if score select_pshop_04 _core_Pointshop matches 28 run tag @s add has_hat_28

##Make an second tag for player to have their hat
execute unless entity @s[tag=remove_hat] run tag @s add _has_hat

##Remove all hats tags when player have the same hat selected
tag @s[tag=remove_hat] remove has_hat_0
tag @s[tag=remove_hat] remove has_hat_1
tag @s[tag=remove_hat] remove has_hat_2
tag @s[tag=remove_hat] remove has_hat_3
tag @s[tag=remove_hat] remove has_hat_4
tag @s[tag=remove_hat] remove has_hat_5
tag @s[tag=remove_hat] remove has_hat_6
tag @s[tag=remove_hat] remove has_hat_7
tag @s[tag=remove_hat] remove has_hat_8
tag @s[tag=remove_hat] remove has_hat_9
tag @s[tag=remove_hat] remove has_hat_10
tag @s[tag=remove_hat] remove has_hat_11
tag @s[tag=remove_hat] remove has_hat_12
tag @s[tag=remove_hat] remove has_hat_13
tag @s[tag=remove_hat] remove has_hat_14
tag @s[tag=remove_hat] remove has_hat_15
tag @s[tag=remove_hat] remove has_hat_16
tag @s[tag=remove_hat] remove has_hat_17
tag @s[tag=remove_hat] remove has_hat_18
tag @s[tag=remove_hat] remove has_hat_19
tag @s[tag=remove_hat] remove has_hat_20
tag @s[tag=remove_hat] remove has_hat_21
tag @s[tag=remove_hat] remove has_hat_22
tag @s[tag=remove_hat] remove has_hat_23
tag @s[tag=remove_hat] remove has_hat_24
tag @s[tag=remove_hat] remove has_hat_25
tag @s[tag=remove_hat] remove has_hat_26
tag @s[tag=remove_hat] remove has_hat_27
tag @s[tag=remove_hat] remove has_hat_28
tag @s[tag=remove_hat] remove _has_hat
tag @s[tag=remove_hat] remove remove_hat
