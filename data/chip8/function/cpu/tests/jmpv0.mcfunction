data modify storage chip8:emu program set value [96b,72b,-65b,-1b]
function chip8:cpu/util/load_program
function chip8:cpu/util/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_pc
execute unless score .temp math matches 4169 run tellraw @a [{"text":"Failure: pc is not 4169, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 4169 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test jmpv0 passed! ",color:green}