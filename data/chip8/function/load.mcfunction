tellraw @a {"color": "#FF88FF", "text": "The LegitiEmu is LegitiScreaming"}
function chip8:cpu/run_tests

kill @e[type=text_display,tag=chip8screen0]
summon text_display 0.0 65.0 -10.0 {Tags:["chip8screen0"],line_width:576,text:{nbt:"screen",storage:"chip8:emu",interpret:true},background:0}