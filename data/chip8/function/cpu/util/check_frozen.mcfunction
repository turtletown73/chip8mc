execute if data storage chip8:emu {frozen:2} run data modify storage chip8:emu arg2 set from storage chip8:emu keymatch
execute if data storage chip8:emu {frozen:2} store result storage chip8:emu arg1 int 1 run function chip8:cpu/util/check_press
execute if data storage chip8:emu {frozen:2} unless data storage chip8:emu {arg1:-1} run function chip8:cpu/mem/v_reg_write with storage chip8:emu
execute if data storage chip8:emu {frozen:2} unless data storage chip8:emu {arg1:-1} run data modify storage chip8:emu frozen set value 0

execute if data storage chip8:emu {opcode:0} run data modify storage chip8:emu frozen set value 1