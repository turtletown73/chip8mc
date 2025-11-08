data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 4095
execute store result score .temp math run function global:bitwise/short/and

execute store result score .temp2 math run data get storage chip8:emu cpu_v_regs[0]
execute if score .temp2 math < .zero math run scoreboard players operation .temp2 math += .byte math

scoreboard players operation .temp math += .temp2 math
execute store result storage chip8:emu cpu_pc short 1 run scoreboard players operation .temp math -= .two math