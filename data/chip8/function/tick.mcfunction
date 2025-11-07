function chip8:cpu/util/update_keyboard

function chip8:emu_tick

scoreboard players operation .tick math += .one math
execute as @e[tag=chip8keyboard] if data entity @s interaction run data remove entity @s interaction
function chip8:cpu/util/update_keyboard_2