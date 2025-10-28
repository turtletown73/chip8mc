data modify storage chip8:emu program set value [-96b,70b,96b,5b,97b,7b,-48b,21b]
function chip8:cpu/load_program

data modify storage chip8:emu cpu_pc set value 512s
function chip8:cpu/run_all_loop
tellraw @a {"text":"I am NOT fucking checking every individual pixel, just look at the screen for \"E\" :sob:",color:yellow}