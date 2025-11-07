data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu arg1 byte 1 run scoreboard players operation .temp math /= .byte math
execute store result storage global:bitwise arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
data modify storage global:bitwise arg2 set value 15
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise

execute store result storage chip8:emu cpu_i_reg short 1 run scoreboard players operation .temp math *= .five math