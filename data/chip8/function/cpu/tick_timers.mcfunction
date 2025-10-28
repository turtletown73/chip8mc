execute store result score .temp math run data get storage chip8:emu cpu_dt
execute if score .temp math >= .zero math run scoreboard players operation .temp math -= .one math
execute store result storage chip8:emu cpu_dt byte 1 run scoreboard players get .temp math

execute store result score .temp math run data get storage chip8:emu cpu_st
execute if score .temp math matches 1 run playsound block.note_block.bit ambient @a 0 62 0 100 2
execute if score .temp math >= .zero math run scoreboard players operation .temp math -= .one math
execute store result storage chip8:emu cpu_st byte 1 run scoreboard players get .temp math