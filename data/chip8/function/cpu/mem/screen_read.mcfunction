$data modify storage chip8:emu screen_read set from storage chip8:emu screen[$(arg1)].color
execute if data storage chip8:emu {screen_read:"black"} run return 0
execute if data storage chip8:emu {screen_read:"white"} run return 1