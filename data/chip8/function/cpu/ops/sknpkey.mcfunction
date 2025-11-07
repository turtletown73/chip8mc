data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu arg1 short 1 run scoreboard players operation .temp math /= .byte math
execute store result storage global:bitwise arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
data modify storage global:bitwise arg2 set value 15
execute store result storage chip8:emu arg1 short 1 run function global:bitwise/short/and with storage global:bitwise

execute store result storage chip8:emu temp int 1 run function chip8:cpu/mem/key_read with storage chip8:emu

execute store result score .temp3 math run data get storage chip8:emu cpu_pc
execute if data storage chip8:emu {temp:0} run scoreboard players operation .temp3 math += .two math
execute store result storage chip8:emu cpu_pc short 1 run scoreboard players get .temp3 math

function chip8:cpu/util/update_keyboard_2