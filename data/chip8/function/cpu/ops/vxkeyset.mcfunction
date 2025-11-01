data modify storage global:bitwise arg1 set from storage chip8:emu opcode
data modify storage global:bitwise arg2 set value 3840
execute store result score .temp math run function global:bitwise/short/and with storage global:bitwise
execute store result storage chip8:emu keymatch byte 1 run scoreboard players operation .temp math /= .byte math

data modify storage chip8:emu frozen set value 2