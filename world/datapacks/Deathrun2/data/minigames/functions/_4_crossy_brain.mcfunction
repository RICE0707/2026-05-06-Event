##
 # _4_villager_killself.mcfunction
 # 
 #
 # Created by Lifeely.
##

##As villagers switch position when on arrow terracotta
execute if block ~ ~-3 ~ magenta_glazed_terracotta[facing=north] run function minigames:_4_tag_to_crossy_z_plus
execute if block ~ ~-3 ~ magenta_glazed_terracotta[facing=south] run function minigames:_4_tag_to_crossy_z_minus
execute if block ~ ~-3 ~ magenta_glazed_terracotta[facing=west] run function minigames:_4_tag_to_crossy_x_plus
execute if block ~ ~-3 ~ magenta_glazed_terracotta[facing=east] run function minigames:_4_tag_to_crossy_x_minus

##Kill self after certain time or if entity outside of map border
scoreboard players add @s kill_self 1
execute if score @s kill_self matches 500.. run teleport @s ~ ~-10 ~
execute if score @s kill_self matches 500.. run data merge entity @s {Silent:1b}
execute if score @s kill_self matches 500.. run kill @s
execute if blocks ~ ~ ~ ~ ~-2 ~ -117 -28 205 all run data merge entity @s {Silent:1b}
execute if blocks ~ ~ ~ ~ ~-2 ~ -117 -28 205 all run kill @s
execute unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~ ~2 ~ air unless block ~ ~ ~ black_concrete run data merge entity @s {Silent:1b}
execute unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~ ~2 ~ air unless block ~ ~ ~ black_concrete run teleport @s ~ ~-10 ~

##If inside slab/block teleport up by 0.5 / 1
execute if block ~ ~ ~ #slabs run teleport @s ~ ~0.5 ~
execute unless block ~ ~ ~ air unless block ~ ~ ~ #slabs unless block ~ ~ ~ #replaceable unless block ~ ~ ~ #buttons unless block ~ ~ ~ #signs unless block ~ ~ ~ #pressure_plates unless block ~ ~ ~ #fence_gates unless block ~ ~ ~ #wool_carpets if block ~ ~1 ~ air run teleport @s ~ ~1 ~
execute if block ~ ~-0.49999 ~ air run teleport @s ~ ~-0.5 ~



