#show normal text
execute if entity @s[tag=!cmdpreview_offhanded] run function cmdpreview:aec/preview

#toggle permanent text
execute if entity @s[tag=cmdpreview_offhanded] run function cmdpreview:aec/permanent

#
particle enchanted_hit ^ ^ ^-0.3