data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
scoreboard players operation .temp math /= .byte math

execute store result score .temp2 math run data get storage chip8:emu cpu_i_reg
scoreboard players set .temp3 math 0
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

scoreboard players operation .temp2 math += .one math
scoreboard players operation .temp3 math += .one math
execute store result storage chip8:emu arg1 byte 1 run scoreboard players get .temp3 math
execute store result storage chip8:emu arg1 short 1 run function chip8:cpu/mem/v_reg_read with storage chip8:emu
execute store result storage chip8:emu arg2 short 1 run scoreboard players get .temp2 math
execute unless score .temp math < .temp3 math run function chip8:cpu/mem/mem_write with storage chip8:emu

execute store result score .temp2 math run data get storage chip8:emu cpu_i_reg
scoreboard players operation .temp2 math += .temp math
execute store result storage chip8:emu cpu_i_reg short 1 run scoreboard players operation .temp2 math += .one math