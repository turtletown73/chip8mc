$data modify storage chip8:emu screen_read set from storage chip8:emu screen[$(arg1)].text
execute if data storage chip8:emu {screen_read:". "} run return 0
execute if data storage chip8:emu {screen_read:"# "} run return 1