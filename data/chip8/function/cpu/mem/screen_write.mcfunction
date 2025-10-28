$data modify storage chip8:emu screen_read set value $(arg2)
$execute if data storage chip8:emu {screen_read:0} run data modify storage chip8:emu screen[$(arg1)].color set value "black"
$execute if data storage chip8:emu {screen_read:1} run data modify storage chip8:emu screen[$(arg1)].color set value "white"

function chip8:cpu/update_screen