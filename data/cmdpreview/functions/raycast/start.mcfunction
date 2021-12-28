#reset actionbar
title @s actionbar ["",{"text":""}]

#set up score
scoreboard players set $step cmdpreview 400
#start iteration
execute anchored eyes positioned ^ ^ ^ run function cmdpreview:raycast/step