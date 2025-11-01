execute store result score .opcode math run data get storage chip8:emu opcode
data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 15
execute store result storage chip8:emu opcodematch byte 1 run function global:bitwise/short/and with storage global:bitwise
data modify storage global:bitwise arg2 set value 240
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu opcodematch2 byte 1 run scoreboard players operation .temp math /= .sqrtbyte math

execute if score .opcode math matches 0 run function chip8:cpu/ops/nop with storage chip8:emu
execute if score .opcode math matches 224 run function chip8:cpu/ops/cls with storage chip8:emu
execute if score .opcode math matches 238 run function chip8:cpu/ops/ret with storage chip8:emu
execute if score .opcode math matches 4096..8191 run function chip8:cpu/ops/jmp with storage chip8:emu
execute if score .opcode math matches 8192..12287 run function chip8:cpu/ops/call with storage chip8:emu
execute if score .opcode math matches 12288..16383 run function chip8:cpu/ops/vxeq with storage chip8:emu
execute if score .opcode math matches 16384..20479 run function chip8:cpu/ops/vxneq with storage chip8:emu
execute if score .opcode math matches 20480..24575 if data storage chip8:emu {opcodematch:0b} run function chip8:cpu/ops/vxyeq with storage chip8:emu
execute if score .opcode math matches 24576..28671 run function chip8:cpu/ops/vxset with storage chip8:emu
execute if score .opcode math matches 28672..32767 run function chip8:cpu/ops/vxadd with storage chip8:emu
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:0b} run function chip8:cpu/ops/vxyset with storage chip8:emu
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:1b} run function chip8:cpu/ops/or with storage chip8:emu
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:2b} run function chip8:cpu/ops/and with storage chip8:emu
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:3b} run function chip8:cpu/ops/xor with storage chip8:emu
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:4b} run function chip8:cpu/ops/vxyadd with storage chip8:emu
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:5b} run function chip8:cpu/ops/vxysub with storage chip8:emu
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:6b} run function chip8:cpu/ops/vxyrshift with storage chip8:emu
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:7b} run function chip8:cpu/ops/vyxsub with storage chip8:emu
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:14b} run function chip8:cpu/ops/vxylshift with storage chip8:emu
execute if score .opcode math matches 36864..40959 if data storage chip8:emu {opcodematch:0b} run function chip8:cpu/ops/vxyneq with storage chip8:emu
execute if score .opcode math matches 40960..45055 run function chip8:cpu/ops/iset with storage chip8:emu
execute if score .opcode math matches 45056..49151 run function chip8:cpu/ops/jmpv0 with storage chip8:emu
execute if score .opcode math matches 49152..53247 run function chip8:cpu/ops/vxrand with storage chip8:emu
execute if score .opcode math matches 53248..57343 run function chip8:cpu/ops/drw/drw with storage chip8:emu
execute if score .opcode math matches 57344..61439 if data storage chip8:emu {opcodematch2:9b,opcodematch:14b} run function chip8:cpu/ops/skpkey with storage chip8:emu
execute if score .opcode math matches 57344..61439 if data storage chip8:emu {opcodematch2:10b,opcodematch:1b} run function chip8:cpu/ops/sknpkey with storage chip8:emu
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:0b,opcodematch:7b} run function chip8:cpu/ops/vxdtset with storage chip8:emu
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:1b,opcodematch:5b} run function chip8:cpu/ops/dtset with storage chip8:emu
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:1b,opcodematch:8b} run function chip8:cpu/ops/stset with storage chip8:emu
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:1b,opcodematch:14b} run function chip8:cpu/ops/ivxadd with storage chip8:emu
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:0b,opcodematch:10b} run function chip8:cpu/ops/vxkeyset with storage chip8:emu
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:6b,opcodematch:5b} run function chip8:cpu/ops/fillm2v with storage chip8:emu
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:5b,opcodematch:5b} run function chip8:cpu/ops/fillv2m with storage chip8:emu