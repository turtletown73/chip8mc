function chip8:cpu/reset
execute store result storage chip8:emu loop int 1 run scoreboard players set .loop math 0
execute store result storage chip8:emu loop2 int 1 run scoreboard players set .loop2 math 512
function chip8:cpu/util/load_program_byte with storage chip8:emu
data modify storage chip8:emu cpu_pc set value 512s