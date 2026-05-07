##
 # push_from_checkpoint.mcfunction
 # 
 #
 # Created by Lifeely.
##

## In this function when player spawns inside checkpoint it gets pushed from it towards the map
execute as @s[tag=!spawning] at @s run summon armor_stand 42 -35 -3 {Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,PersistenceRequired:1b,Motion:[0.75,0.25,0.75],Tags:["spawning_armor_stand"]}
execute as @s[tag=!spawning] at @s run tag @s add spawning
particle minecraft:happy_villager 146.00 -23.02 67.71 0 1 1 0 5 normal
effect clear @s
scoreboard players set @s anti_speedrun 100
effect give @s regeneration 3 200 true
effect give @s resistance 5 200 true
clear @s pufferfish{CustomModelData:201}
gamemode adventure @s
effect clear @s levitation
scoreboard players reset @s lived_for
function core:files/_player_reset_tags


