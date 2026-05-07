##
 # _entity_loader.mcfunction
 # 
 #
 # Created by Lifeely.
##

## This function dependent of GameStarted score, starts the entity Load

execute if score GameStarted Game matches 0 run function core:files/entity_load
execute unless score MinigameOnly Settings matches 1 if score GameStarted Game matches 1 run function core:files/entity_load
execute if score GameStarted Game matches 2 run function core:files/entity_load_minigames