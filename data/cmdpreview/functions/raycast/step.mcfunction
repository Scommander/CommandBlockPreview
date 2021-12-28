#count steps
scoreboard players remove $step cmdpreview 1

#check for block
execute if block ~ ~ ~ #cmdpreview:command_block run function cmdpreview:raycast/hit

#rerun
execute unless block ~ ~ ~ #cmdpreview:command_block if score $step cmdpreview matches 1.. positioned ^ ^ ^0.1 run function cmdpreview:raycast/step