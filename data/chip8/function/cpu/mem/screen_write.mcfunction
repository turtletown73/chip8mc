data modify storage chip8:emu screen_read set from storage chip8:emu arg2
execute if data storage chip8:emu {screen_read:0} run data modify storage chip8:emu screen_read2 set value ". "
execute if data storage chip8:emu {screen_read:1} run data modify storage chip8:emu screen_read2 set value "# "
$data modify storage chip8:emu screen[$(arg1)].text set from storage chip8:emu screen_read2