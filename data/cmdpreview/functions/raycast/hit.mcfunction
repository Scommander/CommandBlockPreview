#summon check marker
execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["cmdpreview.marker","global.ignore"]}

#check not diagonal
scoreboard players set $success cmdpreview 0
execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:marker,tag=cmdpreview.marker,distance=..1.1] run scoreboard players set $success cmdpreview 1

#kill marker
kill @e[type=minecraft:marker,tag=cmdpreview.marker,limit=1]

#show normal text
execute if score $success cmdpreview matches 1 if entity @s[tag=!cmdpreview_offhanded] run function cmdpreview:aec/preview

#toggle permanent text
execute if score $success cmdpreview matches 1 if entity @s[tag=cmdpreview_offhanded] run function cmdpreview:aec/permanent

#particle!
particle enchanted_hit ^ ^ ^-0.3
