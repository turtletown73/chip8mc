data modify storage chip8:emu program set value [-64b,-1b]

function chip8:cpu/util/load_program
function chip8:cpu/util/run_all_loop
tellraw @a [{"text":"How do know if a random number is random? output is: ",color:yellow},{"storage":"chip8:emu",nbt:"cpu_v_regs[0]",color:yellow}]

function chip8:cpu/util/load_program
function chip8:cpu/util/run_all_loop
tellraw @a [{"text":"Ran again to prove randomness: ",color:yellow},{"storage":"chip8:emu",nbt:"cpu_v_regs[0]",color:yellow}]