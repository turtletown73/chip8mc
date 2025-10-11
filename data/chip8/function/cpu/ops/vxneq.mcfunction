data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu arg1 short 1 run scoreboard players operation .temp math /= .byte math
execute store result score .temp math run function chip8:cpu/mem/v_reg_read with storage chip8:emu

data modify storage global:bitwise arg2 set value 255
execute store result score .temp2 math run function global:bitwise/short/and with storage global:bitwise

execute store result score .temp3 math run data get storage chip8:emu cpu_pc
execute unless score .temp math = .temp2 math run scoreboard players operation .temp3 math += .two math
execute store result storage chip8:emu cpu_pc short 1 run scoreboard players get .temp3 math