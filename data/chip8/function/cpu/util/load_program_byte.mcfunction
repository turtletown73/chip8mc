$execute unless data storage chip8:emu program[$(loop)] run return 1
$execute store result storage chip8:emu ram[$(loop2)] byte 1 run data get storage chip8:emu program[$(loop)]
execute store result storage chip8:emu loop int 1 run scoreboard players operation .loop math += .one math
execute store result storage chip8:emu loop2 int 1 run scoreboard players operation .loop2 math += .one math
function chip8:cpu/util/load_program_byte with storage chip8:emu