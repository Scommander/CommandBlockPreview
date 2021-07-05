#once block is hit

#storing command to storage
    data modify storage cmdpreview Command set from block ^ ^ ^
#store storage to sign
    setblock 29999987 254 259 minecraft:air
    setblock 29999987 254 259 minecraft:oak_sign{Text1:'[{"text":"> ","color":"gray"},{"color":"white","nbt":"Command.Command","storage":"cmdpreview"}]'} replace



#store success of finding permanent
    execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~-0.4 ~0.5 store success score any_exists cmdpreview if entity @e[type=minecraft:area_effect_cloud,tag=cmdpreview_text,distance=..0.1]
#if not existing summon
    execute if score any_exists cmdpreview matches 0 positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~-0.4 ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:1,Duration:1000000,Tags:["cmdpreview_text","cmdpreview_alive"]}
#if existing delete
    execute if score any_exists cmdpreview matches 1 positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~-0.4 ~0.5 run tag @e[type=minecraft:area_effect_cloud,tag=cmdpreview_text,distance=..0.1] add cmdpreview_alive

 

#from sign to entity
    execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~-0.4 ~0.5 run data modify entity @e[type=minecraft:area_effect_cloud,tag=cmdpreview_text,tag=!cmdpreview_permanent,limit=1,distance=..0.1] CustomName set from block 29999987 254 259 Text1