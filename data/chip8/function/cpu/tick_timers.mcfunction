execute store result score .temp math run data get storage chip8:emu cpu_dt
execute if score .temp math >= .zero math run scoreboard players operation .temp math -= .one math
execute store result storage chip8:emu cpu_dt byte 1 run scoreboard players get .temp math

execute store result score .temp math run data get storage chip8:emu cpu_dt
# beep if equals 1
execute if score .temp math >= .zero math run scoreboard players operation .temp math -= .one math
execute store result storage chip8:emu cpu_dt byte 1 run scoreboard players get .temp math