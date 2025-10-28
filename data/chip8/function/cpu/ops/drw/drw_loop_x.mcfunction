data modify storage global:bitwise arg1 set from storage chip8:emu temp2
data modify storage global:bitwise arg2 set value 128
execute store result score .temp6 math run function global:bitwise/byte/and with storage global:bitwise
scoreboard players operation .temp6 math /= .halfbyte math
scoreboard players set .temp7 math 0
execute unless score .temp6 math matches 0 run function chip8:cpu/ops/drw/drw_pxl

data modify storage global:bitwise arg1 set from storage chip8:emu temp2
data modify storage global:bitwise arg2 set value 64
execute store result score .temp6 math run function global:bitwise/byte/and with storage global:bitwise
scoreboard players operation .temp6 math /= .sixtyfour math
scoreboard players set .temp7 math 1
execute unless score .temp6 math matches 0 run function chip8:cpu/ops/drw/drw_pxl

data modify storage global:bitwise arg1 set from storage chip8:emu temp2
data modify storage global:bitwise arg2 set value 32
execute store result score .temp6 math run function global:bitwise/byte/and with storage global:bitwise
scoreboard players operation .temp6 math /= .thirtytwo math
scoreboard players set .temp7 math 2
execute unless score .temp6 math matches 0 run function chip8:cpu/ops/drw/drw_pxl

data modify storage global:bitwise arg1 set from storage chip8:emu temp2
data modify storage global:bitwise arg2 set value 16
execute store result score .temp6 math run function global:bitwise/byte/and with storage global:bitwise
scoreboard players operation .temp6 math /= .sqrtbyte math
scoreboard players set .temp7 math 3
execute unless score .temp6 math matches 0 run function chip8:cpu/ops/drw/drw_pxl

data modify storage global:bitwise arg1 set from storage chip8:emu temp2
data modify storage global:bitwise arg2 set value 8
execute store result score .temp6 math run function global:bitwise/byte/and with storage global:bitwise
scoreboard players operation .temp6 math /= .eight math
scoreboard players set .temp7 math 4
execute unless score .temp6 math matches 0 run function chip8:cpu/ops/drw/drw_pxl

data modify storage global:bitwise arg1 set from storage chip8:emu temp2
data modify storage global:bitwise arg2 set value 4
execute store result score .temp6 math run function global:bitwise/byte/and with storage global:bitwise
scoreboard players operation .temp6 math /= .four math
scoreboard players set .temp7 math 5
execute unless score .temp6 math matches 0 run function chip8:cpu/ops/drw/drw_pxl

data modify storage global:bitwise arg1 set from storage chip8:emu temp2
data modify storage global:bitwise arg2 set value 2
execute store result score .temp6 math run function global:bitwise/byte/and with storage global:bitwise
scoreboard players operation .temp6 math /= .two math
scoreboard players set .temp7 math 6
execute unless score .temp6 math matches 0 run function chip8:cpu/ops/drw/drw_pxl

data modify storage global:bitwise arg1 set from storage chip8:emu temp2
data modify storage global:bitwise arg2 set value 1
execute store result score .temp6 math run function global:bitwise/byte/and with storage global:bitwise
scoreboard players set .temp7 math 7
execute unless score .temp6 math matches 0 run function chip8:cpu/ops/drw/drw_pxl