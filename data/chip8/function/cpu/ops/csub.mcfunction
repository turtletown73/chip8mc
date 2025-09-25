data modify storage chip8:emu arg1 set from storage chip8:emu cpu_pc
function chip8:cpu/mem/stack_push with storage chip8:emu

data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 4095
execute store result storage chip8:emu cpu_pc short 1 run function global:bitwise/short/and with storage global:bitwise