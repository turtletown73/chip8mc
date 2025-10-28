execute store result score .temp4 math run data get storage chip8:emu temp

execute store result score .temp5 math run data get storage chip8:emu cpu_i_reg
execute store result storage chip8:emu arg1 short 1 run scoreboard players operation .temp5 math += .temp4 math
execute store result storage chip8:emu temp2 short 1 run function chip8:cpu/mem/mem_read with storage chip8:emu

function chip8:cpu/ops/drw/drw_loop_x with storage chip8:emu

execute store result storage chip8:emu temp int 1 run scoreboard players operation .temp4 math += .one math
execute unless score .temp4 math = .temp3 math run function chip8:cpu/ops/drw/drw_loop_y