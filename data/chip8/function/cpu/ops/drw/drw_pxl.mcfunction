scoreboard players operation .temp10 math = .temp math
scoreboard players operation .temp11 math = .temp2 math
scoreboard players operation .temp10 math %= .sixtyfour math
scoreboard players operation .temp11 math %= .thirtytwo math
scoreboard players operation .temp10 math += .temp7 math
scoreboard players operation .temp11 math += .temp4 math
execute if score .temp10 math >= .sixtyfour math run return 0
execute if score .temp11 math >= .thirtytwo math run return 0

scoreboard players operation .temp7 math += .temp math
scoreboard players operation .temp8 math = .temp4 math
scoreboard players operation .temp8 math += .temp2 math

scoreboard players operation .temp7 math %= .sixtyfour math
scoreboard players operation .temp8 math %= .thirtytwo math

scoreboard players operation .temp9 math = .temp8 math
scoreboard players operation .temp9 math *= .sixtyfour math
execute store result storage chip8:emu arg1 int 1 run scoreboard players operation .temp9 math += .temp7 math
execute store result storage chip8:emu temp3 int 1 run function chip8:cpu/mem/screen_read with storage chip8:emu
execute if data storage chip8:emu {temp3:1} run data modify storage chip8:emu cpu_v_regs[15] set value 1b
execute if data storage chip8:emu {temp3:1} run data modify storage chip8:emu arg2 set value 0
execute if data storage chip8:emu {temp3:0} run data modify storage chip8:emu arg2 set value 1
function chip8:cpu/mem/screen_write with storage chip8:emu