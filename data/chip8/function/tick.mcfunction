function chip8:cpu/tick

execute as @e[tag=chip8keyboard,type=interaction,nbt={interaction:{}}] run data remove entity @s interaction