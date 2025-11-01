execute store result score .opcode math run data get storage chip8:emu opcode
data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 15
execute store result storage chip8:emu opcodematch byte 1 run function global:bitwise/short/and with storage global:bitwise
data modify storage global:bitwise arg2 set value 240
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu opcodematch2 byte 1 run scoreboard players operation .temp math /= .sqrtbyte math

execute if score .opcode math matches 0 run function chip8:cpu/ops/nop
execute if score .opcode math matches 224 run function chip8:cpu/ops/cls
execute if score .opcode math matches 238 run function chip8:cpu/ops/ret
execute if score .opcode math matches 4096..8191 run function chip8:cpu/ops/jmp
execute if score .opcode math matches 8192..12287 run function chip8:cpu/ops/call
execute if score .opcode math matches 12288..16383 run function chip8:cpu/ops/vxeq
execute if score .opcode math matches 16384..20479 run function chip8:cpu/ops/vxneq
execute if score .opcode math matches 20480..24575 if data storage chip8:emu {opcodematch:0b} run function chip8:cpu/ops/vxyeq
execute if score .opcode math matches 24576..28671 run function chip8:cpu/ops/vxset
execute if score .opcode math matches 28672..32767 run function chip8:cpu/ops/vxadd
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:0b} run function chip8:cpu/ops/vxyset
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:1b} run function chip8:cpu/ops/or
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:2b} run function chip8:cpu/ops/and
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:3b} run function chip8:cpu/ops/xor
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:4b} run function chip8:cpu/ops/vxyadd
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:5b} run function chip8:cpu/ops/vxysub
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:6b} run function chip8:cpu/ops/vxyrshift
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:7b} run function chip8:cpu/ops/vyxsub
execute if score .opcode math matches 32768..36863 if data storage chip8:emu {opcodematch:14b} run function chip8:cpu/ops/vxylshift
execute if score .opcode math matches 36864..40959 if data storage chip8:emu {opcodematch:0b} run function chip8:cpu/ops/vxyneq
execute if score .opcode math matches 40960..45055 run function chip8:cpu/ops/iset
execute if score .opcode math matches 45056..49151 run function chip8:cpu/ops/jmpv0
execute if score .opcode math matches 49152..53247 run function chip8:cpu/ops/vxrand
execute if score .opcode math matches 53248..57343 run function chip8:cpu/ops/drw/drw
execute if score .opcode math matches 57344..61439 if data storage chip8:emu {opcodematch2:9b,opcodematch:14b} run function chip8:cpu/ops/skpkey
execute if score .opcode math matches 57344..61439 if data storage chip8:emu {opcodematch2:10b,opcodematch:1b} run function chip8:cpu/ops/sknpkey
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:0b,opcodematch:7b} run function chip8:cpu/ops/vxdtset
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:1b,opcodematch:5b} run function chip8:cpu/ops/dtset
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:1b,opcodematch:8b} run function chip8:cpu/ops/stset
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:1b,opcodematch:14b} run function chip8:cpu/ops/ivxadd
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:0b,opcodematch:10b} run function chip8:cpu/ops/vxkeyset
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:6b,opcodematch:5b} run function chip8:cpu/ops/fillm2v
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:5b,opcodematch:5b} run function chip8:cpu/ops/fillv2m
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:2b,opcodematch:9b} run function chip8:cpu/ops/i2sprite
execute if score .opcode math matches 61440..65535 if data storage chip8:emu {opcodematch2:3b,opcodematch:3b} run function chip8:cpu/ops/bcd