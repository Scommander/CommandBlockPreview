#storing command to storage
    data modify storage cmdpreview Command set from block ^ ^ ^0.1
#store storage to sign
    setblock 29999987 254 259 minecraft:air
    setblock 29999987 254 259 minecraft:oak_sign{Text1:'[{"text":"> ","color":"white"},{"color":"yellow","nbt":"Command.Command","storage":"cmdpreview"}]'} replace

#kill entity
execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~-0.4 ~0.5 run kill @e[type=minecraft:area_effect_cloud,tag=cmdpreview_text,tag=!cmdpreview_permanent,distance=..0.1]

#store success of finding permanent
    execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~-0.4 ~0.5 store success score perm_exists cmdpreview if entity @e[type=minecraft:area_effect_cloud,tag=cmdpreview_text,tag=cmdpreview_permanent,distance=..0.1]
#if not existing summon
    execute if score perm_exists cmdpreview matches 0 positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~-0.4 ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:1,Duration:1000000,Tags:["cmdpreview_text","cmdpreview_permanent"]}
#if existing delete
    execute if score perm_exists cmdpreview matches 1 positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~-0.4 ~0.5 run kill @e[type=minecraft:area_effect_cloud,tag=cmdpreview_text,tag=cmdpreview_permanent,distance=..0.1]


#from sign to entity
    execute if score perm_exists cmdpreview matches 0 positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~-0.4 ~0.5 run data modify entity @e[type=minecraft:area_effect_cloud,tag=cmdpreview_text,limit=1,distance=..0.1] CustomName set from block 29999987 254 259 Text1