execute store result score .opcode math run data get storage chip8:emu opcode
data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 15
execute store result storage chip8:emu opcodematch byte 1 run function global:bitwise/short/and with storage global:bitwise

execute if score .opcode math matches 0 run function chip8:cpu/ops/nop with storage chip8:emu
execute if score .opcode math matches 224 run function chip8:cpu/ops/cls with storage chip8:emu
execute if score .opcode math matches 238 run function chip8:cpu/ops/ret with storage chip8:emu
execute if score .opcode math matches 4096..8191 run function chip8:cpu/ops/jmp with storage chip8:emu
execute if score .opcode math matches 8192..12287 run function chip8:cpu/ops/csub with storage chip8:emu
execute if score .opcode math matches 12288..16383 run function chip8:cpu/ops/vxeq with storage chip8:emu
execute if score .opcode math matches 16384..20479 run function chip8:cpu/ops/vxneq with storage chip8:emu
execute if score .opcode math matches 20480..24560 if data storage chip8:emu {opcodematch:0} run function chip8:cpu/ops/vxyeq with storage chip8:emu
execute if score .opcode math matches 24576..28671 run function chip8:cpu/ops/vxset with storage chip8:emu
execute if score .opcode math matches 28672..32767 run function chip8:cpu/ops/vxadd with storage chip8:emu
