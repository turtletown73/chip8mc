function chip8:cpu/reset
data modify storage chip8:emu ram[512] set value 18b
data modify storage chip8:emu ram[513] set value -80b
data modify storage chip8:emu cpu_pc set value 512s

function chip8:cpu/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_pc
execute unless score .temp math matches 690 run tellraw @a [{"text":"Failure: pc is not 690, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 690 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test jmp passed! ",color:green}