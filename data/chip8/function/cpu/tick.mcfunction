data modify storage chip8:emu arg1 set from storage chip8:emu cpu_pc
execute store result storage chip8:emu opcode int 1 run function chip8:cpu/mem/mem_read_short

#tellraw @a ["op: ", {storage:"chip8:emu",nbt:"opcode"}, ", pc: ", {storage:"chip8:emu",nbt:"cpu_pc"}]
#tellraw @a ["v regs: ", {storage:"chip8:emu",nbt:"cpu_v_regs"}]

function chip8:cpu/util/check_frozen
execute unless data storage chip8:emu {frozen:0} run return 0

function chip8:cpu/match_and_run

execute store result score .temp math run data get storage chip8:emu cpu_pc
execute store result storage chip8:emu cpu_pc short 1 run scoreboard players operation .temp math += .two math