function chip8:cpu/reset
data modify storage chip8:emu ram[512] set value 96b
data modify storage chip8:emu ram[513] set value 17b
data modify storage chip8:emu ram[514] set value 97b
data modify storage chip8:emu ram[515] set value 10b
data modify storage chip8:emu ram[516] set value -128b
data modify storage chip8:emu ram[517] set value 21b
data modify storage chip8:emu cpu_pc set value 512s

function chip8:cpu/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[0]
execute unless score .temp math matches 7 run tellraw @a [{"text":"Failure: v0 is not 7, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 7 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test vxysub passed! ",color:green}