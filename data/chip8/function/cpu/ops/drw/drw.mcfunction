data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu temp byte 1 run scoreboard players operation .temp math /= .byte math
data modify storage chip8:emu arg1 set from storage chip8:emu temp
execute store result score .temp math run function chip8:cpu/mem/v_reg_read with storage chip8:emu

data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 240
execute store result score .temp2 math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu arg1 short 1 run scoreboard players operation .temp2 math /= .sqrtbyte math
execute store result score .temp2 math run function chip8:cpu/mem/v_reg_read with storage chip8:emu

data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 15
execute store result score .temp3 math run function global:bitwise/short/and with storage global:bitwise

data modify storage chip8:emu temp set value 0
data modify storage chip8:emu cpu_v_regs[15] set value 0b
function chip8:cpu/ops/drw/drw_loop_y

data modify storage chip8:emu frozen set value 3