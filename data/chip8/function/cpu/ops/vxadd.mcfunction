data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result storage chip8:emu temp1 short 1 run function global:bitwise/short/and with storage global:bitwise

data modify storage global:bitwise arg2 set value 255
execute store result storage chip8:emu temp2 short 1 run function global:bitwise/short/and with storage global:bitwise

data modify storage chip8:emu arg1 set from storage chip8:emu temp1
execute store result score .temp math run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result score .temp2 math run data get storage chip8:emu temp2

scoreboard players operation .temp math += .temp2 math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp math
data modify storage chip8:emu arg2 set from storage chip8:emu temp1
function chip8:cpu/mem/v_reg_write with storage chip8:emu