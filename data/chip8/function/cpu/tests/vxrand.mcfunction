function chip8:cpu/reset
data modify storage chip8:emu ram[512] set value -64b
data modify storage chip8:emu ram[513] set value -1b

data modify storage chip8:emu cpu_pc set value 512s
function chip8:cpu/run_all_loop
tellraw @a [{"text":"How do know if a random number is random? output is: ",color:yellow},{"storage":"chip8:emu",nbt:"cpu_v_regs[0]",color:yellow}]

data modify storage chip8:emu cpu_pc set value 512s
function chip8:cpu/run_all_loop
tellraw @a [{"text":"Ran again to prove randomness: ",color:yellow},{"storage":"chip8:emu",nbt:"cpu_v_regs[0]",color:yellow}]
tellraw @a {"text":"wtf is wrong with mc's /random?",color:yellow}