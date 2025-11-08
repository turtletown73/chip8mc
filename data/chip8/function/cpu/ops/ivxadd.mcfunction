execute store result score .temp2 math run data get storage chip8:emu cpu_i_reg

data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and
execute store result storage chip8:emu arg1 byte 1 run scoreboard players operation .temp math /= .byte math
execute store result score .temp math run function chip8:cpu/mem/v_reg_read with storage chip8:emu

scoreboard players operation .temp math += .temp2 math
# the vf myth strikes again (this was never a thing in chip8)
#execute if score .temp math >= .twelvebitoverflow math run data modify storage chip8:emu cpu_v_regs[15] set value 1b
#execute unless score .temp math >= .twelvebitoverflow math run data modify storage chip8:emu cpu_v_regs[15] set value 0b
execute store result storage chip8:emu temp2 short 1 run scoreboard players get .temp math
data modify storage chip8:emu cpu_i_reg set from storage chip8:emu temp2