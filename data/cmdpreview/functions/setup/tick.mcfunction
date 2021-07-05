# 20tps

#add forceload
forceload add 29999993 265
setblock 29999987 253 259 minecraft:barrier
setblock 29999987 254 259 minecraft:oak_sign


#remove tag
tag @e[type=area_effect_cloud,tag=!cmdpreview_permanent,tag=cmdpreview_text,tag=cmdpreview_alive] remove cmdpreview_alive

#run function as player
execute as @a[gamemode=creative] at @s run function cmdpreview:as_player

#kill if tag still removed
kill @e[type=area_effect_cloud,tag=cmdpreview_text,tag=!cmdpreview_permanent,tag=!cmdpreview_alive]