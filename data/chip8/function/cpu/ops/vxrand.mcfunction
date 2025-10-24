data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu temp short 1 run scoreboard players operation .temp math /= .byte math

data modify storage global:bitwise arg2 set value 255
execute store result storage global:bitwise arg2 short 1 run function global:bitwise/short/and with storage global:bitwise

execute store result storage global:bitwise arg1 short 1 run random value 0..255
execute store result storage chip8:emu temp2 short 1 run function global:bitwise/short/and with storage global:bitwise

data modify storage chip8:emu arg2 set from storage chip8:emu temp
data modify storage chip8:emu arg1 set from storage chip8:emu temp2
function chip8:cpu/mem/v_reg_write with storage chip8:emu