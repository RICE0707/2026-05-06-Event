##
 # _switch_tag_transfer.mcfunction
 # 
 #
 # Created by Lifeely.
##

## This function makes that, when player uses switch target and has an activated trap tag, then give the other player these tags

##Give Primaltarget and switchtarget title that they got switched!
title @s times 5 30 5 
title @s title {"translate":"wtem.empty"}

##First give an function tag to players for layer transcribing
execute if entity @s[tag=swamp_toilet] if entity @a[tag=switch_target,limit=1,tag=!swamp_toilet] run tag @s add tagswitch_1
execute unless entity @s[tag=checkpoint1_player] if entity @a[tag=switch_target,limit=1,tag=checkpoint1_player] run tag @s add tagswitch_2+
execute unless entity @s[tag=checkpoint2_player] if entity @a[tag=switch_target,limit=1,tag=checkpoint2_player] run tag @s add tagswitch_3+
execute if entity @s[tag=checkpoint1_player] if entity @a[tag=switch_target,limit=1,tag=!checkpoint1_player] run tag @s add tagswitch_2-
execute if entity @s[tag=checkpoint2_player] if entity @a[tag=switch_target,limit=1,tag=!checkpoint2_player] run tag @s add tagswitch_3-
execute if entity @s[tag=teleport_cell] if entity @a[tag=switch_target,limit=1,tag=!teleport_cell] run tag @s add tagswitch_4
execute if entity @s[tag=prison_die] if entity @a[tag=switch_target,limit=1,tag=!prison_die] run tag @s add tagswitch_5
execute if entity @s[tag=prison_cell] if entity @a[tag=switch_target,limit=1,tag=!prison_cell] run tag @s add tagswitch_5_1
execute if entity @s[tag=wizard_trapped] if entity @a[tag=switch_target,limit=1,tag=!wizard_trapped] run tag @s add tagswitch_6
execute if entity @s[tag=snow_sweeped] if entity @a[tag=switch_target,limit=1,tag=!snow_sweeped] run tag @s add tagswitch_7
execute if entity @s[tag=frog_eaten] if entity @a[tag=switch_target,limit=1,tag=!frog_eaten] run tag @s add tagswitch_8
execute if entity @s[tag=quicksand] if entity @a[tag=switch_target,limit=1,tag=!quicksand] run tag @s add tagswitch_9
execute if entity @s[tag=viking_01] if entity @a[tag=switch_target,limit=1,tag=!viking_01] run tag @s add tagswitch_10_1
execute if entity @s[tag=viking_02] if entity @a[tag=switch_target,limit=1,tag=!viking_02] run tag @s add tagswitch_10_2
execute if entity @s[tag=viking_03] if entity @a[tag=switch_target,limit=1,tag=!viking_03] run tag @s add tagswitch_10_3
execute if entity @s[tag=viking_04] if entity @a[tag=switch_target,limit=1,tag=!viking_04] run tag @s add tagswitch_10_4
execute if entity @s[tag=viking_05] if entity @a[tag=switch_target,limit=1,tag=!viking_05] run tag @s add tagswitch_10_5
execute if entity @s[tag=viking_06] if entity @a[tag=switch_target,limit=1,tag=!viking_06] run tag @s add tagswitch_10_6
execute if entity @s[tag=viking_player] if entity @a[tag=switch_target,limit=1,tag=!viking_player] run tag @s add tagswitch_11
execute if entity @s[tag=lighting_died] if entity @a[tag=switch_target,limit=1,tag=!lighting_died] run tag @s add tagswitch_12
execute if entity @s[tag=killed_by_blades] if entity @a[tag=switch_target,limit=1,tag=!killed_by_blades] run tag @s add tagswitch_13
execute if entity @s[tag=spectral_backwards] if entity @a[tag=switch_target,limit=1,tag=!spectral_backwards] run tag @s add tagswitch_14

##First give an function tag to players for layer transcribing
execute unless entity @s[tag=swamp_toilet] if entity @a[tag=switch_target,limit=1,tag=swamp_toilet] run tag @s add tagswitch_1_a
execute if entity @s[tag=checkpoint1_player] if entity @a[tag=switch_target,limit=1,tag=!checkpoint1_player] run tag @s add tagswitch_2_a+
execute if entity @s[tag=checkpoint2_player] if entity @a[tag=switch_target,limit=1,tag=!checkpoint2_player] run tag @s add tagswitch_3_a+
execute unless entity @s[tag=checkpoint1_player] if entity @a[tag=switch_target,limit=1,tag=checkpoint1_player] run tag @s add tagswitch_2_a-
execute unless entity @s[tag=checkpoint2_player] if entity @a[tag=switch_target,limit=1,tag=checkpoint2_player] run tag @s add tagswitch_3_a-
execute unless entity @s[tag=teleport_cell] if entity @a[tag=switch_target,limit=1,tag=teleport_cell] run tag @s add tagswitch_4_a
execute unless entity @s[tag=prison_die] if entity @a[tag=switch_target,limit=1,tag=prison_die] run tag @s add tagswitch_5_a
execute unless entity @s[tag=prison_cell] if entity @a[tag=switch_target,limit=1,tag=prison_cell] run tag @s add tagswitch_5_1_a
execute unless entity @s[tag=wizard_trapped] if entity @a[tag=switch_target,limit=1,tag=wizard_trapped] run tag @s add tagswitch_6_a
execute unless entity @s[tag=snow_sweeped] if entity @a[tag=switch_target,limit=1,tag=snow_sweeped] run tag @s add tagswitch_7_a
execute unless entity @s[tag=frog_eaten] if entity @a[tag=switch_target,limit=1,tag=frog_eaten] run tag @s add tagswitch_8_a
execute unless entity @s[tag=quicksand] if entity @a[tag=switch_target,limit=1,tag=quicksand] run tag @s add tagswitch_9_a
execute unless entity @s[tag=viking_01] if entity @a[tag=switch_target,limit=1,tag=viking_01] run tag @s add tagswitch_10_1_a
execute unless entity @s[tag=viking_02] if entity @a[tag=switch_target,limit=1,tag=viking_02] run tag @s add tagswitch_10_2_a
execute unless entity @s[tag=viking_03] if entity @a[tag=switch_target,limit=1,tag=viking_03] run tag @s add tagswitch_10_3_a
execute unless entity @s[tag=viking_04] if entity @a[tag=switch_target,limit=1,tag=viking_04] run tag @s add tagswitch_10_4_a
execute unless entity @s[tag=viking_05] if entity @a[tag=switch_target,limit=1,tag=viking_05] run tag @s add tagswitch_10_5_a
execute unless entity @s[tag=viking_06] if entity @a[tag=switch_target,limit=1,tag=viking_06] run tag @s add tagswitch_10_6_a
execute unless entity @s[tag=viking_player] if entity @a[tag=switch_target,limit=1,tag=viking_player] run tag @s add tagswitch_11_a
execute unless entity @s[tag=lighting_died] if entity @a[tag=switch_target,limit=1,tag=lighting_died] run tag @s add tagswitch_12_a
execute unless entity @s[tag=killed_by_blades] if entity @a[tag=switch_target,limit=1,tag=killed_by_blades] run tag @s add tagswitch_13_a
execute unless entity @s[tag=spectral_backwards] if entity @a[tag=switch_target,limit=1,tag=spectral_backwards] run tag @s add tagswitch_14_a

##Second based on that tagswitch, give/remove specific tags as primal_target
execute if entity @s[tag=tagswitch_1] run tag @a[tag=switch_target] add swamp_toilet
execute if entity @s[tag=tagswitch_1] run tag @s remove swamp_toilet
execute if entity @s[tag=tagswitch_2+] run tag @a[tag=switch_target] remove checkpoint1_player
execute if entity @s[tag=tagswitch_2+] run tag @s add checkpoint1_player
execute if entity @s[tag=tagswitch_3+] run tag @a[tag=switch_target] remove checkpoint2_player
execute if entity @s[tag=tagswitch_3+] run tag @s add checkpoint2_player
execute if entity @s[tag=tagswitch_2-] run tag @a[tag=switch_target] add checkpoint1_player
execute if entity @s[tag=tagswitch_2-] run tag @s remove checkpoint1_player
execute if entity @s[tag=tagswitch_3-] run tag @a[tag=switch_target] add checkpoint2_player
execute if entity @s[tag=tagswitch_3-] run tag @s remove checkpoint2_player
execute if entity @s[tag=tagswitch_4] run tag @a[tag=switch_target] add teleport_cell
execute if entity @s[tag=tagswitch_4] run tag @s remove teleport_cell
execute if entity @s[tag=tagswitch_5] run tag @a[tag=switch_target] add prison_die
execute if entity @s[tag=tagswitch_5] run tag @s remove prison_die
execute if entity @s[tag=tagswitch_5_1] run tag @a[tag=switch_target] add prison_cell
execute if entity @s[tag=tagswitch_5_1] run tag @s remove prison_cell
execute if entity @s[tag=tagswitch_6] run tag @a[tag=switch_target] add wizard_trapped
execute if entity @s[tag=tagswitch_6] run tag @s remove wizard_trapped
execute if entity @s[tag=tagswitch_7] run tag @a[tag=switch_target] add snow_sweeped
execute if entity @s[tag=tagswitch_7] run tag @s remove snow_sweeped
execute if entity @s[tag=tagswitch_8] run tag @a[tag=switch_target] add frog_eaten
execute if entity @s[tag=tagswitch_8] run tag @s remove frog_eaten
execute if entity @s[tag=tagswitch_9] run tag @a[tag=switch_target] add quicksand
execute if entity @s[tag=tagswitch_9] run tag @s remove quicksand
execute if entity @s[tag=tagswitch_10_1] run tag @a[tag=switch_target] add viking_01
execute if entity @s[tag=tagswitch_10_1] run tag @s remove viking_01
execute if entity @s[tag=tagswitch_10_2] run tag @a[tag=switch_target] add viking_02
execute if entity @s[tag=tagswitch_10_2] run tag @s remove viking_02
execute if entity @s[tag=tagswitch_10_3] run tag @a[tag=switch_target] add viking_03
execute if entity @s[tag=tagswitch_10_3] run tag @s remove viking_03
execute if entity @s[tag=tagswitch_10_4] run tag @a[tag=switch_target] add viking_04
execute if entity @s[tag=tagswitch_10_4] run tag @s remove viking_04
execute if entity @s[tag=tagswitch_10_5] run tag @a[tag=switch_target] add viking_05
execute if entity @s[tag=tagswitch_10_5] run tag @s remove viking_05
execute if entity @s[tag=tagswitch_10_6] run tag @a[tag=switch_target] add viking_06
execute if entity @s[tag=tagswitch_10_6] run tag @s remove viking_06
execute if entity @s[tag=tagswitch_11] run tag @a[tag=switch_target] add viking_player
execute if entity @s[tag=tagswitch_11] run tag @s remove viking_player
execute if entity @s[tag=tagswitch_12] run tag @a[tag=switch_target] add lighting_died
execute if entity @s[tag=tagswitch_12] run tag @s remove lighting_died
execute if entity @s[tag=tagswitch_13] run tag @a[tag=switch_target] add killed_by_blades
execute if entity @s[tag=tagswitch_13] run tag @s remove killed_by_blades
execute if entity @s[tag=tagswitch_14] run tag @a[tag=switch_target] add spectral_backwards
execute if entity @s[tag=tagswitch_14] run tag @s remove spectral_backwards

##Second based on that tagswitch, give/remove specific tags as primal_target
execute if entity @s[tag=tagswitch_1_a] run tag @a[tag=switch_target] remove swamp_toilet
execute if entity @s[tag=tagswitch_1_a] run tag @s add swamp_toilet
execute if entity @s[tag=tagswitch_2_a+] run tag @a[tag=switch_target] add checkpoint1_player
execute if entity @s[tag=tagswitch_2_a+] run tag @s remove checkpoint1_player
execute if entity @s[tag=tagswitch_3_a+] run tag @a[tag=switch_target] add checkpoint2_player
execute if entity @s[tag=tagswitch_3_a+] run tag @s remove checkpoint2_player
execute if entity @s[tag=tagswitch_2_a-] run tag @a[tag=switch_target] remove checkpoint1_player
execute if entity @s[tag=tagswitch_2_a-] run tag @s add checkpoint1_player
execute if entity @s[tag=tagswitch_3_a-] run tag @a[tag=switch_target] remove checkpoint2_player
execute if entity @s[tag=tagswitch_3_a-] run tag @s add checkpoint2_player
execute if entity @s[tag=tagswitch_4_a] run tag @a[tag=switch_target] remove teleport_cell
execute if entity @s[tag=tagswitch_4_a] run tag @s add teleport_cell
execute if entity @s[tag=tagswitch_5_a] run tag @a[tag=switch_target] remove prison_die
execute if entity @s[tag=tagswitch_5_a] run tag @s add prison_die
execute if entity @s[tag=tagswitch_5_1_a] run tag @a[tag=switch_target] remove prison_cell
execute if entity @s[tag=tagswitch_5_1_a] run tag @s add prison_cell
execute if entity @s[tag=tagswitch_6_a] run tag @a[tag=switch_target] remove wizard_trapped
execute if entity @s[tag=tagswitch_6_a] run tag @s add wizard_trapped
execute if entity @s[tag=tagswitch_7_a] run tag @a[tag=switch_target] remove snow_sweeped
execute if entity @s[tag=tagswitch_7_a] run tag @s add snow_sweeped
execute if entity @s[tag=tagswitch_8_a] run tag @a[tag=switch_target] remove frog_eaten
execute if entity @s[tag=tagswitch_8_a] run tag @s add frog_eaten
execute if entity @s[tag=tagswitch_9_a] run tag @a[tag=switch_target] remove quicksand
execute if entity @s[tag=tagswitch_9_a] run tag @s add quicksand
execute if entity @s[tag=tagswitch_10_1_a] run tag @a[tag=switch_target] remove viking_01
execute if entity @s[tag=tagswitch_10_1_a] run tag @s add viking_01
execute if entity @s[tag=tagswitch_10_2_a] run tag @a[tag=switch_target] remove viking_02
execute if entity @s[tag=tagswitch_10_2_a] run tag @s add viking_02
execute if entity @s[tag=tagswitch_10_3_a] run tag @a[tag=switch_target] remove viking_03
execute if entity @s[tag=tagswitch_10_3_a] run tag @s add viking_03
execute if entity @s[tag=tagswitch_10_4_a] run tag @a[tag=switch_target] remove viking_04
execute if entity @s[tag=tagswitch_10_4_a] run tag @s add viking_04
execute if entity @s[tag=tagswitch_10_5_a] run tag @a[tag=switch_target] remove viking_05
execute if entity @s[tag=tagswitch_10_5_a] run tag @s add viking_05
execute if entity @s[tag=tagswitch_10_6_a] run tag @a[tag=switch_target] remove viking_06
execute if entity @s[tag=tagswitch_10_6_a] run tag @s add viking_06
execute if entity @s[tag=tagswitch_11_a] run tag @a[tag=switch_target] remove viking_player
execute if entity @s[tag=tagswitch_11_a] run tag @s add viking_player
execute if entity @s[tag=tagswitch_12_a] run tag @a[tag=switch_target] remove lighting_died
execute if entity @s[tag=tagswitch_12_a] run tag @s add lighting_died
execute if entity @s[tag=tagswitch_13_a] run tag @a[tag=switch_target] remove killed_by_blades
execute if entity @s[tag=tagswitch_13_a] run tag @s add killed_by_blades
execute if entity @s[tag=tagswitch_14_a] run tag @a[tag=switch_target] remove spectral_backwards
execute if entity @s[tag=tagswitch_14_a] run tag @s add spectral_backwards

##And finaly remove the tagswitch tags
tag @a remove tagswitch_1
tag @a remove tagswitch_2+
tag @a remove tagswitch_3+
tag @a remove tagswitch_2-
tag @a remove tagswitch_3-
tag @a remove tagswitch_4
tag @a remove tagswitch_5
tag @a remove tagswitch_5_1
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



effect clear @s
effect clear @a[tag=switch_target,tag=!wizard_trapped]