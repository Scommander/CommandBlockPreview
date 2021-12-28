#add forceload
forceload add 29999993 265
#forceloaded marker (following conventions)
summon minecraft:marker 29999993 0 265 {Tags:["cmdpreview.load_marker","global.forceload","global.ignore"]}
setblock 29999987 253 259 minecraft:barrier
setblock 29999987 254 259 minecraft:oak_sign

#raycasting
scoreboard objectives add cmdpreview dummy