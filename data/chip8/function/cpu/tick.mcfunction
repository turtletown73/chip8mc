data modify storage chip8:emu arg1 set from storage chip8:emu cpu_pc
execute store result storage chip8:emu opcode int 1 run function chip8:cpu/mem/mem_read_short with storage chip8:emu
execute if data storage chip8:emu {opcode:0} run return 0
function chip8:cpu/match_and_run with storage chip8:emu

execute store result score .temp math run data get storage chip8:emu cpu_pc
execute store result storage chip8:emu cpu_pc short 1 run scoreboard players operation .temp math += .two math