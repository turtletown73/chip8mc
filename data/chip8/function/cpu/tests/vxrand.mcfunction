data modify storage chip8:emu program set value [-64b,-1b]
function chip8:cpu/load_program

data modify storage chip8:emu cpu_pc set value 512s
function chip8:cpu/run_all_loop
tellraw @a [{"text":"How do know if a random number is random? output is: ",color:yellow},{"storage":"chip8:emu",nbt:"cpu_v_regs[0]",color:yellow}]

data modify storage chip8:emu cpu_pc set value 512s
function chip8:cpu/run_all_loop
tellraw @a [{"text":"Ran again to prove randomness: ",color:yellow},{"storage":"chip8:emu",nbt:"cpu_v_regs[0]",color:yellow}]