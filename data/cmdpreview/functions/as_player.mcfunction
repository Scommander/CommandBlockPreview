#remove tag
tag @s remove cmdpreview_offhanded
#detect offhand & blank main slot
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:wooden_sword"}]}] unless data entity @s SelectedItem run function cmdpreview:in_offhand

#run function if holding sword
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] at @s run function cmdpreview:raycast/start