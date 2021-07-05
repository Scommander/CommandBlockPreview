#set up score
scoreboard players set step cmdpreview 400
#start iteration
execute anchored eyes positioned ^ ^ ^ run function cmdpreview:raycast/step



#also actionbar message
#title @s actionbar ["",{"text":"[Cmd Preview Active]"}]