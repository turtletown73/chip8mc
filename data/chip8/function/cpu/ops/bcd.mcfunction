execute store result score .temp2 math run data get storage chip8:emu cpu_i_reg

data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu arg1 byte 1 run scoreboard players operation .temp math /= .byte math
execute store result score .temp math run function chip8:cpu/mem/v_reg_read with storage chip8:emu

scoreboard players operation .temp3 math = .temp math
execute store result storage chip8:emu arg1 int 1 run scoreboard players operation .temp3 math /= .hundred math
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp3 math = .temp math
scoreboard players operation .temp3 math /= .ten math
execute store result storage chip8:emu arg1 int 1 run scoreboard players operation .temp3 math %= .ten math
execute store result storage chip8:emu arg2 short 1 run scoreboard players operation .temp2 math += .one math
function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp3 math = .temp math
execute store result storage chip8:emu arg1 int 1 run scoreboard players operation .temp3 math %= .ten math
execute store result storage chip8:emu arg2 short 1 run scoreboard players operation .temp2 math += .one math
function chip8:cpu/mem/mem_write with storage chip8:emu