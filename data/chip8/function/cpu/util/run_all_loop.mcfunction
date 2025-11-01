function chip8:cpu/tick
execute unless data storage chip8:emu {frozen:1} run function chip8:cpu/util/run_all_loop