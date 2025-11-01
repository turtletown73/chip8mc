data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu temp short 1 run scoreboard players operation .temp math /= .byte math

data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 240
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu arg1 short 1 run scoreboard players operation .temp math /= .sqrtbyte math
execute store result score .temp math run function chip8:cpu/mem/v_reg_read with storage chip8:emu

execute store result storage global:bitwise arg1 byte 1 run scoreboard players get .temp math
data modify storage global:bitwise arg2 set value 128
execute store result score .temp2 math run function global:bitwise/byte/and with storage global:bitwise
execute store result storage chip8:emu cpu_v_regs[15] byte 1 run scoreboard players operation .temp2 math /= .halfbyte math

scoreboard players operation .temp math *= .two math
execute if score .temp math >= .byte math run scoreboard players operation .temp math -= .byte math
execute store result storage chip8:emu arg1 short 1 run scoreboard players get .temp math
data modify storage chip8:emu arg2 set from storage chip8:emu temp
function chip8:cpu/mem/v_reg_write with storage chip8:emu