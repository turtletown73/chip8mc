data modify storage chip8:emu arg1 set from storage chip8:emu cpu_pc
execute store result storage chip8:emu opcode short 1 run function chip8:cpu/mem/mem_read_short with storage chip8:emu

function chip8:cpu/match_opcode with storage chip8:emu

execute store result score .temp math run data get storage chip8:emu cpu_pc
scoreboard players operation .temp math += .one math
execute store result storage chip8:emu cpu_pc short 1 run scoreboard players operation .temp math += .one math