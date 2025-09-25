execute store result score .temp math run data get storage chip8:emu arg1
execute store result storage chip8:emu arg1 int 1 run scoreboard players get .temp math
execute store result score .temp2 math run function chip8:cpu/mem/mem_read with storage chip8:emu
execute store result storage chip8:emu arg1 int 1 run scoreboard players operation .temp math += .one math
execute store result score .temp math run function chip8:cpu/mem/mem_read with storage chip8:emu

scoreboard players operation .temp2 math *= .byte math
return run scoreboard players operation .temp2 math += .temp math