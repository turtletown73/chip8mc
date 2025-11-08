data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and
execute store result storage chip8:emu arg1 short 1 run scoreboard players operation .temp math /= .byte math
execute store result storage chip8:emu cpu_dt short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
#tellraw @a {storage:"chip8:emu",nbt:"arg1"}
#tellraw @a {score:{name:".temp_read",objective:"math"}}
#tellraw @a {storage:"chip8:emu",nbt:"cpu_dt"}