data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 4095
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise

execute store result score .temp2 math run data get storage chip8:emu cpu_v_regs[0]
execute store result storage chip8:emu cpu_pc short 1 run scoreboard players operation .temp math += .temp2 math