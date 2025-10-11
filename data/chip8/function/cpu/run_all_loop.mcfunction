function chip8:cpu/tick
execute unless data storage chip8:emu {opcode:0} run function chip8:cpu/run_all_loop