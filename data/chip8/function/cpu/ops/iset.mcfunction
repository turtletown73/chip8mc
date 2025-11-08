data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 4095
execute store result storage chip8:emu cpu_i_reg short 1 run function global:bitwise/short/and