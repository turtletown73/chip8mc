data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and
execute store result storage chip8:emu temp byte 1 run scoreboard players operation .temp math /= .byte math
data modify storage chip8:emu arg1 set from storage chip8:emu temp
execute store result score .temp math run function chip8:cpu/mem/v_reg_read with storage chip8:emu

data modify storage global:bitwise arg2 set value 255
execute store result score .temp2 math run function global:bitwise/short/and

scoreboard players operation .temp math += .temp2 math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp math
data modify storage chip8:emu arg2 set from storage chip8:emu temp
function chip8:cpu/mem/v_reg_write with storage chip8:emu