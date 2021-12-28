#kill text
kill @e[type=minecraft:area_effect_cloud,tag=cmdpreview.text]

#kill entity and remove forceload
execute as @e[type=minecraft:marker,tag=cmdpreview.load_marker] at @s run function cmdpreview:forceload_uninstall
forceload remove 29999993 265

#remove objectives
scoreboard objectives remove cmdpreview

#uninstall message
tellraw @s ["",{"text":"All loaded floating text has been removed. Command Block Preview uninstalled. Please leave the world and delete the datapack. If you relog before deleting you will need to run this uninstall command again.","color":"red"}]
