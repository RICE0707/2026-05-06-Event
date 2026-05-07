##
 # _4_random_profession.mcfunction
 # 
 #
 # Created by Lifeely.
##

##Select random profession
execute store result score @s random_profession run data get entity @s UUID[0] 1
scoreboard players operation @s random_profession %= _range random_profession

##Based on the random score, select the profession
execute if score @s random_profession matches 0 run data merge entity @s {VillagerData:{profession:"minecraft:armorer",level:99},Team:no_pvp}
execute if score @s random_profession matches 1 run data merge entity @s {VillagerData:{profession:"minecraft:butcher",level:99},Team:no_pvp}
execute if score @s random_profession matches 2 run data merge entity @s {VillagerData:{profession:"minecraft:cartographer",level:99},Team:no_pvp}
execute if score @s random_profession matches 3 run data merge entity @s {VillagerData:{profession:"minecraft:cleric",level:99},Team:no_pvp}
execute if score @s random_profession matches 4 run data merge entity @s {VillagerData:{profession:"minecraft:farmer",level:99},Team:no_pvp}
execute if score @s random_profession matches 5 run data merge entity @s {VillagerData:{profession:"minecraft:fisherman",level:99},Team:no_pvp}
execute if score @s random_profession matches 6 run data merge entity @s {VillagerData:{profession:"minecraft:fletcher",level:99},Team:no_pvp}
execute if score @s random_profession matches 7 run data merge entity @s {VillagerData:{profession:"minecraft:leatherworker",level:99},Team:no_pvp}
execute if score @s random_profession matches 8 run data merge entity @s {VillagerData:{profession:"minecraft:librarian",level:99},Team:no_pvp}
execute if score @s random_profession matches 9 run data merge entity @s {VillagerData:{profession:"minecraft:mason",level:99},Team:no_pvp}
execute if score @s random_profession matches 10 run data merge entity @s {VillagerData:{profession:"minecraft:nitwit",level:99},Team:no_pvp}
tag @s add has_profession