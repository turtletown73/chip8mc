data modify storage chip8:emu program set value [-3b, 101b]
function chip8:cpu/util/load_program
data modify storage chip8:emu cpu_i_reg set value 1s
function chip8:cpu/util/run_all_loop

data modify storage chip8:emu testpass set value 1
execute unless data storage chip8:emu {cpu_v_regs:[-112b,-112b,-112b,-16b,32b,96b,32b,32b,112b,-16b,16b,-16b,-128b,0b,0b]} run tellraw @a [{"text":"Failure: v regs aren't right value, but are ",color:red},{"storage":"chip8:emu","nbt":"cpu_v_regs",color:red}]
execute unless data storage chip8:emu {cpu_v_regs:[-112b,-112b,-112b,-16b,32b,96b,32b,32b,112b,-16b,16b,-16b,-128b,0b,0b]} run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test fillm2v passed! ",color:green}