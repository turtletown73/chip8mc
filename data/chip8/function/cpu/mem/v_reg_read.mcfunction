$execute store result score .temp_read math run data get storage chip8:emu cpu_v_regs[$(arg1)]
execute if score .temp_read math < .zero math run scoreboard players operation .temp_read math += .byte math
return run scoreboard players get .temp_read math