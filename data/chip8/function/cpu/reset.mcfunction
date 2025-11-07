data modify storage chip8:emu cpu_pc set value 512s
function chip8:cpu/util/reset_ram
function chip8:cpu/util/clear_screen
data modify storage chip8:emu cpu_v_regs set value [0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b]
data modify storage chip8:emu cpu_i_reg set value 0s
data modify storage chip8:emu cpu_sp set value 0s
data modify storage chip8:emu cpu_stack set value [0s,0s,0s,0s,0s,0s,0s,0s,0s,0s,0s,0s,0s,0s,0s,0s]
data modify storage chip8:emu keyboard set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage chip8:emu cpu_dt set value 0s
data modify storage chip8:emu cpu_st set value 0s
data modify storage chip8:emu frozen set value 0
function chip8:cpu/util/update_screen