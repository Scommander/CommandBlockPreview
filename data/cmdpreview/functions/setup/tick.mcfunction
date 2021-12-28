# 20tps

#remove tag
tag @e[type=area_effect_cloud,tag=!cmdpreview_permanent,tag=cmdpreview.text,tag=cmdpreview_alive] remove cmdpreview_alive

#run function as player
execute as @a[gamemode=creative] at @s run function cmdpreview:as_player

#kill if tag still removed
kill @e[type=area_effect_cloud,tag=cmdpreview.text,tag=!cmdpreview_permanent,tag=!cmdpreview_alive]