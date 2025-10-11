function chip8:cpu/reset
data modify storage chip8:emu ram[512] set value 96b
data modify storage chip8:emu ram[513] set value 69b
data modify storage chip8:emu ram[514] set value 48b
data modify storage chip8:emu ram[515] set value 69b
data modify storage chip8:emu cpu_pc set value 512s

function chip8:cpu/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_pc
execute unless score .temp math matches 518 run tellraw @a [{"text":"Failure: pc is not 518, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 518 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test vxeq passed! ",color:green}