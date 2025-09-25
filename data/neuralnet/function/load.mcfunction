kill @e[type=text_display,tag=ml]
kill @e[type=interaction,tag=ml]

summon text_display 0.0 70.0 0.0 {text:"  ",background:-2130706433,billboard:"center",Tags:["ml"]}

tellraw @a {"color": "#FF88FF", "text": "The LegitiML is LegitiScreaming"}