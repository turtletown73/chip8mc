execute store result score .temp math run data get storage chip8:emu cpu_sp
execute store result storage chip8:emu cpu_sp short 1 run scoreboard players operation .temp math -= .one math
$return run data get storage chip8:emu cpu_stack[$(cpu_sp)]